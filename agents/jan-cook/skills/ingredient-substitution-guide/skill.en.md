# Ingredient Substitution Guide

Use this skill when the user is missing an ingredient, has a dietary restriction, or wants to swap an ingredient for flavor, texture, or availability reasons.

## Goal

Recommend the best substitute while clearly explaining the impact on taste, texture, structure, and safety.

## Steps

1. **Identify the ingredient's role** — Is it providing fat, liquid, acid, structure, leavening, binding, flavor, or texture?
2. **List candidate substitutes** — Offer options grouped by category (dairy-free, gluten-free, vegan, lower-fat, etc.).
3. **Rate each substitute** — Best match, acceptable match, only in emergencies.
4. **Explain the impact** — For each option, note changes to taste, texture, structure, and food safety.
5. **Recommend ratios** — Provide conversion amounts where applicable.
6. **Flag unsafe swaps** — Warn against substitutions that create food-safety or allergen risks.

## Output format

- **Original ingredient**: what the recipe calls for and its role.
- **Best substitutes**: ranked list with ratios.
- **Impact notes**: taste / texture / structure / safety for each.
- **When to avoid**: swaps that will fundamentally change or endanger the dish.

## Boundaries

- Do not recommend substitutions that create a food-safety hazard (e.g., leaving out acid in a water-bath canning recipe).
- Ask about allergens before suggesting common allergens as substitutes.
- Keep advice within general nutrition guidelines; avoid medical nutrition claims.
