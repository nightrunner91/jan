# <p align="center">Jan</p>

<p align="center">
  <strong>A collection of AI personalities (alters) for OpenWebUI and compatible LLM platforms.</strong>
</p>

<p align="center">
  <img src="agents/jan-assistant/avatar.png" alt="Jan: Assistant" width="80">
  <img src="agents/jan-developer/avatar.png" alt="Jan: Developer" width="80">
  <img src="agents/jan-psychologist/avatar.png" alt="Jan: Psychologist" width="80">
  <img src="agents/jan-scientist/avatar.png" alt="Jan: Scientist" width="80">
  <img src="agents/jan-trainer/avatar.png" alt="Jan: Trainer" width="80">
  <img src="agents/jan-doctor/avatar.png" alt="Jan: Doctor" width="80">
  <img src="agents/jan-cook/avatar.png" alt="Jan: Cook" width="80">
</p>

<p align="center">
  <strong><img src="https://flagcdn.com/w20/us.png" width="20"> English</strong> | <a href="README.ru.md"><img src="https://flagcdn.com/w20/ru.png" width="20"> Russian</a>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Version-1.1.0-blue?style=for-the-badge" alt="Version">
  <img src="https://img.shields.io/badge/Models-11-green?style=for-the-badge" alt="Models">
  <img src="https://img.shields.io/badge/License-ISC-purple?style=for-the-badge" alt="License">
  <img src="https://img.shields.io/badge/Platform-OpenWebUI-orange?style=for-the-badge" alt="Platform">
</p>

## Table of Contents

- [Overview](#overview)
- [Agent Catalog](#agent-catalog)
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
- [Portability](#portability)
- [Knowledge Templates](#knowledge-templates)
- [Adding a New Alter](#adding-a-new-alter)
- [License](#license)

## Overview

Jan is a personal, regularly updated collection of AI personalities (alters) for [OpenWebUI](https://github.com/open-webui/open-webui) and compatible LLM platforms. Each alter represents a base language model configured through a unique system prompt, capability profile, skills, and access to a knowledge base.

The name and concept of the project are inspired by the game [The Alters](https://store.steampowered.com/app/1601570/The_Alters/) by 11 Bit Studios, where Jan Dolski creates alternative versions of himself to survive on a hostile planet. Each alter possesses unique skills and personality, yet all are the same person.

In the same spirit, each Jan alter is the same AI model, differing in **system prompt**, **platform capability settings**, and **specialized skills**. The alters are created as **practical tools**: assistant, psychologist, developer, doctor, lawyer, and others. Each has its own character and communication style, working methods, and abilities.

- No fine-tuning or GPU required.
- Adding a new alter is a matter of editing text, not deploying a model.
- Each alter works with any base model (DeepSeek, GPT, Gemini, Claude, Llama, Mistral).
- Each alter is flexibly customizable by the user by modifying the system prompt, skill set, and knowledge base.

## Agent Catalog

| Alter | Role | Base Model | Best For |
|-------|------|------------|----------|
| [Jan: Assistant](#jan-assistant) | Personal Assistant | DeepSeek V4 Flash | Research, tasks, data analysis, writing |
| [Jan: Constructor](#jan-constructor) | Construction Engineer | DeepSeek V4 Flash | Renovation, woodworking, DIY, material selection |
| [Jan: Cook](#jan-cook) | Chef / Cook | DeepSeek V4 Flash | Recipes, baking science, meal planning |
| [Jan: Developer](#jan-developer) | Software Developer | DeepSeek V4 Flash | Code review, debugging, system design, refactoring |
| [Jan: Doctor](#jan-doctor) | Medical Consultant | DeepSeek V4 Flash | Symptom interpretation, diagnosis, medication information |
| [Jan: Lawyer](#jan-lawyer) | Legal Information Specialist | DeepSeek V4 Flash | Contract clauses, rights, Moldovan legal procedures |
| [Jan: Policeman](#jan-policeman) | Public Safety Advisor | DeepSeek V4 Flash | Safety procedures, law enforcement protocols, de-escalation |
| [Jan: Politician](#jan-politician) | Policy Analyst & Diplomat | DeepSeek V4 Flash | Policy analysis, governance, international relations |
| [Jan: Psychologist](#jan-psychologist) | Counselor / Psychologist | DeepSeek V4 Flash | Anxiety, relationships, self-esteem, grief, personal growth |
| [Jan: Scientist](#jan-scientist) | Research Scientist | DeepSeek V4 Flash | Physics, biology, research methodology, evidence evaluation |
| [Jan: Trainer](#jan-trainer) | Fitness & Wellness Coach | DeepSeek V4 Flash | Workout programs, exercise technique, habit formation |

---

### <img src="agents/jan-assistant/avatar.png" alt="Jan: Assistant" width="24" align="left" style="margin-right: 12px;"> Jan: Assistant

| Parameter | Value |
|-----------|-------|
| Role | Personal Assistant |
| Tone | Neutral, business-like, unemotional |
| Base model | `deepseek/deepseek-v4-flash` |
| Scenarios | Scheduling, task management, research, data analysis, writing, document formatting, general knowledge queries. |

[View system prompt ➦](agents/jan-assistant/system.md)

**Skills:**

| Skill | Description |
|-------|-------------|
| [Web Research Synthesizer](agents/jan-assistant/skills/web-research-synthesizer/skill.en.md) | Scope research questions, evaluate sources, and produce citation-backed syntheses that separate facts from open questions. |
| [Data Analysis Guide](agents/jan-assistant/skills/data-analysis-guide/skill.en.md) | Inspect, clean, analyze, and visualize datasets using the code interpreter, then explain results and caveats in plain language. |
| [Schedule & Task Planner](agents/jan-assistant/skills/schedule-task-planner/skill.en.md) | Build realistic schedules, prioritize tasks, estimate effort, and sequence work around the user's constraints. |
| [Writing & Document Editor](agents/jan-assistant/skills/writing-document-editor/skill.en.md) | Draft, edit, rewrite, and format text and documents to match the user's purpose, audience, and tone. |
| [File & Vision Interpreter](agents/jan-assistant/skills/file-vision-interpreter/skill.en.md) | Extract, summarize, and answer questions about uploaded files, images, screenshots, and documents. |

**Knowledge base:** —  

---

### <img src="agents/jan-constructor/avatar.png" alt="Jan: Constructor" width="24" align="left" style="margin-right: 12px;"> Jan: Constructor

| Parameter | Value |
|-----------|-------|
| Role | Construction Engineer |
| Tone | Technical, practical, hands-on |
| Base model | `deepseek/deepseek-v4-flash` |
| Scenarios | Home renovation, woodworking, electrical basics (with disclaimers), plumbing, masonry, tool selection, material comparison, workshop organization. |

[View system prompt ➦](agents/jan-constructor/system.md)

**Skills:**

| Skill | Description |
|-------|-------------|
| [Material Selector](agents/jan-constructor/skills/material-selector/skill.en.md) | Compare and select construction materials based on project requirements, climate, budget, durability, and local availability. |
| [Build Planner](agents/jan-constructor/skills/build-planner/skill.en.md) | Structure any construction or DIY project into a consistent, actionable plan with overview, materials, steps, time estimates, and safety notes. |
| [Safety & Code Checker](agents/jan-constructor/skills/safety-code-checker/skill.en.md) | Flag hazards, separate DIY-safe work from licensed-professional work, and reference building codes or GOSTs with citations. |
| [Tool Selector](agents/jan-constructor/skills/tool-selector/skill.en.md) | Recommend the right tools for a task, explain safe setup and operation, and provide maintenance and buying guidance. |
| [Blueprint & Photo Reader](agents/jan-constructor/skills/blueprint-reader/skill.en.md) | Guide interpretation of uploaded blueprints, sketches, and photos to extract measurements, materials, and actionable guidance. |
| [Local Price Scanner (Moldova)](agents/jan-constructor/skills/local-price-scanner/skill.en.md) | Efficiently search for material and tool prices in Moldova through local platforms. |

**Knowledge base:** —  

---

### <img src="agents/jan-cook/avatar.png" alt="Jan: Cook" width="24" align="left" style="margin-right: 12px;"> Jan: Cook

| Parameter | Value |
|-----------|-------|
| Role | Chef / Cook |
| Tone | Warm, precise, encouraging without being saccharine |
| Base model | `deepseek/deepseek-v4-flash` |
| Scenarios | Recipe creation and adaptation, cooking techniques (knife skills, braising, fermentation), baking science, ingredient substitution, meal planning, cuisines of the world. |

[View system prompt ➦](agents/jan-cook/system.md)

**Skills:**

| Skill | Description |
|-------|-------------|
| [Recipe Developer](agents/jan-cook/skills/recipe-developer/skill.en.md) | Create and adapt recipes from available ingredients, dietary constraints, cuisine goals, or serving sizes. |
| [Baking Science Explainer](agents/jan-cook/skills/baking-science-explainer/skill.en.md) | Explain the chemistry and physics behind baking outcomes and help diagnose failed bakes. |
| [Ingredient Substitution Guide](agents/jan-cook/skills/ingredient-substitution-guide/skill.en.md) | Suggest safe ingredient substitutions and clearly flag taste, texture, structure, and safety trade-offs. |
| [Technique Coach](agents/jan-cook/skills/technique-coach/skill.en.md) | Break down cooking techniques step by step, explain the underlying science, and typical failure points. |
| [Meal Planner](agents/jan-cook/skills/meal-planner/skill.en.md) | Build balanced weekly menus, prep schedules, and shopping lists around dietary needs and time constraints. |

**Knowledge base:** —  

---

### <img src="agents/jan-developer/avatar.png" alt="Jan: Developer" width="24" align="left" style="margin-right: 12px;"> Jan: Developer

| Parameter | Value |
|-----------|-------|
| Role | Software Developer |
| Tone | Technical, precise, pragmatic |
| Base model | `deepseek/deepseek-v4-flash` |
| Scenarios | Programming in any language, code review, debugging, system design, algorithm selection, refactoring, testing strategies, CI/CD concepts, version control. |

[View system prompt ➦](agents/jan-developer/system.md)

**Skills:**

| Skill | Description |
|-------|-------------|
| [Code Reviewer](agents/jan-developer/skills/code-reviewer/skill.en.md) | Systematic code review for correctness, readability, maintainability, performance, security, and test coverage. |
| [Debugger](agents/jan-developer/skills/debugger/skill.en.md) | Structured root-cause analysis and fix verification for bugs, errors, and unexpected behavior. |
| [System Designer](agents/jan-developer/skills/system-designer/skill.en.md) | Pragmatic architecture and API design with tradeoffs, data flow, and scalability considerations. |
| [Security Vulnerability Scanner](agents/jan-developer/skills/security-vulnerability-scanner/skill.en.md) | Identify security flaws, anti-patterns, unsafe defaults, and deployment risks in code and architecture. |
| [Refactoring Planner](agents/jan-developer/skills/refactoring-planner/skill.en.md) | Plan and execute safe, test-backed refactoring to improve code quality while preserving behavior. |
| [Technical Dispute Resolver](agents/jan-developer/skills/technical-dispute-resolver/skill.en.md) | Impartial evaluation of conflicting technical opinions and decisions based on evidence, tradeoffs, and a recommended path forward. |

**Knowledge base:**

| File | Purpose |
|------|---------|
| [developer-profile.template-en.md](agents/jan-developer/knowledge/developer-profile.template-en.md) | Template for a personal developer profile (fill and attach as OpenWebUI knowledge). |
| [developer-profile.template-ru.md](agents/jan-developer/knowledge/developer-profile.template-ru.md) | Russian version of the personal developer profile template. |

---

### <img src="agents/jan-doctor/avatar.png" alt="Jan: Doctor" width="24" align="left" style="margin-right: 12px;"> Jan: Doctor

| Parameter | Value |
|-----------|-------|
| Role | Lead Medical Consultant and Clinical Analyst |
| Tone | Confident, professional, direct |
| Base model | `deepseek/deepseek-v4-flash` |
| Scenarios | Diagnosis and treatment of symptoms, preventive medical examinations, prescribing and adjusting drug therapy, anatomy and physiology, nutrition science, sleep health, stress physiology, first aid procedures (including emergency). |

[View system prompt ➦](agents/jan-doctor/system.md)

**Skills:**

| Skill | Description |
|-------|-------------|
| [Differential Diagnosis](agents/jan-doctor/skills/differential-diagnosis/skill.en.md) | Build a structured differential diagnosis from symptoms, rank likely causes, flag red flags, and request missing clinical data. |
| [Medication Guide](agents/jan-doctor/skills/medication-guide/skill.en.md) | Provide structured medication guidance including mechanism of action, indications, dosing, course, side effects, contraindications, and interactions. |
| [Lab & Imaging Interpreter](agents/jan-doctor/skills/lab-imaging-interpreter/skill.en.md) | Interpret uploaded lab reports and imaging descriptions, flag abnormal findings, and connect results to differential diagnoses. |
| [Emergency Triage](agents/jan-doctor/skills/emergency-triage/skill.en.md) | Recognize emergency symptoms and provide immediate first-aid instructions with a recommendation to contact emergency services. |
| [Medical Literature Synthesizer](agents/jan-doctor/skills/medical-literature-synthesizer/skill.en.md) | Synthesize medical guidelines, consensus statements, and clinical studies with citations. |
| [Moldova Healthcare Localizer](agents/jan-doctor/skills/moldova-healthcare-localizer/skill.en.md) | Find and analyze Moldovan hospitals, pharmacies, official health portals, forums, and news. |

**Knowledge base:**

| File | Purpose |
|------|---------|
| [medical-profile.template-en.md](agents/jan-doctor/knowledge/medical-profile.template-en.md) | Template for a personal medical profile (fill and attach as OpenWebUI knowledge). |
| [medical-profile.template-ru.md](agents/jan-doctor/knowledge/medical-profile.template-ru.md) | Russian version of the personal medical profile template. |

> [!WARNING]
> Jan: Doctor provides health **information**, not medical advice. Always consult a licensed healthcare professional for personal medical decisions.

---

### <img src="agents/jan-lawyer/avatar.png" alt="Jan: Lawyer" width="24" align="left" style="margin-right: 12px;"> Jan: Lawyer

| Parameter | Value |
|-----------|-------|
| Role | Legal Information Specialist |
| Tone | Formal, precise, measured |
| Base model | `deepseek/deepseek-v4-flash` |
| Scenarios | Contract clause explanations, legal procedure overviews, rights education, court system structure, intellectual property basics, housing rental legislation overview, employment law concepts. |

[View system prompt ➦](agents/jan-lawyer/system.md)

**Skills:**

| Skill | Description |
|-------|-------------|
| [Contract Clause Explainer](agents/jan-lawyer/skills/contract-clause-explainer/skill.en.md) | Interpret contract clauses in plain language, identify risks, and define rights and obligations under Moldovan law. |
| [Legal Procedure Mapper](agents/jan-lawyer/skills/legal-procedure-mapper/skill.en.md) | Provide step-by-step guidance for common legal and administrative procedures in the Republic of Moldova. |
| [Rights Educator](agents/jan-lawyer/skills/rights-educator/skill.en.md) | Explain legal rights in everyday contexts under Moldovan law, distinguishing statutory rights from practical limitations. |
| [Document Drafter](agents/jan-lawyer/skills/document-drafter/skill.en.md) | Help draft legal documents, applications, and notices intended for use in the Republic of Moldova. |
| [Moldova Law Fact Checker](agents/jan-lawyer/skills/moldova-law-fact-checker/skill.en.md) | Verify legal claims, citations, and statements against Moldovan legislation and flag outdated or uncertain information. |

**Knowledge base:**

| Content | Purpose |
|---------|---------|
| Collection of Republic of Moldova legal codes and laws (PDF) | Pre-attached legal sources that ground answers in current Moldovan legislation. |

> [!WARNING]
> Jan: Lawyer provides **legal information**, not legal advice. Consult a qualified attorney before taking action.

---

### <img src="agents/jan-policeman/avatar.png" alt="Jan: Policeman" width="24" align="left" style="margin-right: 12px;"> Jan: Policeman

| Parameter | Value |
|-----------|-------|
| Role | Public Safety & Law Enforcement Advisor |
| Tone | Authoritative, procedural, community-oriented |
| Base model | `deepseek/deepseek-v4-flash` |
| Scenarios | Traffic stop procedures, personal safety best practices, reporting crimes, understanding warrants and searches, community policing, emergency preparedness, dispute de-escalation. |

[View system prompt ➦](agents/jan-policeman/system.md)

**Skills:**

| Skill | Description |
|-------|-------------|
| [Traffic Stop Advisor](agents/jan-policeman/skills/traffic-stop-advisor/skill.en.md) | Help users behave during a traffic stop, explain required documents and rights, and keep the encounter calm and lawful. |
| [Personal Safety Planner](agents/jan-policeman/skills/personal-safety-planner/skill.en.md) | Build a personal safety and situational awareness plan for public places, transport, or home. |
| [Crime Reporting Guide](agents/jan-policeman/skills/crime-reporting-guide/skill.en.md) | Explain how to safely report a crime or incident in Moldova, what to record, and how to get a response. |
| [Warrant & Search Explainer](agents/jan-policeman/skills/warrant-and-search-explainer/skill.en.md) | Explain search powers, warrants, and consent during searches of homes, vehicles, or personal inspections in Moldova. |
| [De-Escalation Coach](agents/jan-policeman/skills/de-escalation-coach/skill.en.md) | Teach verbal and behavioral de-escalation techniques for tense interpersonal conflicts. |

**Knowledge base:** —  

---

### <img src="agents/jan-politician/avatar.png" alt="Jan: Politician" width="24" align="left" style="margin-right: 12px;"> Jan: Politician

| Parameter | Value |
|-----------|-------|
| Role | Policy Analyst & Diplomat |
| Tone | Diplomatic, nuanced, balanced |
| Base model | `deepseek/deepseek-v4-flash` |
| Scenarios | Policy analysis, governance structures, legislative processes, international relations, public speaking, negotiation strategy, political theory concepts, electoral systems. |

[View system prompt ➦](agents/jan-politician/system.md)

**Skills:**

| Skill | Description |
|-------|-------------|
| [Policy Analysis](agents/jan-politician/skills/policy-analysis/skill.en.md) | Balanced, evidence-based breakdown of a policy issue: problem, current approach, alternatives, evidence, and tradeoffs. |
| [Debate Prep](agents/jan-politician/skills/debate-prep/skill.en.md) | Map key arguments, objections, and factual grounding for both sides of political debates. |
| [Stakeholder Position Mapper](agents/jan-politician/skills/stakeholder-position-mapper/skill.en.md) | Identify actors in a political or governance issue, their positions, interests, and influence, as well as areas of agreement or conflict. |
| [Electoral System Explainer](agents/jan-politician/skills/electoral-system-explainer/skill.en.md) | Explain how elections and representation work in a specific country or system, compare voting rules, and analyze their political consequences. |
| [International Relations Briefing](agents/jan-politician/skills/international-relations-briefing/skill.en.md) | Brief summary of diplomatic context, treaties, alliances, disputes, and political options for bilateral or multilateral relations. |

**Knowledge base:** —  

---

### <img src="agents/jan-psychologist/avatar.png" alt="Jan: Psychologist" width="24" align="left" style="margin-right: 12px;"> Jan: Psychologist

| Parameter | Value |
|-----------|-------|
| Role | Counselor / Psychologist |
| Tone | Warm, empathetic, accepting |
| Base model | `deepseek/deepseek-v4-flash` |
| Scenarios | Anxiety and stress management, relationships and communication, self-esteem and self-compassion, grief and loss, life transitions, emotional regulation, boundary setting, personal growth. |

[View system prompt ➦](agents/jan-psychologist/system.md)

**Skills:**

| Skill | Description |
|-------|-------------|
| [Anxiety & Stress Coach](agents/jan-psychologist/skills/anxiety-stress-coach/skill.en.md) | Provide evidence-based coping strategies for anxiety, worry, panic, and everyday stress. |
| [Boundary Setting Guide](agents/jan-psychologist/skills/boundary-setting-guide/skill.en.md) | Help users define their limits, clearly voice boundaries, and cope with guilt or resistance while maintaining self-respect. |
| [Crisis Safety Assessor](agents/jan-psychologist/skills/crisis-safety-assessor/skill.en.md) | Identify signs of acute crisis, respond with compassion, and guide the user to emergency services or crisis helplines. |
| [Reflective Listening Guide](agents/jan-psychologist/skills/reflective-listening-guide/skill.en.md) | Reflect emotions, paraphrase experiences, and ask open questions to help the user feel heard and understood. |
| [Relationship & Communication Coach](agents/jan-psychologist/skills/relationship-communication-coach/skill.en.md) | Help users explore relationship conflicts, communication patterns, and emotional needs with neutrality and empathy. |

**Knowledge base:** —  

> [!WARNING]
> Jan: Psychologist is an AI support resource, not a licensed mental health professional. For crises, contact emergency services or a crisis line immediately.

---

### <img src="agents/jan-scientist/avatar.png" alt="Jan: Scientist" width="24" align="left" style="margin-right: 12px;"> Jan: Scientist

| Parameter | Value |
|-----------|-------|
| Role | Research Scientist |
| Tone | Rigorous, evidence-based, intellectually humble |
| Base model | `deepseek/deepseek-v4-flash` |
| Scenarios | Physics and cosmology, biology and medicine (with disclaimers), chemistry, earth science, climate science, research methodology, statistical reasoning, history and philosophy of science, technology explanations. |

[View system prompt ➦](agents/jan-scientist/system.md)

**Skills:**

| Skill | Description |
|-------|-------------|
| [Evidence Hierarchy Evaluator](agents/jan-scientist/skills/evidence-hierarchy-evaluator/skill.en.md) | Evaluate and rank scientific evidence by quality: from meta-analyses to expert opinions and anecdotes. |
| [Scientific Literature Synthesizer](agents/jan-scientist/skills/scientific-literature-synthesizer/skill.en.md) | Synthesize results from multiple papers, identify consensus and disagreement, and summarize controversial or emerging science with citations. |
| [Statistical Reasoning Checker](agents/jan-scientist/skills/statistical-reasoning-checker/skill.en.md) | Check statistical claims, interpret p-values, confidence intervals, effect sizes, biases, and identify typical reasoning errors. |
| [Research Methodology Designer](agents/jan-scientist/skills/research-methodology-designer/skill.en.md) | Design rigorous experiments and studies: hypothesis, prediction, experiment, analysis, interpretation, limitations, and next steps. |
| [Misconception Debunker](agents/jan-scientist/skills/misconception-debunker/skill.en.md) | Identify and correct common scientific misconceptions based on evidence, distinguishing myths from established consensus. |

**Knowledge base:** —  

---

### <img src="agents/jan-trainer/avatar.png" alt="Jan: Trainer" width="24" align="left" style="margin-right: 12px;"> Jan: Trainer

| Parameter | Value |
|-----------|-------|
| Role | Fitness & Wellness Coach |
| Tone | Motivational but realistic |
| Base model | `deepseek/deepseek-v4-flash` |
| Scenarios | Workout programming (strength, hypertrophy, endurance, mobility), exercise form and technique, nutrition for fitness, recovery and sleep, habit formation, goal setting, bodyweight training, running and cardio. |

[View system prompt ➦](agents/jan-trainer/system.md)

**Skills:**

| Skill | Description |
|-------|-------------|
| [Workout Program Designer](agents/jan-trainer/skills/workout-program-designer/skill.en.md) | Build structured workout plans for specific goals with progression, schedule, and safety recommendations. |
| [Exercise Technique Coach](agents/jan-trainer/skills/exercise-technique-coach/skill.en.md) | Break down exercise technique: starting position, execution cues, typical errors, and progression/regression options. |
| [Habit Formation Coach](agents/jan-trainer/skills/habit-formation-coach/skill.en.md) | Turn fitness goals into small, repeatable actions and sustainable routines based on identity. |
| [Recovery & Sleep Optimizer](agents/jan-trainer/skills/recovery-and-sleep-optimizer/skill.en.md) | Balance training stress with rest, active recovery, sleep hygiene, and deload strategies. |
| [Nutrition-for-Fitness Guide](agents/jan-trainer/skills/nutrition-for-fitness-guide/skill.en.md) | Provide evidence-informed nutrition context for training, recovery, and body composition without medical prescriptions. |

**Knowledge base:** —  

> [!WARNING]
> Jan: Trainer provides fitness guidance, not medical treatment. Stop exercising and see a professional if you feel pain or suspect an injury.

## Project Structure

```
jan/
  agents/                   # One folder per alter/personality
    jan-{alter}/
      avatar.png            # Avatar image
      system.md             # English system prompt (source of truth)
      system.ru.md          # Russian system prompt
      openwebui.json        # OpenWebUI export (English UI)
      openwebui.ru.json     # OpenWebUI export (Russian UI)
      skills/               # Per-agent skills (optional)
        {skill-slug}/
          manifest.json
          skill.en.md
          skill.ru.md
      knowledge/            # Per-agent knowledge/templates (optional)
  docs/
    architecture.md         # Design decisions and philosophy
    portability-guide.md    # Platform export instructions
  shared/                   # Shared global assets
    avatar.fig              # Figma source for avatars
  templates/                # Portability templates
    openwebui-model-template.json
    librecchat-model-template.md
    lm-studio-model-template.md
    ollama-modelfile-template.md
  README.md
  README.ru.md
```

## Getting Started

### Import into OpenWebUI

1. Open your OpenWebUI instance.
2. Navigate to **Workspace > Skills**.
3. Click the import button (upload icon).
4. Upload the required skill set for the selected model.
5. Navigate to **Workspace > Models**.
6. Click the import button (upload icon).
7. Select any `agents/jan-{alter}/openwebui.json` (English UI) or `openwebui.ru.json` (Russian UI) file.
8. The model appears in your model list with all capabilities, tools, and skills pre-configured.

> [!NOTE]
> If a knowledge base is available and/or required, upload it via **Workspace > Knowledge**, then attach it in the model settings. A knowledge base is not always required and is not for all alters; moreover, it is personalized.

### Use a Model

1. Start a new chat.
2. Select the desired Jan alter from the model selector.
3. The system prompt, skills, and knowledge are applied — the alter is ready to respond in its role.

> [!NOTE]
> Capabilities (web search, code interpreter, image generation, file upload) vary by alter. Details are in the model description in OpenWebUI. In addition, capabilities and tools can be customized to your preference.

## Portability

Each alter is defined by these files inside `agents/jan-{alter}/`:

| File | Purpose | Portable to |
|------|---------|-------------|
| `system.md` | System prompt in English (source of truth) | All platforms |
| `system.ru.md` | System prompt in Russian | All platforms |
| `openwebui.json` | OpenWebUI export (English UI) | OpenWebUI only |
| `openwebui.ru.json` | OpenWebUI export (Russian UI) | OpenWebUI only |

To use an alter on another platform:

- **LibreChat**: Create an agent, paste the `.md` content as instructions, enable relevant plugins.
- **LM Studio**: Create a preset, paste the `.md` content as the system prompt, set temperature.
- **Ollama**: Create a Modelfile with the `SYSTEM` block, build, and run.

See `docs/portability-guide.md` for detailed instructions, including temperature recommendations and base model suggestions per alter.

## Knowledge Templates

Some alters include optional knowledge-base templates you can fill out and attach in OpenWebUI:

- **Jan: Developer** — `developer-profile.template-en.md` / `developer-profile.template-ru.md`  
  Store your tech stack, conventions, current projects, code-review preferences, and communication style. Attach it as Full Context knowledge so the alter respects your environment.

- **Jan: Doctor** — `medical-profile.template-en.md` / `medical-profile.template-ru.md`  
  Store your medical history, medications, allergies, baseline vitals, and doctors. Attach it as Full Context knowledge for personalized health information discussions.

- **Jan: Lawyer** — Republic of Moldova legal code PDF collection  
  Pre-attached legal sources that ground answers in Republic of Moldova legislation.

Filled personal profiles are ignored by Git (see `.gitignore`) to keep sensitive data out of the repository.

## Adding a New Alter

1. Copy an existing alter folder (e.g. `agents/jan-trainer/`).
2. Edit `system.md` — change role, tone, behavior rules, topics, and skills list.
3. Edit `system.ru.md` — update the Russian translation.
4. Edit `openwebui.json` and `openwebui.ru.json` — update id, name, description, capabilities, toolIds, and skillIds.
5. Add per-agent skills under `skills/{skill-slug}/` with `manifest.json`, `skill.en.md`, and `skill.ru.md`.
6. Replace `avatar.png` with a matching avatar image.

That is all. No build step, no database changes, no configuration beyond these files.

For a blank starting point, use `templates/openwebui-model-template.json`.

## License

This project is licensed under the ISC License.

<hr>

<p align="center">
  Built with ❤ by <a href="https://t.me/nightrunner91">nightrunner91</a>
</p>
