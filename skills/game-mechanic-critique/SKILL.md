---
name: game-mechanic-critique
description: Use when deciding whether to add, remove, or change a specific game mechanic, feature, enemy, item, or rule: "should I add a double jump", "a playtester wants X", "is this mechanic a good idea", "give me three versions of this mechanic", or when a feature request arrives from anyone and needs a design verdict.
---

# Game Mechanic Critique

Give a decisive verdict on one mechanic, in the verdict shape, with a test attached. Call the Skill tool with "game-design-principles" and read the bible's pillars before judging.

## Output

The verdict shape from game-design-principles, with these specifics:

1. **Intent.** What the mechanic is for, in the player's experience, and the pillar it serves or strains. If no pillar is served, that is usually the verdict.
2. **Decision it creates.** What choice the player makes because this exists, and what it costs them. A mechanic that creates no decision and costs nothing is a convenience, and conveniences are judged on fun per time, not on depth.
3. **The request behind the request.** When someone asked for the mechanic, name what they probably experienced that made them ask (missed jumps, felt out of control, expected it from the genre), and whether a smaller change answers that experience.
4. **Principle.** By name, from the catalog, with its counterexample considered.
5. **Analogs.** Two or more shipped games that faced this exact choice. What each did and what it cost or bought them.
6. **Verdict.** Add, remove, change, or defer, in one or two sentences. When the user asked for decisiveness, give it. Half-written code is not an argument for shipping it; stash it on a branch.
7. **Test.** One variable, one observation, one result that would reverse the verdict. If the mechanic ships, what to log.
8. **Confidence.** High, medium, or low, with the reason, including what the agent has not seen (the actual levels, the actual feel).
9. **Record.** A decision entry for the bible, through the Skill tool with "game-bible".

## Variations on request

When asked for versions of a mechanic ("give me three jumps"), produce each as: parameters or rules, expected feel, the analog it resembles, what it would strain. Then recommend one against the pillars, with confidence.

## Checks before finishing

- The verdict references a pillar by name from the bible, or says the bible has none and recommends writing them.
- The test names the single variable and the observation.
- Confidence is stated as a word, not only as a caveat paragraph.
