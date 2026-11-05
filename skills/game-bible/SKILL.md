---
name: game-bible
description: Use when the user types /game-bible to define a game's north star and pillars, to revisit them, or to record a decision, experiment, playtest, or open question.
disable-model-invocation: true
---

# Game Bible

The bible is the game's memory. Its core is the north star: the one sentence every later cut is measured against, and the six slots that hang off it. Every suite skill reads it before judging and writes to it through `RECORDING.md` next to this file. Two modes: define finds the core; record adds one entry.

## Mode

- No argument, `define`, or no bible found: define.
- Anything else (`/game-bible we cut the shield`): record.

Locate the bible as `RECORDING.md`, section Who writes, says. A bible with no state lines is read as its section Bibles without states says.

## Define

**Read first.** Read any existing bible, design doc, pitch, or README. Every slot a document answers is drafted from it, marked `Proposed`, and confirmed in one line that names the source, rather than asked. For a game that already has code, the first question is the intended experience, asked before anything describes what is built, so the pillars recover intent instead of rationalizing what got made.

**Frontier.** Seven slots and nothing else: north star, hook check, pillars, non-goals and constraints, target player, core loop, riskiest assumption. Shapes and recommendation sources are in `INTERVIEW.md` next to this file; the written form is in `TEMPLATE.md`. Rules, systems, levels, art, and engine wait for the tools.

**Engine.** Call the Skill tool with skill `grilling`, passing as the argument the Brief section of `INTERVIEW.md` followed by the slots read-first settled. If the call fails or the skill is absent, run the same brief inline in the round format at the end of `INTERVIEW.md`: every open slot as a numbered question titled by its slot, one recommendation, two or three options, then wait.

**Scoped acceptance.** Each question carries one recommendation. "Yes" accepts that one only; other open slots keep their own questions. Facts are the agent's job, found by reading, with web search only on the user's yes. Decisions are the user's.

**Escalation.** A slot asked in two rounds of short questions and still open gets no more short questions. The reply says what it is looking for (for the north star: the one sentence every later cut is measured against) and asks the user to write it in their own words, at any length. The remaining slots are derived from that text, each shown as `Proposed` and confirmed as its own question.

**Exit.** Done when all three hold:

1. Every slot is filled or explicitly deferred as `TBD: <the question that would settle it>`.
2. The north star is one sentence.
3. Each pillar has ruled out a real feature, from the user's list or one the agent proposed and the user accepted or rejected.

Deferred slots are legitimate; silent gaps are not.

**Output.** `docs/game-bible.md` from `TEMPLATE.md`, every agent-drafted slot marked `(Proposed by /game-bible, YYYY-MM-DD)`. Non-goals and constraints carries one scope-reality line: the stated hours against a comparable shipped game's scope, marked as the agent's estimate. The riskiest assumption is also written as an Open question and a Planned experiment with `Observed: pending` and `Verdict: pending`. An existing design doc is appended to or linked, never rewritten (`RECORDING.md`, section Rules). The reply reports what was written, where, in which state, and ends with: type `/game-prototype <the question>` to test the assumption.

## Record

Apply `RECORDING.md` in full: locate, read, conflict check, write, then report at the top of the reply what was written, in which section, in which state. The entry is written first, with `TBD: ask` in every slot the user did not supply, so a quick "don't forget" survives the conversation ending. Then one question for the most important missing slot, `why` first, and the answer filled in. A contradiction with a pillar, a constraint, or a Decided entry opens the reply with the old entry quoted and one question: is the new entry right or the old one? `Proposed` becomes `Decided` only when the user says so.

## Never

- Write a value the user did not give as if they had; the marker is `TBD: ask`.
- Ask a define question about rules, systems, levels, art, or engine.
- Report that something is fun; players show that, and the Planned experiment tests it.
