---
name: game-bible
description: Use when a game design decision, pillar, rule, constraint, experiment result, or playtest finding needs to be recorded or looked up, when a user says "write that down", "update the design doc", "we decided to cut/add X", or asks "why did we decide...", or when another game skill needs the game's pillars before judging anything.
---

# Game Bible

The bible is the game's memory: one living, version-controlled document holding vision, pillars, rules, constraints, experiments, playtest findings, decisions with rationale, and open questions. Every `game-*` skill reads it before judging and writes to it after deciding. Rationale that is not written is re-argued or lost.

## Locate or create

1. Look for `docs/game-bible.md`, then `GAME-BIBLE.md`, then any file whose heading includes "game bible" or "design pillars". Read it fully before writing.
2. If none exists, offer to create `docs/game-bible.md` from [TEMPLATE.md](TEMPLATE.md). Fill what the user has actually said as fact. Anything the agent inferred or proposed (a vision sentence, pillars drafted by game-concept) is written in but marked `Proposed` until the user confirms it. Every other slot is `TBD`. A bible that presents the agent's guess as the user's decision is worse than an empty one.

## Writing a decision

A decision entry has these slots, all present. A slot the user has not supplied is written as `TBD: ask` so it is visibly missing, never filled by inference.

```
### <Feature or question>: <Decided: add / remove / change / defer>
- Date: <YYYY-MM-DD>   Decided by: <name>
- Why: <the rationale as stated by the person who decided>
- Evidence: <playtest observation, metric, or analog; "none yet" is a valid value>
- Pillar check: <which pillar this reinforces or protects; or which it strains, and why that is accepted>
- Alternatives considered: <what else was on the table and why not>
- Revisit if: <the observable condition that reopens this>
```

When the user gives a decision without a rationale, write the entry now with `Why: TBD: ask` so the decision is not lost, then ask for the rationale in one question and fill it in from the answer. Never fill it from inference.

## Writing other entries

- **Pillar:** one line, a noun phrase a stranger can repeat, plus one sentence on what it rules out.
- **Experiment:** hypothesis, the single variable changed, what was observed, verdict (kept / dropped / inconclusive).
- **Playtest log:** date, who (count and relation to the dev), build, what was tested, what players did (behavior first), what they said (second), issues.
- **Open question or risk:** the question, why it threatens fun, what evidence would settle it.

## Conflict check

Before saving any entry, compare it against the pillars, non-goals, and existing decisions. If it contradicts one, say so at the top of the reply and ask whether the new entry or the old one is right. Do not silently record a contradiction; do not silently refuse one either. The user decides.

## Form

Prose, bullets, and tables. No cryptic shorthand. Newest decisions at the top of their section. Keep the vision page to one screen.
