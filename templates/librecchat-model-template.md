# Adapting Jan Alters for LibreChat

LibreChat uses a different model system than OpenWebUI. Here is how to adapt each alter.

## 1. System Prompt

- Open your LibreChat instance.
- Go to Settings > Presets or create a new conversation.
- Paste the content of `agents/jan-{alter}/system.md` into the **System Prompt** field.
- LibreChat supports `{{USER}}` and `{{DATE}}` variables natively. Adjust Jinja2 variables accordingly.

## 2. Model Selection

- Select any supported model from the dropdown. The system prompt defines the alter's behavior, not the model choice.
- Recommended: GPT-4o, Claude 3.5 Sonnet, or any local model via Ollama.

## 3. Tools / Plugins

LibreChat maps tools to plugins. Here is the mapping:

| OpenWebUI Tool     | LibreChat Plugin        |
|--------------------|-------------------------|
| web_search_and_crawl | Web Browsing / Search  |
| code_interpreter    | Code Interpreter / Python Runner |
| image_generation    | DALL-E / Image Generation |
| terminal            | Terminal / Shell Access (if available) |

Enable the relevant plugins for alters that list those tools in their `toolIds`.

## 4. Agent Configuration

LibreChat supports agent mode for advanced users:
- Go to Settings > Agents.
- Create a new agent. Set the name to "Jan: {Alter Name}".
- Paste the system prompt in the Instructions field.
- Add relevant tools/plugins.
- Save and select the agent in the conversation panel.

## 5. Multi-Alter Setup

You cannot have multiple agents active in one conversation. Switch agents by:
1. Starting a new conversation with the desired agent selected.
2. Or using the agent dropdown to switch (creates a new context).

## 6. Example: Adding Jan Developer

```
Agent Name: Jan: Developer
Model: gpt-4o
Instructions: [paste agents/jan-developer/system.md content]
Plugins: Code Interpreter
Prompt Variables: USER={{user}}, DATE={{date}}
```

## Limitations

- LibreChat does not support capability toggles at the model preset level (vision, file upload, etc.). These are global settings.
- System prompt injection is the primary mechanism; there is no parameter-level `params.system` override as in OpenWebUI.
