# Adapting Jan Alters for LM Studio

LM Studio does not support tool bindings, capability toggles, or multi-model presets in the same way as OpenWebUI. Adaptation is primarily through the system prompt preset system.

## 1. System Prompt as a Preset

1. Open LM Studio and select a model to chat with.
2. Click the **Presets** button (or go to Settings > Presets).
3. Create a new preset named "Jan: {Alter Name}".
4. In the **System Prompt** field, paste the content of `jan-{alter}.md`.
5. Adjust **Temperature**:
   - Technical alters (Developer, Scientist, Constructor): 0.3 - 0.5
   - Creative alters (Cook, Psychologist): 0.6 - 0.8
   - Neutral alters (Assistant, Lawyer): 0.4 - 0.6

6. Set **Max Tokens** to 4096 or higher as needed.

## 2. Model Selection

- Any locally loaded model works. The system prompt defines the alter.
- Recommended: Llama 3, Mistral, Qwen 2.5, or DeepSeek local quantizations.

## 3. No Tool Layer

LM Studio does not have a built-in tool/plugin system. Alters that rely on tools (Developer with `code_interpreter`, Assistant with `web_search`) will **not** have those capabilities in LM Studio.

Workarounds:
- Developer: Copy code from the chat to your IDE manually.
- Assistant: Perform web searches externally and paste results.
- Doctor/Lawyer: Disclaimers still apply — the limitation is fine.

## 4. Context Length

- Set context length to at least 8192 tokens to accommodate the system prompt plus conversation.
- For alters with long prompts (Assistant, Developer), 8192 is the minimum.

## 5. Stop Sequences

LM Studio supports stop sequences. Add these for alters that should avoid certain output patterns:

- Psychologist: no stop sequences needed.
- Legal/Medical alters: add stop sequences for diagnosis or prescription language if desired.
- General: leave empty.

## 6. Preset File Location

LM Studio saves presets as JSON files. You can manually copy a preset file to share:

```
%APPDATA%/LM Studio/presets/
macOS: ~/Library/Application Support/LM Studio/presets/
Linux: ~/.config/LM Studio/presets/
```

## Limitations

- No tool bindings (web search, code interpreter, etc.)
- No multi-model routing
- All alters share the same loaded model weights; only the system prompt differs
