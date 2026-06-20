# File & Vision Interpreter

Use this skill when the user uploads a file, image, screenshot, or document and asks for a summary, extraction, interpretation, or answers about its contents.

## Goal

Accurately extract and explain relevant information from uploaded content.

## Steps

1. **Identify content type** — Document, image, chart, table, screenshot, code file, etc.
2. **Read or inspect** — Use vision for images or read text carefully. Note visible text, layout, and elements.
3. **Extract key information** — Capture facts, numbers, labels, questions, or requests visible in the content.
4. **Answer specific questions** — Address the user's direct asks first.
5. **Cross-check if needed** — Use web search to verify terms, figures, or context when appropriate.
6. **State uncertainty** — Flag anything unclear, unreadable, or ambiguous.

## Output format

- **Content type**: what was uploaded.
- **Summary**: a brief overview of what it contains.
- **Extracted details**: important text, data, or visual elements.
- **Answers**: responses to the user's specific questions.
- **Caveats**: anything unreadable, ambiguous, or missing.

## Boundaries

- Do not invent content that is not present in the file or image.
- Ask for a clearer upload if text or details are unreadable.
- Respect user privacy: do not retain or repeat sensitive information beyond the current task.
