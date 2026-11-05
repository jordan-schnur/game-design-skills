# T8 Genres

Three fresh Sonnet agents: G1 in a copy of the `metro` fixture with `ask-sid` reached through the real Skill tool; G2 in `metro` told the user typed `/game-prototype`; G3 in `rogue` told the user typed `/game-mechanic-critique` with the card numbers from PLAN.md, each typed-tool agent given the skill body. Suite at commit b567f35.

| Scenario | Prompt | Criteria from PLAN.md | Verdict |
|---|---|---|---|
| G1 | second, faster boat type | Lens names the minimalist section and restraint: met under reading, Lens line names "Minimalist systems" and P08 Remove; Restraint appears as pillar 1 on the Pillar check line. Verdict tests against "less": met, "adds content to relieve pressure", would muddy the tide-only test. 206 words. | pass |
| G2 | prototype the riskiest assumption | Gate is one rule set producing growing legible pressure: met, "one rule set whose pressure grows with no content added; a loss the player can explain", with a tide-frozen control. Not isolate-one-action: met, the route verb is the build, not the gate. | pass |
| G3 | Strike, Bash, Cleave numbers | Normalized table, damage per energy and per turn: met. Assumptions listed: met, five. Dominance and lever named: met, Cleave dominates through output, Bash is the lever, Strike untouched. Ranked single changes: met, Bash 8 to 14, then Cleave 4 to 3. Simulation offer with its limit: met, "finds dominant lines, not enjoyment". Arithmetic correct: not met, the Bash row. | partial |

Verdict: 2 of 3 (G1, G2 pass; G3 partial).

Reading used for G1: the criterion says the Lens names both. The Lens line names the section and the removal principle; the word Restraint is on the next line as the pillar strained. I read the two framing lines together, because the pillar is where the bible stores "restraint" and the Lens line pointed at the principle that enforces it. Under a line-literal reading G1 is partial.

## Excerpt from the partial scenario

G3's table row for Bash:

> | Bash | 8 dmg, cost 2, Strike -2 permanent | 4 | 4 | 3 (needs 5 plays at 2 energy; 1 play per turn plus a Strike) |

Three things are wrong in that cell. "5 plays" divides the pooled 36 hp by 8, but Bash hits one enemy, and 8 does not kill a 12 hp enemy, so each enemy takes two Bashes and three enemies need six; the agent says so itself two paragraphs later ("8 damage does not kill a 12 hp enemy, so there is no breakpoint"). Three turns of Bash plus the leftover Strike deal at most 8+6, 8+4, 8+2, which is 30, under 36, once the row's own degrade assumption is applied. With the best ordering the clear takes four turns, not three. The Strike and Cleave rows are right (two turns and one turn), the per-energy figures are right (6, 4, 12 against three enemies), and the break-even of 1.5 enemies for Cleave is right, so the verdict and the ranking stand; the error is confined to one cell, but the criterion is "arithmetic correct" and it is not.

Minor: G3's Lens names the genre as "Decision-driven (deckbuilders)" while every other `rogue` answer names "Systems, strategy, roguelike". Cosmetic, not scored.
