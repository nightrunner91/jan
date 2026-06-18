# Jan Alter Architecture

## Concept

The Jan project is a collection of AI personality alters — distinct conversational personas — for use with OpenWebUI and compatible LLM chat platforms. The concept is inspired by the game "The Alters" (Jan Dolski), where alternate versions of the same person embody different skills, temperaments, and identities.

In practice, each alter is the same underlying large language model configured with:

1. A **system prompt** that defines role, tone, behavioral rules, and capability boundaries.
2. A **capability profile** specifying which platform features (web search, code execution, vision, etc.) are enabled.
3. An **avatar** (PNG) for visual identification.

No fine-tuning or model customization is required. Differentiation is achieved entirely through prompt engineering and platform feature toggles.

## Why System Prompts Instead of Fine-Tuning

- **Zero training cost**: Adding a new alter is a text edit, not a GPU job.
- **Instant iteration**: Prompts can be tuned in real-time during a conversation.
- **Base model flexibility**: The same prompt works across DeepSeek, GPT, Claude, Llama, Mistral, etc. with minimal adaptation.
- **No data collection**: No need to curate training datasets for each persona.
- **Platform portability**: System prompts are plain text — they work in any chat interface that supports custom instructions.

The tradeoff is that all alters share the same knowledge base, biases, and limitations of the underlying model. There is no true personality persistence beyond what the prompt enforces.

## Provider Selection

| Provider | Use Case | Rationale |
|----------|----------|-----------|
| DeepSeek V4 Flash | Default for all alters | Fast, cost-effective, strong instruction following. Available in OpenWebUI by default. |
| GPT-4o | Empathetic alters (Psychologist) | Superior emotional intelligence and tone adherence. |
| Claude 3.5 Sonnet | Safety-critical alters (Doctor, Lawyer) | Strong refusal behavior and nuanced safety handling. |

All JSON exports default to `deepseek/deepseek-v4-flash` for immediate usability. The `description` and capability toggles signal where a different provider would excel.

## Capability Mapping per Alter

| Alter | file_ctx | vision | upload | web_search | img_gen | code_interp | terminal | citations |
|-------|:--------:|:------:|:------:|:----------:|:-------:|:-----------:|:--------:|:---------:|
| Assistant | T | T | T | T | T | T | T | T |
| Constructor | T | . | T | . | . | . | . | T |
| Cook | T | . | T | . | . | . | . | T |
| Developer | T | . | T | . | . | T | T | T |
| Doctor | T | . | T | T | . | . | . | T |
| Lawyer | T | . | T | T | . | . | . | T |
| Policeman | T | . | T | . | . | . | . | . |
| Politician | T | . | T | T | . | . | . | T |
| Psychologist | . | . | . | . | . | . | . | . |
| Scientist | T | T | T | T | . | . | . | T |
| Trainer | T | . | T | . | . | . | . | . |

(T = enabled, . = disabled)

## Tool Bindings

Only two tools are used across the collection:

- **`web_search_and_crawl`**: For alters that need current information (Assistant, Doctor, Lawyer, Politician, Scientist).
- **`code_interpreter`**: For alters that execute code (Developer). Assistant has it as a `defaultFeatureId`.

Other tools (terminal, image generation) are toggled at the capability level rather than bound as tool IDs.

## Skill System

Skills are reusable markdown documents that describe structured methodologies for specific alter activities. They are not platform-native features — they serve as reference material for prompt authors and as optional context that can be injected into conversations.

- `skills/code-review.md` — Used by the Developer alter during code review conversations.
- `skills/therapy-framework.md` — Used by the Psychologist alter to structure therapeutic conversations.

Skills are referenced in the system prompt by name and can be expanded independently of the model definitions.

## Portability Strategy

Each alter is defined in three files:

1. **`jan-{alter}.md`** — System prompt in plain English (the canonical behavioral definition).
2. **`jan-{alter}.ru.md`** — Russian translation of the system prompt.
3. **`jan-{alter}.json`** — OpenWebUI export JSON (the canonical platform-specific artifact).

The `.md` file is the source of truth. The JSON is generated from it. For other platforms:
- **LM Studio**: Copy `.md` content into a preset's system prompt field.
- **LibreChat**: Copy `.md` content into an agent's instructions field.
- **Ollama**: Create a Modelfile with the `SYSTEM` block containing the `.md` content.

See `docs/portability-guide.md` for step-by-step instructions.

## Extensibility

Adding a new alter requires:

1. Copy an existing alter folder (e.g., `models/trainer/`).
2. Edit `jan-{name}.md`: change role, tone, behavior, trigger topics.
3. Edit `jan-{name}.json`: update id, name, description, capabilities, toolIds.
4. Drop a matching `jan-{name}.png` into `avatars/`.

That is it. No build step, no database changes, no configuration beyond these three files.

## Directory Structure

```
jan/
  models/
    {alter}/
      jan-{alter}.md        # English system prompt
      jan-{alter}.ru.md     # Russian system prompt (placeholder)
      jan-{alter}.json      # OpenWebUI export
  skills/                   # Shared methodology documents
    code-review.md
    therapy-framework.md
  templates/                # Portability templates
    openwebui-model-template.json
    librecchat-model-template.md
    lm-studio-model-template.md
    ollama-modelfile-template.md
  docs/
    architecture.md          # This file
    portability-guide.md     # Platform export guide
  avatars/                   # Avatar PNGs (existing)
  README.md
  README.ru.md
```
