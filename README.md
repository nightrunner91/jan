# <p align="center">Jan</p>

<p align="center">
  <strong>A collection of AI alters for OpenWebUI, inspired by the game "The Alters" (Jan Dolski).</strong>
</p>

<p align="center">
  <img src="agents/jan-assistant/avatar.png" alt="Jan Assistant" width="80">
  <img src="agents/jan-developer/avatar.png" alt="Jan Developer" width="80">
  <img src="agents/jan-psychologist/avatar.png" alt="Jan Psychologist" width="80">
  <img src="agents/jan-scientist/avatar.png" alt="Jan Scientist" width="80">
</p>

<p align="center">
  <strong><img src="https://flagcdn.com/w20/us.png" width="20"> English</strong> | <a href="README.ru.md"><img src="https://flagcdn.com/w20/ru.png" width="20"> Russian</a>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Version-1.0.0-blue?style=for-the-badge" alt="Version">
  <img src="https://img.shields.io/badge/Models-11-green?style=for-the-badge" alt="Models">
  <img src="https://img.shields.io/badge/License-ISC-purple?style=for-the-badge" alt="License">
  <img src="https://img.shields.io/badge/Platform-OpenWebUI-orange?style=for-the-badge" alt="Platform">
</p>

## Table of Contents

- [Overview](#overview)
- [The Alter Concept](#the-alter-concept)
- [Model Catalog](#model-catalog)
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
- [Portability](#portability)
- [Adding a New Alter](#adding-a-new-alter)
- [License](#license)

## Overview

Jan is a curated collection of AI personality alters -- distinct conversational personas -- designed for OpenWebUI and compatible LLM chat platforms. Each alter is the same underlying large language model configured with a unique system prompt, capability profile, and avatar.

The alters are designed to be **practical tools**, not toys. Each one serves a specific functional role: software developer, doctor (health education), lawyer (legal information), psychologist (emotional support), fitness coach, and more.

## The Alter Concept

The project takes its name and inspiration from "The Alters," a game by 11 Bit Studios about Jan Dolski, a worker who creates alternate versions of himself to survive on a hostile planet. Each alter embodies a different skill set, temperament, and identity -- yet they all share the same origin.

In the same spirit, each Jan alter is the same AI model beneath the surface, differentiated entirely by **prompt engineering** and **platform feature toggles**. This means:

- No fine-tuning or GPU training required.
- Adding a new alter is a text edit, not a model deployment.
- Every alter works with any base model (DeepSeek, GPT, Claude, Llama, Mistral).

## Model Catalog

| Alter | Description | Base Model | Use Case |
|-------|-------------|------------|----------|
| Assistant | Neutral, reliable personal assistant | DeepSeek V4 Flash | Research, task management, data analysis, general queries |
| Constructor | Practical builder and engineer | DeepSeek V4 Flash | Renovation, woodworking, DIY, material selection |
| Cook | Culinary expert and recipe developer | DeepSeek V4 Flash | Cooking techniques, baking science, meal planning |
| Developer | Software engineer and code reviewer | DeepSeek V4 Flash | Code review, debugging, system design, testing |
| Doctor | Health education specialist | DeepSeek V4 Flash | Symptom education, preventive health, anatomy |
| Lawyer | Legal information specialist | DeepSeek V4 Flash | Contract clauses, rights education, legal procedures |
| Policeman | Public safety and law enforcement advisor | DeepSeek V4 Flash | Safety procedures, law enforcement protocols, de-escalation |
| Politician | Policy analyst and diplomat | DeepSeek V4 Flash | Policy analysis, governance, international relations |
| Psychologist | Counselor and emotional support | DeepSeek V4 Flash | Anxiety, relationships, self-esteem, grief, personal growth |
| Scientist | Research scientist and science communicator | DeepSeek V4 Flash | Physics, biology, chemistry, research methodology |
| Trainer | Fitness and wellness coach | DeepSeek V4 Flash | Workout programming, exercise form, habit building |

> [!NOTE]
> All alters default to DeepSeek V4 Flash for immediate usability. The system prompts are provider-agnostic and work with GPT-4o, Claude, Llama, or any capable model.

## Project Structure

```
jan/
  agents/                # One folder per alter/personality
    jan-assistant/       # avatar.png + system prompts + OpenWebUI exports
    jan-constructor/     # + skills/
    jan-cook/
    jan-developer/
    jan-doctor/          # + knowledge/ and skills/
    jan-lawyer/
    jan-policeman/
    jan-politician/
    jan-psychologist/
    jan-scientist/       # + skills/
    jan-trainer/
  skills/                # Global/shared skills (empty for now)
  templates/             # Portability templates
    openwebui-model-template.json
    librecchat-model-template.md
    lm-studio-model-template.md
    ollama-modelfile-template.md
  docs/
    architecture.md      # Design decisions and philosophy
    portability-guide.md # Platform export instructions
  scripts/
    fix_ru_imperatives.ps1
  shared/                # Shared global assets
    avatar.fig           # Figma source for avatars
  README.md
  README.ru.md
```

## Getting Started

### Import into OpenWebUI

1. Open your OpenWebUI instance.
2. Navigate to **Workspace > Models**.
3. Click the import button (upload icon).
4. Select any `agents/jan-{alter}/openwebui.json` file.
5. The model appears in your model list with all capabilities and tools pre-configured.

You can import all 11 models at once. Duplicate IDs are updated automatically.

### Use a Model

1. Start a new chat.
2. Select the desired Jan alter from the model selector.
3. The system prompt is already applied -- the alter will respond in its defined role.

> [!NOTE]
> Capabilities (web search, code interpreter, image generation) vary by alter. Check the model description in OpenWebUI for details.

## Portability

Each alter is defined by these files inside `agents/jan-{alter}/`:

| File | Purpose | Portable to |
|------|---------|-------------|
| `system.md` | System prompt (plain text) | All platforms |
| `system.ru.md` | Russian system prompt | All platforms |
| `openwebui.json` | OpenWebUI export | OpenWebUI only |

To use an alter on another platform:

- **LibreChat**: Create an agent, paste the `.md` content as instructions, enable relevant plugins.
- **LM Studio**: Create a preset, paste the `.md` content as the system prompt, set temperature.
- **Ollama**: Create a Modelfile with the `SYSTEM` block, build, and run.

See `docs/portability-guide.md` for detailed instructions.

## Adding a New Alter

1. Copy an existing alter folder (e.g., `agents/jan-trainer/`).
2. Edit `system.md` -- change role, tone, behavior, and trigger topics.
3. Edit `system.ru.md` -- update the Russian translation.
4. Edit `openwebui.json` -- update id, name, description, capabilities, and toolIds.
5. Replace `avatar.png` with a matching avatar image.

That is all. No build step, no database changes, no configuration beyond these files.

For a blank starting point, use `templates/openwebui-model-template.json`.

## License

This project is licensed under the ISC License.

<p align="center">
  Built with love by <a href="https://t.me/nightrunner91">nightrunner91</a>
</p>
