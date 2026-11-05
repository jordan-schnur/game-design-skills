# Game Bible: <Working title>

Living document. Every design judgement reads this first and writes here after, following `RECORDING.md` in the `game-bible` skill. Newest entries at the top of each section. Anything marked Proposed is a draft the agent made from what the user said: a working assumption until the user marks it Decided. `TBD: ask` is a slot the user has not filled; `pending` is a slot its state does not yet allow.

When a section passes about fifty lines, its older entries move to `docs/game-bible/<section>.md` and the section keeps its newest entry under the line `Older entries: [docs/game-bible/<section>.md](game-bible/<section>.md)`.

## Core

**North star:** <One sentence a stranger can repeat: the experience the game delivers and why someone picks it over the closest alternative.> (Proposed by /game-bible, YYYY-MM-DD)

**Hook check:** too similar to <game> unless the twist is <twist>. Closest games: <two or three>, or "none I can verify". (Proposed by /game-bible, YYYY-MM-DD)

**Pillars** (three to five; each rules something out)

1. <Noun phrase>. Rules out: <a real feature this pillar excludes>. (Proposed by /game-bible, YYYY-MM-DD)
2. <Noun phrase>. Rules out: <feature>. (Proposed by /game-bible, YYYY-MM-DD)
3. <Noun phrase>. Rules out: <feature>. (Proposed by /game-bible, YYYY-MM-DD)

**Non-goals and constraints**

- Non-goal: <what the game will not do>
- Constraint: team <n>, <hours> per week, <platform>, <deadline>

**Target player:** <who>, plays <what they play now>, wants <what they want from this>. (Proposed by /game-bible, YYYY-MM-DD)

**Core loop**

- Micro: <the action repeated every few seconds>
- Loop: <the cycle of a session or run>
- Meta: <what carries across sessions>

**Riskiest assumption:** <the belief that, if false, kills the concept>. Tested by `/game-prototype <the question>`. Tracked below as Open question "<question>" and Planned experiment "<hypothesis>". (Proposed by /game-bible, YYYY-MM-DD)

When the user confirms a core slot, its mark becomes `(Decided by <name>, YYYY-MM-DD)`. A deferred slot reads `TBD: <the question that would settle it>`.

## Rules and systems

Stats, economy, physics, progression philosophy. Each rule one line, with the pillar it serves.

- <Rule>. Serves: <pillar>. (Proposed by <who>, YYYY-MM-DD)

## Progression and difficulty

How challenge and content unfold; what the player learns at each stage.

- <Stage>: <what the player meets and learns>. (Proposed by <who>, YYYY-MM-DD)

## Decisions

### <Feature>: <add / remove / change / defer>
- State: Proposed (by <skill or name>, YYYY-MM-DD)
- Date: YYYY-MM-DD   Decided by: pending
- Why: TBD: ask
- Evidence: none yet
- Pillar check: <pillar served or protected, marked (Proposed) when the pillar is Proposed>; or <pillar strained, and why that is accepted>
- Alternatives considered: TBD: ask
- Revisit if: <the observable condition that reopens this>
- Supersedes: none

State line variants:

- `State: Decided (by <name>, YYYY-MM-DD)` with `Decided by: <name>` and `Supersedes: "<heading>" (YYYY-MM-DD)` or `none`
- `State: Superseded (by "<heading>", YYYY-MM-DD)`; the rest of the entry stays as written

## Experiments

### <Hypothesis, as a sentence that can be wrong>
- State: Planned (by <skill or name>, YYYY-MM-DD)
- Variable changed: <the one thing that differs between A and B>
- Gate or metric: <the observation and the result that reverses the hypothesis>
- Observed: pending
- Verdict: pending

State line variants:

- `State: Running (since YYYY-MM-DD)`; Observed and Verdict stay `pending`
- `State: Done (YYYY-MM-DD, build <id>, <n> testers)`; Observed is what the user reported, Verdict is `kept`, `dropped`, `inconclusive`, or `TBD: ask`

## Playtest log

### YYYY-MM-DD, build <id>, <n> testers (<relation to the developer>)
- Tested: <the question this session was run to answer>
- Players did: <behavior, counted where it can be: deaths, quits, retries, positions>
- Players said: <their words, marked as testimony>
- Issues: <bugs and blockers, separate from design findings>

## Open questions

### <Question>
- State: Open (by <skill or name>, YYYY-MM-DD)
- Threatens: <the pillar, or the fun itself>
- Settles when: <the evidence that would answer it>
- Settled by: pending

State line variant:

- `State: Settled (YYYY-MM-DD)` with `Settled by: "<heading>" (YYYY-MM-DD)`
