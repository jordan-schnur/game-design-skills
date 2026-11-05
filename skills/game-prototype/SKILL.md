---
name: game-prototype
description: Use when the user types /game-prototype to plan the first playable test of a core idea or a new mechanic, or asks what to build first.
disable-model-invocation: true
---

# Game Prototype

A prototype answers one question with the least build that can answer it. The question comes from the bible's riskiest assumption; the gate is written before building, in the shape the genre gives it.

## Reads

1. **The bible's core block**, riskiest assumption first. The bible is `<git top level, else cwd>/docs/game-bible.md`; fallbacks are `GAME-BIBLE.md` at the root, then any file whose heading contains "game bible" or "design pillars". Two or more matches: ask which. None: say so, name `/game-bible`, and draft the riskiest assumption as a labelled working assumption.
2. **The matching section of `GENRES.md`** in the `ask-sid` skill directory (the sibling of this skill's directory). Name the section used. A game matching none says so and reasons from the catalog alone.
3. **Catalog anchors**: P15 Core fun before art, P04 Movement itself should be fun, P02 Interesting decisions. Index and full entries: `PRINCIPLES.md` in the `ask-sid` skill directory.

## Output

Seven parts, in order. Tables and bullets; detail on request.

1. **Short form.** Verdict, Lens, Pillar check, Evidence, Test, Confidence, per `ask-sid/SKILL.md`, section Answer forms. Lens names the genre section.
2. **Question.** One sentence from the riskiest assumption, answerable by watching someone play. "Does sustaining speed through a room stay satisfying with no art and no enemies?"
3. **Gate.** Pass and fail, each an observation of what testers do. The shape is the genre section's Prototype gate field:

| Genre section | Gate shape |
|---|---|
| Systems, strategy, roguelike | A decision that changes a run: testers in one situation choose differently and say what they weighed |
| Feel, action, platformer | The core action in isolation: one verb, one obstacle, placeholder art, replayed unprompted |
| Minimalist systems | One rule set whose pressure grows with no content added; a loss the player can explain |
| No match | The Question itself, with its pass and fail observations |

Isolating one action is the feel section's shape, not every game's; a prototype whose question needs two interacting pieces builds both.

4. **Minimum build.** The pieces the gate needs, every tuning number visible on screen, then an exclusion list (art, menus, saves, secondary mechanics) that stays excluded. In the feel section the cheap feedback layer (a sound per action, hit-stop) is part of the minimum: a mute action reads worse than it plays.
5. **Tuning plan.** The parameters that govern the gate, changed one at a time, each kept value logged with why. Double or halve before nudging, noted as a heuristic attributed to Sid Meier, to verify before citing it as his.
6. **Observation plan.** Who plays (the developer counts, and is not enough; one to five friends), what to watch (the genre section's Playtest signals), and the no-logging substitute per metric: a screen recording for positions and retries, a tally sheet for counts, asking where they stopped for session length. Non-leading questions, after play.
7. **Record.** A Planned experiment entry shown in full, per `RECORDING.md` in the `game-bible` skill directory (skeleton in `TEMPLATE.md` next to it): hypothesis as heading, `State: Planned (by /game-prototype, <date>)`, variable changed, gate or metric from part 3, `Observed: pending`, `Verdict: pending`. Written on the user's yes to that entry.

## When the gate fails

Three rungs, in order: tune within the mechanic (parameters, feedback, camera), swap it for its nearest sibling (slope momentum for dash momentum), pivot the concept. Each move names its rung and what exhausted the previous one. One exception: when the gate result itself says the concept is dead (the core is tolerated at every parameter set, or no decision moves the run), say so and go straight to pivot. Sunk cost does not skip a rung; half-written code is not an argument.

## Hand-offs

One line after the short form: type `/game-...`, then one reason.

| Type | When |
|---|---|
| `/game-mechanic-critique` | A verdict on a specific mechanic is wanted before building |
| `/game-playtest` | Results are in |
| `/game-bible` | No bible exists |

## Never

- Reports that the core is fun; the gate observation says it, or does not.
- Writes to the bible without a yes to the entry shown.
