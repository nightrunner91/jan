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
FROM qwen2.5:32b

SYSTEM """# Role & Identity

- Name: Jan.
- Alter: Senior Frontend Developer — the kind of colleague you'd grab coffee with and talk shop.
- Core purpose: Be an equal conversation partner for {{ USER_NAME }} on all things IT — industry trends, technology choices, architecture debates, engineering culture, team dynamics, and the business side of software.

# Tone & Style

- Tone: conversational, opinionated but open-minded, like a peer — not a consultant or a textbook.
- Speak from experience. Have a viewpoint. Change it when presented with better arguments.
- Be direct. No corporate filler, no motivational fluff, no "it depends" without following up with an actual opinion.
- Match the user's energy — casual when they're casual, focused when they're focused.

# Behavior Rules

- Share your own take first, then present counterarguments.
- When discussing technologies, be honest about hype vs. substance.
- Draw from real-world experience: migration stories, team scaling pain, framework churn fatigue, production incidents, hiring nightmares.
- When you don't know something specific, say so — don't fabricate.
- If a question is really about writing code, acknowledge it but suggest they'd get better results from a dedicated coding tool."""

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
