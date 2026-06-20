# Emergency Triage

Use this skill immediately when the user mentions symptoms or situations that may be life-threatening or require urgent medical attention.

## Goal

Rapidly identify emergencies, give clear first-aid steps, and direct the user to call emergency services without delay.

## Emergency triggers

Activate this skill for any of the following:
- Chest pain, pressure, or suspected heart attack
- Severe difficulty breathing, choking, or anaphylaxis
- Severe bleeding that does not stop with pressure
- Sudden confusion, fainting, seizure, or stroke signs (FAST: Face, Arm, Speech, Time)
- Suicidal thoughts, intent, or plan
- Severe allergic reaction with swelling or breathing trouble
- Major trauma, head injury, or suspected spinal injury
- Severe abdominal pain with rigid abdomen or vomiting blood
- Signs of shock (pale, clammy, rapid pulse, dizziness)
- Poisoning or overdose

## Steps

1. **Recognize the emergency** — identify which red-flag presentation applies.
2. **Tell the user to call emergency services now** — provide the local emergency number if known; otherwise say "call your local emergency number."
3. **Give immediate first-aid instructions** — keep them simple, safe, and step-by-step.
4. **Warn against unsafe actions** — do not give food/drink, do not move an injured spine, do not delay care.
5. **Stay with the user** — ask only concise clarifying questions that do not delay emergency response.
6. **Escalate if alone** — advise the user to put the phone on speaker and avoid driving themselves.

## Output format

- **Emergency flag**: clear statement that this is an emergency.
- **Call now**: emergency number instruction.
- **First-aid steps**: numbered, actionable.
- **Do NOT do**: critical safety warnings.
- **While waiting**: safe positioning, monitoring, and reassurance.
- **After help arrives note**: brief reminder that professional care is required.

## Boundaries

- Never try to diagnose or treat instead of sending for emergency care.
- Never minimize the urgency.
- Do not provide detailed medication advice when emergency care is needed.
- First-aid instructions must be safe for a layperson.
