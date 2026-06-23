#requires -Version 5.1
<#
.SYNOPSIS
    Pack all Jan alters and skills into OpenWebUI-ready import files.

.DESCRIPTION
    Scans the agents/ tree and produces:
      - exports/openwebui-skills-en.json
      - exports/openwebui-skills-ru.json
      - exports/openwebui-models-en.json
      - exports/openwebui-models-ru.json

    Each output file is a single JSON array that OpenWebUI can import in one
    action via Workspace > Skills / Workspace > Models.

    Run from the repository root:
        .\scripts\export-openwebui.ps1
#>

[CmdletBinding()]
param()

$ErrorActionPreference = 'Stop'

$repoRoot = Split-Path -Parent $PSScriptRoot
$exportsDir = Join-Path $repoRoot 'exports'

if (-not (Test-Path -LiteralPath $exportsDir)) {
    New-Item -ItemType Directory -Path $exportsDir | Out-Null
}

function Write-JsonFile {
    param(
        [string]$Path,
        [object]$Data,
        [int]$Depth = 10
    )
    # Note: PowerShell 5.1's ConvertTo-Json can hang or balloon on large
    # strings at depths greater than necessary. We keep depth conservative.
    $json = $Data | ConvertTo-Json -Depth $Depth -Compress:$false
    [System.IO.File]::WriteAllText($Path, $json, [System.Text.Encoding]::UTF8)
    Write-Host "  -> $Path" -ForegroundColor Green
}

# ---------------------------------------------------------------------------
# Skills
# ---------------------------------------------------------------------------
Write-Host "Packing skills..." -ForegroundColor Cyan

$skillsByLanguage = @{
    en = [System.Collections.Generic.List[object]]::new()
    ru = [System.Collections.Generic.List[object]]::new()
}

$seenIds = @{
    en = [System.Collections.Generic.HashSet[string]]::new()
    ru = [System.Collections.Generic.HashSet[string]]::new()
}

$manifestFiles = Get-ChildItem -Path (Join-Path $repoRoot 'agents') `
    -Recurse -Filter 'manifest.json' `
    | Sort-Object FullName

foreach ($manifestFile in $manifestFiles) {
    $skillDir = $manifestFile.DirectoryName
    $manifest = Get-Content -Path $manifestFile.FullName -Raw -Encoding UTF8 | ConvertFrom-Json

    foreach ($lang in @('en', 'ru')) {
        if (-not $manifest.files.$lang) { continue }

        $skillFileName = $manifest.files.$lang
        $skillFilePath = Join-Path $skillDir $skillFileName
        if (-not (Test-Path -LiteralPath $skillFilePath)) {
            Write-Warning "Missing $lang skill file: $skillFilePath"
            continue
        }

        # Use .NET ReadAllText: PowerShell 5.1's Get-Content -Raw can produce
        # strings that ConvertTo-Json mishandles as objects instead of strings.
        $content = [System.IO.File]::ReadAllText($skillFilePath, [System.Text.Encoding]::UTF8)
        $id = $manifest.id

        if (-not $seenIds[$lang].Add($id)) {
            Write-Warning "Duplicate $lang skill id '$id' in $($manifestFile.FullName); skipping duplicate."
            continue
        }

        $skillsByLanguage[$lang].Add([ordered]@{
            id          = $id
            name        = $manifest.name.$lang
            description = $manifest.description.$lang
            content     = $content
            meta        = [ordered]@{
                tags = @($manifest.tags)
            }
            is_active   = $true
            access_grants = @()
        })
    }
}

foreach ($lang in @('en', 'ru')) {
    $outPath = Join-Path $exportsDir "openwebui-skills-$lang.json"
    Write-JsonFile -Path $outPath -Data $skillsByLanguage[$lang].ToArray() -Depth 3
}

# ---------------------------------------------------------------------------
# Models
# ---------------------------------------------------------------------------
Write-Host "Packing models..." -ForegroundColor Cyan

$modelsByLanguage = @{
    en = [System.Collections.Generic.List[object]]::new()
    ru = [System.Collections.Generic.List[object]]::new()
}

$modelFileMap = @{
    en = 'openwebui.json'
    ru = 'openwebui.ru.json'
}

$agentDirs = Get-ChildItem -Path (Join-Path $repoRoot 'agents') -Directory | Sort-Object Name

foreach ($lang in @('en', 'ru')) {
    $fileName = $modelFileMap[$lang]
    foreach ($agentDir in $agentDirs) {
        $modelFilePath = Join-Path $agentDir.FullName $fileName
        if (-not (Test-Path -LiteralPath $modelFilePath)) {
            Write-Warning "Missing model file: $modelFilePath"
            continue
        }

        $models = Get-Content -Path $modelFilePath -Raw -Encoding UTF8 | ConvertFrom-Json
        foreach ($model in $models) {
            $modelsByLanguage[$lang].Add($model)
        }
    }

    $outPath = Join-Path $exportsDir "openwebui-models-$lang.json"
    Write-JsonFile -Path $outPath -Data $modelsByLanguage[$lang].ToArray() -Depth 10
}

Write-Host "Done. Import order in OpenWebUI: Skills first, then Models." -ForegroundColor Cyan
