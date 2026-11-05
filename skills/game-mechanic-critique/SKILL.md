---
name: game-mechanic-critique
description: Use when the user types /game-mechanic-critique for a verdict on adding, removing, or changing a mechanic, feature, or rule, on a tester's request, or on whether numbers are balanced.
disable-model-invocation: true
---

# Game Mechanic Critique

A verdict on one mechanic, feature, rule, or set of numbers, with the test that reverses it.

## Read first

1. The bible core block, then any entry whose heading or `Tested:` line names the mechanic (grep those lines in the bible and its `docs/game-bible/*.md` archives; never read whole archives). Path: `<git top level, else cwd>/docs/game-bible.md`; fallbacks `GAME-BIBLE.md` at the root, then any file whose heading contains "game bible" or "design pillars". Two or more matches: ask which one and stop. None: say so and name `/game-bible`.
2. The matching section of `GENRES.md` in the `ask-sid` skill directory (the sibling of this skill's directory). Name it; a game matching none says so and uses the general catalog.
3. Anchors in `PRINCIPLES.md`, same directory: P02 Interesting decisions, P07 Every feature serves a pillar, P08 Remove what creates no decision, P11 Emergent vs degenerate. Read only those cited.

## The answer

In the output order of `ask-sid/SKILL.md`, section Answer forms (conflict notice, save report, short form, deliverable, records, hand-off): the short form (Verdict, Lens, Pillar check, Evidence, Test, Confidence; one sentence each, under 120 words), then two lines as the deliverable:

```
Decision created   The choice the player makes because this exists, and its cost. Blank means a convenience, judged on fun per time (P03).
Request behind it  What the asker likely experienced (missed jumps, loss of control, genre expectation) and the smaller change that answers it.
```

Full form (Intent, Analogs, Counterexample, Record) on request, "settle this", or recording. An analog is a named game with what it did and cost; otherwise "none I can verify" and an offer to search.

Asked for a call, the Verdict line is add, remove, change, or defer, unhedged. Half-written code is no argument; stash it on a branch.

## Numbers branch

Entered when the message supplies stats, costs, damage, pick rates, or a table; after the two lines:

1. **Proposed target.** What balanced means for this game, from the pillars, in the genre section's Balance target shape, written as `Proposed target:` before any arithmetic; the user confirms or edits it.
2. **Table.** Every option in comparable units, with a hits-to-kill column against the stated enemy hp (whole hits, never pooled hp: 8 damage into 12 hp is 2 hits) and turns to clear computed turn by turn with every stated side effect applied (degrade, cooldown, cost); each derived figure is checked once against its inputs before it is stated. User numbers are `Given:`, tester behavior `Observed:` or "none reported", and every gap the arithmetic fills an `Assumption:` line under the table.
3. **Dominance.** Which option wins, by how much, through which single lever: raw output, risk avoidance, access timing, economy funnel. Often the cause is broken alternatives, not the favorite.
4. **Emergent or degenerate** (P11). Emergent: skilled play others can see and counter. Degenerate: a decision collapsed into a chore. "Everyone picks X" alone may be habit or discoverability; choice against outcome per run settles it. Without logging: tally pick and result per run, and ask testers whether they knew the alternatives.
5. **Feedback loops.** Each labelled positive or negative, and whether the snowball is intended and bounded.
6. **Changes, ranked.** Each touches one number or rule and names its predicted move on the target and the adopting metric (pick rate, win rate by pick). Viable alternatives rank above nerfing the favorite. Double or halve to find the region, then narrow (Meier-attributed, unverified `[outside report]`). One change per build.
7. **Simulation offer.** Scripted strategies against the numbers find dominant lines and dead options, not enjoyment; only testers show enjoyment.

## Closing lines

Every answer ends, in order, with:

- The `Proposed` Decision entry, shown in full per `RECORDING.md` in the `game-bible` skill directory, `TBD: ask` in unsupplied slots. In the numbers branch, also a `Planned` Experiment for the top-ranked change; each yes writes one entry.
- The hand-off, last: type `/game-playtest` to test it, or `/game-release` when the question is the calendar.

## Never

- Invents an analog, a metric, or a measurement.
- Calls something fun or balanced from the table alone; Test names what players must show.
- Writes to the bible before a yes, or sets `Decided`.
