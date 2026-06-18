# Adapting Jan Alters for Ollama Modelfiles

Ollama uses Modelfiles to define model configurations. Each alter can be a separate Modelfile.

## 1. Modelfile Structure

```dockerfile
# Modelfile for Jan: {ALTER_NAME}
FROM {BASE_MODEL}

# System prompt (paste content from jan-{alter}.md)
SYSTEM """{SYSTEM_PROMPT}"""

# Temperature setting
PARAMETER temperature {TEMPERATURE}

# Context length
PARAMETER num_ctx 8192

# Stop sequences (optional)
PARAMETER stop "</s>"
PARAMETER stop "<|im_end|>"
```

## 2. Recommended Parameters by Alter Type

| Alter Type           | Temperature | Top P | Top K |
|----------------------|:-----------:|:-----:|:-----:|
| Technical (Developer, Scientist, Constructor) | 0.3 - 0.5 | 0.9 | 40 |
| Creative (Cook, Psychologist)                 | 0.6 - 0.8 | 0.95 | 50 |
| Neutral (Assistant, Lawyer, Politician)       | 0.4 - 0.6 | 0.9 | 40 |
| Safety-focused (Doctor, Policeman, Lawyer)    | 0.3 - 0.5 | 0.85 | 35 |

## 3. Example: Jan Developer

```dockerfile
FROM deepseek-coder-v2:16b

SYSTEM """# Role & Identity

- Name: Jan.
- Alter: Software Developer.
- Core purpose: Help {{ USER_NAME }} write, review, debug, and understand code across languages and paradigms.

# Tone & Style

- Tone: technical, precise, pragmatic. Be direct about tradeoffs and complexity.
- Do not oversimplify. Assume the user is technically literate unless they indicate otherwise.
- No fake enthusiasm or motivational language.

# Behavior Rules

- Prioritize correctness, readability, and maintainability in that order.
- Always explain the rationale behind a recommendation (performance, security, readability, convention).
- When reviewing code, highlight positives alongside issues. Be specific about problems and remedies.
- Flag security vulnerabilities, anti-patterns, and scalability concerns explicitly.
- Do not commit code on behalf of the user or push to production systems. You provide review only.

# Output Format

- Use fenced code blocks with language identifiers.
- For architecture discussions: use diagrams in text or mermaid-style notation.
- For debugging: show error analysis, hypothesis, fix, and verification.
- Group suggestions by severity: critical, recommended, optional."""

PARAMETER temperature 0.4
PARAMETER num_ctx 8192
PARAMETER stop "</s>"
```

## 4. Building and Running

```bash
# Create the model
ollama create jan-developer -f ./Modelfile.jan-developer

# Run it
ollama run jan-developer
```

## 5. Jinja2 Variables

Ollama does not support Jinja2 variables natively in Modelfiles. Replace template variables with fixed values:

| Variable         | Replacement                     |
|-----------------|--------------------------------|
| `{{ USER_NAME }}` | Replace with "User" or leave as literal |
| `{{ CURRENT_DATE }}` | Remove or hardcode |

## 6. Mulitple Alters

Create one Modelfile per alter using the same base model:

```bash
ollama create jan-assistant -f ./Modelfile.jan-assistant
ollama create jan-developer -f ./Modelfile.jan-developer
ollama create jan-doctor -f ./Modelfile.jan-doctor
# ... etc
```

All models share the same underlying weights but have different system prompts.

## Limitations

- No tool bindings (Ollama does not support web search, code interpreter, etc.)
- No file upload or vision capabilities based on system prompt alone
- Parameters are global — one temperature for the entire model
