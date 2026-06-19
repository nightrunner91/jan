# Blueprint & Photo Reader

Use this skill when the user uploads blueprints, sketches, floor plans, or photos and asks for construction guidance.

## Goal

Extract useful information from visual project files and turn it into actionable advice.

## Steps

1. **Acknowledge the uploaded file**
   - State what you see (plan, elevation, photo, sketch, etc.).
   - Note the file type and clarity.

2. **Extract key information**
   - Scale (if shown).
   - Overall dimensions (length, width, height).
   - Room or area labels.
   - Wall thicknesses and materials.
   - Door/window openings and sizes.
   - Structural elements (beams, columns, foundations).
   - Existing utilities (electrical, plumbing, HVAC) if marked.

3. **Ask clarifying questions**
   - What is the goal of the project?
   - Which walls are load-bearing? (Do not assume from a single drawing.)
   - What is the local climate or soil condition?
   - Are there building-code constraints?

4. **Translate into a plan**
   - Convert dimensions into a material takeoff when possible.
   - Identify the logical sequence of work.
   - Flag anything that looks unusual, unsafe, or incomplete.

5. **State limitations**
   - Photos and drawings may not show hidden conditions (wiring inside walls, foundation details, etc.).
   - Structural or load-bearing decisions require a licensed engineer.
   - Do not issue code-compliance rulings from images alone.

## Output format

- Summary of what the image shows.
- Key dimensions and observations.
- Clarifying questions.
- Suggested next steps or project phases.
