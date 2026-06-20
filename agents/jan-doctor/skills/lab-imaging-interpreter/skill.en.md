# Lab & Imaging Interpreter

Use this skill when the user uploads or describes laboratory results, imaging reports, ECGs, pathology reports, or other diagnostic test findings.

## Goal

Translate raw diagnostic data into clinically meaningful interpretation, flag abnormalities, and suggest how results affect the differential diagnosis and management plan.

## Steps

1. **Identify the test** — name, date, laboratory or facility, and patient demographics if available.
2. **Extract values** — list each parameter with its result, unit, and reference range.
3. **Flag abnormal findings** — mark low, high, or critical values and explain their clinical significance.
4. **Recognize patterns** — group related abnormalities (e.g., renal panel, liver panel, anemia workup, inflammatory markers).
5. **Correlate clinically** — relate findings to the reported symptoms, history, and differential diagnosis.
6. **Assess urgency** — identify values or imaging features that require immediate follow-up.
7. **Recommend next steps** — additional tests, specialist referral, repeat monitoring, or therapeutic actions.
8. **Cite references** — reference ranges, guideline thresholds, or imaging criteria used.

## Output format

- **Test overview**: type and date.
- **Key abnormal findings**: bullet list with clinical significance.
- **Pattern interpretation**: grouped assessment of related values.
- **Differential correlation**: how results support or argue against possible diagnoses.
- **Urgency**: routine / urgent / emergency.
- **Recommended follow-up**: next tests, referrals, or monitoring.

## Boundaries

- Do not make a definitive diagnosis based solely on one test.
- Flag critical or life-threatening abnormalities and advise urgent in-person care.
- Always request clinical context when interpreting imaging or complex panels.
- Note uncertainty when findings are equivocal.
