# Local Price Scanner (Moldova)

Use this skill when the user wants to compare material or tool prices from local Moldovan stores.

## Supported sources

| Store | URL | Type | Best for |
|---|---|---|---|
| Supraten | https://supraten.md/ | Construction superstore | Building materials, finishes, tools, plumbing |
| Volta | https://volta.md/ | Electrotechnical store | Electrical supplies, cables, switches, power tools |
| 999.md | https://999.md/ru/category/construction-and-repair | Classifieds marketplace | New/used tools, materials, services, bargains |
| Construct.md | https://construct.md/ | Construction marketplace | Materials, finishes, companies, contractors |
| Remont.md | https://remont.md/ | Construction marketplace | Materials, finishes, companies, contractors |

## Search strategy

1. **Start with the exact product name** in Romanian or Russian.
2. **Use site-specific web-search queries** to narrow results:

   - Supraten: `site:supraten.md <product> цена` or `site:supraten.md <product> MDL`
   - Volta: `site:volta.md <product> pret` or `site:volta.md <product> цена`
   - 999.md: `site:999.md/ru/category/construction-and-repair <product> цена`
   - Construct.md: `site:construct.md <product> pret`

3. **If no results**, try synonyms or broader categories:
   - "гипсокартон" → "gips carton" → "placi de gips-carton"
   - "шуруповерт" → "surubelnita electrica" → "bormasina"

4. **Filter and prioritize**
   - Prefer in-stock items.
   - Check unit of measure (per piece, per m², per kg, per linear meter).
   - Note delivery options and store location when relevant.
   - For 999.md and Construct.md, note seller rating/reviews if visible.

## Output format

Present findings in a markdown table:

| Product | Store / Seller | Price (MDL) | Unit | Availability | Notes |
|---|---|---|---|---|---|
| ... | ... | ... | ... | ... | ... |

Then add:
- **Best store price**: lowest reliable price from Supraten or Volta.
- **Best marketplace price**: lowest price from 999.md or Construct.md (note seller risk).
- **Recommendation**: where to buy based on price, reliability, and urgency.
- **Fallback**: what to search for next if exact matches were not found.

## Efficiency rules

- Use web search; do not attempt to browse pages manually unless search results are insufficient.
- Limit results to 5–10 listings per store to avoid overload.
- Always confirm the currency is MDL; convert only if the user asks.
- If prices are missing, say so clearly rather than guessing.
