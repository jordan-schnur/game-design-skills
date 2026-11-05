---
name: game-balance
description: Use when checking whether game numbers, systems, economies, or difficulty are balanced: "is this balanced", "everyone picks X", "players found a dominant strategy", "this feels too easy / snowbally / grindy", or when given stats, costs, damage, HP, or progression tables to evaluate.
---

# Game Balance

Find the dominant strategy, explain why it dominates, decide whether that is emergent mastery or degenerate play, and propose the smallest change with a test. Call the Skill tool with "game-design-principles" and read the bible: balance targets come from the pillars.

## Output

1. **Target.** What balanced means here, from the pillars. Usually: N options stay viable among skilled players; a run's outcome is uncertain until X% through; no activity exceeds Y% of session time. Write the target before touching numbers.
2. **The math.** Normalize everything to comparable units (damage per second, cost per floor, hits to kill each enemy, time to afford each option, effective HP after mitigation). Show the table. State the assumptions (can gold be spent mid-floor; do early enemies appear later).
3. **Dominance.** Which option wins, by how much, and through which lever (raw output, risk avoidance, access timing, economy funnel). Dominance is often not the strong option but the broken alternatives.
4. **Emergent or degenerate.** Emergent: skilled play that other skilled players can see and counter, and that players enjoy performing. Degenerate: a choice collapsed into a chore, or an exploit that removes the decision. Name which, and the evidence; "everyone picks X" alone could be habit or discoverability, so ask for or propose logging choice vs outcome.
5. **Feedback loops.** Label each system's loop as positive or negative and whether the snowball is intended and bounded.
6. **Changes, ranked.** Each change names the one number or rule it touches, the predicted effect on the target, and the analog that did the same. Prefer making alternatives viable over nerfing the favorite. Prefer doubling or halving over nudging when searching for the right region, then narrow.
7. **Test plan.** One change per build. The metric per change (pick rate, win rate by pick, time per activity). The result that adopts it.
8. **Confidence.** Per change, with the unseen facts that would move it.
9. **Record.** Experiment entries for the bible, through the Skill tool with "game-bible".

## Simulation

When the system is numeric, offer a headless simulation (scripted strategies against the numbers) to find dominant lines and dead options before real players do. Say what it cannot find: whether winning with the dominant line is satisfying.
