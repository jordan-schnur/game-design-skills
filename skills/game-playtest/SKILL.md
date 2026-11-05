---
name: game-playtest
description: Use when the user types /game-playtest to interpret what testers did or said, to plan a playtest, or to design a test of one change.
disable-model-invocation: true
---

# Game Playtest

Turns what one to five testers did and said into a hypothesis, an experiment, and a bible entry. No telemetry assumed; every observation step names its substitute.

## Reads

1. **The bible.** `<git top level, else cwd>/docs/game-bible.md`; fallbacks `GAME-BIBLE.md` at the root, then any file whose heading contains "game bible" or "design pillars". Two or more matches: ask which. None: say so, name `/game-bible`, run on the report with Intent assumed. Core block and latest Playtest entries are the Evidence line.
2. **The genre section** of `GENRES.md` in the `ask-sid` skill directory (the sibling of this skill's directory). Its Playtest signals field says what to count; its Testimony weight field, how words weigh.
3. **P16 Measure behavior, not opinions** and **P12 Ramp challenge with skill** in `PRINCIPLES.md`, same directory.

## Reply

After a conflict notice when there is one, the short form (Verdict, Lens, Pillar check, Evidence, Test, Confidence; definitions in `ask-sid/SKILL.md`, section Answer forms; each line one or two sentences, under 150 words together), then, in order:

1. **Intent.** The feeling the moment was built for and its pillar, quoted from the bible, or assumed and marked so.
2. **Players did, then players said.** Tester count and relation first. Behavior in the genre's signal shape, counted. Then their words, quoted. Behavior says where; words say which: obligation, confusion, or enjoyment. Words are the tiebreaker, and equal to behavior in the minimalist genre, where a mismatch is the finding.
3. **Gap.** Intent against behavior in one sentence: "Intended a tense ramp; two of five quit at the same screen." Two of five is a reason to look at that screen: the count locates the observation, the observation finds the cause.
4. **Causes.** Each with the observation that confirms it, made without logging. For difficulty: goal unclear, execution too demanding, an untaught demand (P12), a retry loop too long, a bug or skip.
5. **Hypothesis.** One falsifiable sentence before any change: "a practice room before the hazard brings quits at level 3 from two of five to zero of five."
6. **Experiment.** One variable. One to five testers means within-subjects: the same testers on the changed build, learning effect named (a second run is easier whatever changed). With four or five, half play the changed build first, separating order from change.
7. **Questions.** Asked after play, before the feature is named: "where did you stop, and what were you doing", "what did you do because you felt you had to", "what would you cut".
8. **Decision rule.** The count that adopts the change, the count that discards it, the result that means look again. Counts, not percentages; a cause read from counts alone is a guess, said in Confidence.
9. **Record.** A Playtest entry per `RECORDING.md` in the `game-bible` skill directory, shown in full, tester count and relation in the heading. The experiment as a `Planned` Experiment entry; each written on its own yes.

Planning before anyone has played: parts 2 and 3 carry the latest Playtest entries, or `none yet`; the gap is the question the session answers. Full form on "settle this" or "record this".

## Observing without telemetry

| To know | Substitute |
|---|---|
| Deaths, quits, stalls | Tester screen-records (a propped phone is enough), or the developer tallies by section |
| Retries, options chosen | A tally sheet: one row per section or option, one mark per attempt or run |
| Session length, turn the run was decided | A clock in the recording, or the tester calls the time at each loss |
| Where they stopped and why | Ask within the hour: "where did you stop, and what were you doing" |

## Hand-offs

The reply's last line: type `/game-...`, then one reason.

- Cause is numbers (a stat, cost, or curve): `/game-mechanic-critique`, the numbers branch.
- Cause is the core (the verb holds no attention): `/game-prototype`, the gate before the next build.

## Never

- Reports that something is fun; players show it.
- Invents a count, position, or quote; a report without numbers gets the question that produces them.
- Writes to the bible without a yes to an entry shown in full.
