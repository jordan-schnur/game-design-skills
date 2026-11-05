---
name: game-mechanic-critique
description: Use when the user types /game-mechanic-critique for a verdict on adding, removing, or changing a mechanic, feature, or rule, on a tester's request, or on whether numbers are balanced.
disable-model-invocation: true
---

# Game Mechanic Critique

A verdict on one mechanic, feature, rule, or set of numbers, in the panel's short form, with the test that would reverse it.

## Read first

1. The bible core block, then every entry naming the mechanic. Path: `<git top level, else cwd>/docs/game-bible.md`; fallbacks `GAME-BIBLE.md` at the root, then any file whose heading contains "game bible" or "design pillars". Two or more matches: ask which. None: say so and name `/game-bible`.
2. The matching section of `GENRES.md` in the `ask-sid` skill directory (the sibling of this skill's directory). Name it; a game matching none says so and uses the general catalog.
3. The anchors in `PRINCIPLES.md` in that directory: P02 Interesting decisions, P07 Every feature serves a pillar, P08 Remove what creates no decision, P11 Emergent vs degenerate. Read the one or two the answer cites.

## The answer

The short form defined in `SKILL.md` in the `ask-sid` skill directory, section Answer forms: Verdict, Lens, Pillar check, Evidence, Test, Confidence. Then two lines:

```
Decision created   The choice the player makes because this exists, and its cost. Blank means a convenience, judged on fun per time (P03), not depth.
Request behind it  What the asker likely experienced (missed jumps, felt out of control, genre expectation) and the smaller change that answers it.
```

Full form (Intent, Analogs, Counterexample, Record) on request, on "settle this", or when recording. An analog is a game the panel can name with what it did and what that cost; otherwise "none I can verify" and an offer to search.

Asked for a call, the Verdict line is add, remove, change, or defer, with no hedge. Half-written code is not an argument for shipping; stash it on a branch.

## Numbers branch

Entered when the message supplies stats, costs, damage, HP, pick rates, or a table. A question without numbers gets the answer above only. After the short form and the two lines:

1. **Proposed target.** What balanced means for this game, from the pillars, in the shape of the genre section's Balance target field. Written as `Proposed target:` before any arithmetic; the user confirms or edits it.
2. **Table.** Every option in comparable units (damage per second, hits to kill, turns to afford, effective HP after mitigation). Numbers the user supplied are `Given:`; what testers did is `Observed:` or "none reported"; every gap the arithmetic fills is an `Assumption:` line under the table.
3. **Dominance.** Which option wins, by how much, through which single lever: raw output, risk avoidance, access timing, or economy funnel. Often the cause is the broken alternatives, not the favorite.
4. **Emergent or degenerate** (P11). Emergent: skilled play others can see and counter. Degenerate: a decision collapsed into a chore. "Everyone picks X" alone may be habit or discoverability; choice against outcome per run settles it. Without logging: a tally of pick and result per run, and asking testers whether they knew the other options.
5. **Feedback loops.** Each labelled positive or negative, with whether the snowball is intended and bounded.
6. **Changes, ranked.** Each touches one number or rule and names its predicted move on the target and the metric that adopts it (pick rate, win rate by pick). Making alternatives viable ranks above nerfing the favorite. Double or halve to find the region, then narrow. One change per build.
7. **Simulation offer.** Scripted strategies against the numbers find dominant lines and dead options. Its limit: it cannot tell whether winning with the dominant line is enjoyable; only testers show that.

## Closing lines

Every answer ends with:

- The `Proposed` Decision entry, shown in full per `RECORDING.md` in the `game-bible` skill directory, `TBD: ask` in slots the user did not supply. In the numbers branch, also a `Planned` Experiment for the top-ranked change. Written on a yes; each yes accepts one entry.
- The next command: type `/game-playtest` to test it; type `/game-release` when the question is whether it fits the calendar.

## Never

- Invents an analog, a metric, or a measurement.
- Calls something fun or balanced from the table alone; the Test line names what players must show.
- Writes to the bible before a yes, or sets `Decided`.
