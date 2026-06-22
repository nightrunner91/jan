# Portability Guide

This guide explains how to take any Jan alter model from this collection and use it on platforms other than OpenWebUI.

## Overview

Every alter is defined by these files inside `agents/jan-{alter}/`:

| File | Purpose | Portable to |
|------|---------|-------------|
| `system.md` | English system prompt | All platforms |
| `system.ru.md` | Russian system prompt | All platforms |
| `openwebui.json` | OpenWebUI export | OpenWebUI only |

The `.md` file is the portable artifact. The JSON is OpenWebUI-specific.

---

## Export to OpenWebUI

This is the native format and requires no adaptation. Pre-packed bundles are available in `exports/`.

### One-click import (recommended)

1. Open OpenWebUI.
2. Go to **Workspace > Skills**.
3. Click the import button (upload icon).
4. Select `exports/openwebui-skills-en.json` (English UI) or `exports/openwebui-skills-ru.json` (Russian UI). All 58 skills are imported in one action.
5. Go to **Workspace > Models**.
6. Click the import button (upload icon).
7. Select `exports/openwebui-models-en.json` (English UI) or `exports/openwebui-models-ru.json` (Russian UI). All 11 alters are imported in one action.
8. Each alter appears in your model list with capabilities, tools, and skills pre-configured.

Import skills **before** models so the skill bindings resolve correctly.

### Per-alter import

If you only want a single alter:

1. Go to **Workspace > Models**.
2. Click the import button (upload icon).
3. Select `agents/jan-{alter}/openwebui.json` (English UI) or `openwebui.ru.json` (Russian UI).
4. The model appears in your model list with all capabilities and tools pre-configured.

OpenWebUI handles duplicates by updating existing models.

---

## Export to LibreChat

### Method 1: Presets

1. Open LibreChat.
2. Click the preset icon (or go to Settings > Presets).
3. Create a new preset.
4. Set Name to "Jan: {Alter Name}".
5. Paste the content of `agents/jan-{alter}/system.md` into the **System Prompt** field.
6. Select a model (GPT-4o, Claude, or any connected provider).
7. Save the preset.

### Method 2: Agents (Recommended)

1. Go to Settings > Agents.
2. Click "Add Agent".
3. Set the following:
   - **Name**: Jan: {Alter Name}
   - **Instructions**: Paste `agents/jan-{alter}/system.md` content
   - **Model**: Choose your preferred provider
   - **Plugins**: Enable relevant tools based on the alter's `toolIds` in the JSON
4. Save.

### Tool Mapping (LibreChat)

| OpenWebUI Tool      | LibreChat Plugin              |
|---------------------|-------------------------------|
| `web_search_and_crawl` | Web Browsing or Search plugin |
| `code_interpreter`    | Code Interpreter plugin       |

Alters without `toolIds` do not need plugins.

---

## Export to LM Studio

1. Open LM Studio.
2. Load any supported model.
3. Click the **Presets** button (or go to Settings > Presets).
4. Click "New Preset" and name it "Jan: {Alter Name}".
5. Paste the content of `agents/jan-{alter}/system.md` into the **System Prompt** field.
6. Adjust **Temperature**:
   - Technical alters (Developer, Scientist, Constructor): 0.3 - 0.5
   - Creative alters (Cook, Psychologist): 0.6 - 0.8
   - Neutral alters (Assistant, Lawyer, Politician): 0.4 - 0.6
   - Safety alters (Doctor, Policeman): 0.3 - 0.5
7. Set **Max Tokens** to 4096+.
8. Save.

**Limitation**: LM Studio does not support tools (web search, code interpreter, etc.). Alters that rely on these tools will have reduced functionality.

### Preset File Location (for sharing)

```
Windows: %APPDATA%/LM Studio/presets/
macOS: ~/Library/Application Support/LM Studio/presets/
Linux: ~/.config/LM Studio/presets/
```

---

## Export to Ollama

### Step 1: Create a Modelfile

Create a file named `Modelfile.jan-{alter}` in any directory:

```dockerfile
FROM {base_model}

SYSTEM """{paste content of agents/jan-{alter}/system.md here}"""

PARAMETER temperature {see table below}
PARAMETER num_ctx 8192
```

### Step 2: Temperature Recommendations

| Alter | Temperature |
|-------|:-----------:|
| Assistant | 0.5 |
| Constructor | 0.4 |
| Cook | 0.7 |
| Developer | 0.4 |
| Doctor | 0.4 |
| Lawyer | 0.5 |
| Policeman | 0.4 |
| Politician | 0.6 |
| Psychologist | 0.7 |
| Scientist | 0.3 |
| Trainer | 0.6 |

### Step 3: Build and Run

```bash
# Build
ollama create jan-{alter} -f ./Modelfile.jan-{alter}

# Run
ollama run jan-{alter}

# Use with API
curl http://localhost:11434/api/chat -d '{
  "model": "jan-{alter}",
  "messages": [{"role": "user", "content": "Hello"}]
}'
```

### Step 4: Base Model Selection

| Alter | Recommended Base Model |
|-------|----------------------|
| Assistant | `deepseek-v4-flash`, `llama3.1:70b` |
| Constructor | `qwen2.5:32b`, `llama3.1:70b` |
| Cook | `llama3.1:70b`, `mistral:latest` |
| Developer | `qwen2.5:32b`, `llama3.1:70b` |
| Doctor | `llama3.1:70b`, `claude-sonnet` (if available via Ollama) |
| Lawyer | `llama3.1:70b`, `mixtral:8x22b` |
| Policeman | `llama3.1:70b`, `qwen2.5:32b` |
| Politician | `llama3.1:70b`, `qwen2.5:32b` |
| Psychologist | `llama3.1:70b`, `mistral:latest` |
| Scientist | `qwen2.5:32b`, `llama3.1:70b` |
| Trainer | `llama3.1:70b`, `qwen2.5:32b` |

---

## Jinja2 Variable Compatibility

| Variable | OpenWebUI | LibreChat | LM Studio | Ollama |
|----------|:---------:|:---------:|:---------:|:------:|
| `{{ USER_NAME }}` | Native | Via preset variables | Static replacement | Static replacement |
| `{{ CURRENT_DATE }}` | Native | Via `{{DATE}}` | Not supported | Not supported |

For platforms that do not support Jinja2 (LM Studio, Ollama), replace or hardcode these values in the system prompt.

---

## Capabilities Not Portable

The following OpenWebUI features do not exist on other platforms:

- **Per-model capability toggles** (vision, file upload, web search flags)
- **Bound tool IDs** (toolIds, filterIds, defaultFeatureIds)
- **Built-in tool enablement** (builtin_tools, status_updates)

These are OpenWebUI-specific affordances and are omitted from portable exports.

---

## Quick Reference

| Platform | Primary Artifact | Tools? | Setup Complexity |
|----------|-----------------|--------|:----------------:|
| OpenWebUI | `.json` import | Yes | Low |
| LibreChat | `.md` → Agent instructions | Via plugins | Medium |
| LM Studio | `.md` → Preset system prompt | No | Low |
| Ollama | `.md` → Modelfile | No | Medium |

The quickest path to a working alter on any platform is: **paste the `system.md` content into the system prompt field and select a capable base model.**
