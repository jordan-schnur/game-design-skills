---
name: game-prototype
description: Use when the user types /game-prototype to plan the first playable test of a core idea or a new mechanic, or asks what to build first.
disable-model-invocation: true
---

# Game Prototype

One question from the riskiest assumption, answered by the least build that can; the gate written before building, in the genre's shape.

## Reads

1. **The bible's core block**, riskiest assumption first. At `<git top level, else cwd>/docs/game-bible.md`; fallbacks `GAME-BIBLE.md` at the root, then any file whose heading contains "game bible" or "design pillars". Two or more matches: ask which and stop. None: say so, name `/game-bible`, and draft the riskiest assumption, labelled as such. Then any entry whose heading or `Tested:` line names the feature or question under test (grep those lines in the bible and its `docs/game-bible/*.md` archives; never whole archives).
2. **The matching section of `GENRES.md`** in the `ask-sid` skill directory (the sibling of this skill's directory). Name it; a game matching none says so and uses the catalog alone.
3. **Catalog anchors**: P15 Core fun before art, P04 Movement itself should be fun, P02 Interesting decisions. Entries: `PRINCIPLES.md` in the `ask-sid` skill directory.

## Output

Seven parts, in the output order of `ask-sid/SKILL.md`, section Answer forms (conflict notice, save report, short form, deliverable, records, hand-off). Tables and bullets; full form on "settle this" or "record this".

1. **Short form.** Verdict, Lens, Pillar check, Evidence, Test, Confidence, per `ask-sid/SKILL.md`, section Answer forms: one sentence each, under 120 words together. Lens names the genre section.
2. **Question.** One sentence from the riskiest assumption, answerable by watching someone play.
3. **Gate.** Pass and fail, each an observation in the genre section's Prototype gate shape; where that shape includes what the player can say (minimalist: a loss the player can explain), testimony is in the gate:

| Genre section | Gate shape |
|---|---|
| Systems, strategy, roguelike | A decision that changes a run: testers in one situation choose differently and say what they weighed |
| Feel, action, platformer | The core action in isolation: one verb, one obstacle, placeholder art, replayed unprompted |
| Minimalist systems | One rule set whose pressure grows with no content added; a loss the player can explain |
| No match | The Question itself, with pass and fail observations |

4. **Minimum build.** The pieces the gate needs, every tuning number visible on screen, then the exclusions for this hypothesis, each named, with what brings it back (a theme-first pillar brings presentation in; a two-system question builds both). In the feel section the cheap feedback layer (a sound per action, hit-stop) is in the minimum: a mute action reads worse than it plays.
5. **Tuning plan.** The parameters governing the gate, changed one at a time, each kept value logged with why. Double or halve before nudging (Meier-attributed, unverified `[outside report]`).
6. **Observation plan.** Who plays (one to five friends, not the developer alone), what to watch (the genre's Playtest signals), the no-logging substitute per metric: screen recording for positions and retries, a tally sheet for counts, asking where they stopped for session length; non-leading questions after play.
7. **Record.** A Planned experiment entry shown in full, per `RECORDING.md` in the `game-bible` skill directory: `State: Planned (by /game-prototype, <date>)`, gate or metric from part 3, `Observed: pending`, `Verdict: pending`. Written on the user's yes.

## When the gate fails

Three rungs, in order: tune within the mechanic (parameters, feedback, camera), swap it for its nearest sibling (slope momentum for dash momentum), pivot. Each move names its rung and what exhausted the previous. When the gate says the concept is dead (the core is tolerated at every parameter set, or no decision moves the run), go straight to pivot and say so. Sunk cost skips no rung.

## Hand-offs

Last line in the shape of `ask-sid/SKILL.md`, section Answer forms. Default: build part 4's minimum build with its exclusions, run it with part 6's testers and tally sheet; with the tallies and quotes, `/game-playtest <what they did and said>`.

| Type | When |
|---|---|
| `/game-mechanic-critique` | A verdict on one mechanic before building |
| `/game-release` | The build cannot fit the stated cost |
| `/game-bible` | No bible exists |

## Never

- Reports that the core is fun; the gate observation does.
- Writes to the bible without a yes to the entry shown.
