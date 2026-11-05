---
name: game-bible
description: Use when the user types /game-bible to define a game's north star and pillars, to revisit them, or to record a decision, experiment, playtest, or open question.
disable-model-invocation: true
---

# Game Bible

The game's memory. Its core is the north star, the one sentence every later cut is measured against, and the six slots that hang off it. Every suite skill reads it first and writes through `RECORDING.md` next to this file. Define finds the core; record adds one entry.

## Mode

- No argument, `define`, or no bible found: define.
- Anything else (`/game-bible we cut the shield`): record.

Locate the bible as `RECORDING.md`, section Who writes, says; a bible with no state lines is read per its section Bibles without states.

## Define

**Read first.** Read any existing bible, design doc, pitch, or README. A slot a document answers is drafted from it, marked `Proposed`, and confirmed in one line naming the source. For a game that already has code, the first question is the intended experience, before anything describes what is built, so pillars recover intent.

**Frontier.** Seven slots and nothing else: north star, hook check, pillars, non-goals and constraints, target player, core loop, riskiest assumption. Shapes and recommendation sources: `INTERVIEW.md` next to this file; written form: `TEMPLATE.md`.

**Engine.** Call the Skill tool with skill `grilling`, passing the Brief section of `INTERVIEW.md` followed by the slots read-first settled. If the call fails or the skill is absent, run the same brief inline in `INTERVIEW.md`'s round format.

**Scoped acceptance.** Numbered questions, one recommendation each. "Yes" accepts that one only. The grilling pane takes an answer per question; in the inline fallback, a bare "yes" with several questions pending gets "yes to which number, or all" before anything is accepted. Facts are the agent's job, by reading; web search only on the user's yes. Decisions are the user's.

**Escalation.** A slot still open after two rounds of short questions gets no more. The reply says what it is looking for (`INTERVIEW.md`, section Escalation) and asks the user to write it in their own words, at any length; the remaining slots are derived from that text, each shown as `Proposed` and confirmed as its own question.

**Exit.** Done when all three hold:

1. The north star is one sentence the user wrote or confirmed. It cannot be deferred; escalation continues until the user writes it. If the user stops first, the interview ends paused: the bible carries `North star: TBD (interview paused: <the question>)` and the reply says it is not usable for pillar checks until filled.
2. Every other slot is filled or explicitly deferred as `TBD: <the question that would settle it>`.
3. Each pillar rules out a real feature (from the user's list, or one the agent proposed and the user accepted or rejected), or is deferred with `Rules out: TBD: ask` and listed as unresolved in the exit reply.

**Output.** `docs/game-bible.md` from `TEMPLATE.md`, every agent-drafted slot marked `(Proposed by /game-bible, YYYY-MM-DD)`, including the scope-reality line (stated hours against a comparable shipped game, the agent's estimate). The riskiest assumption is also an Open question and a Planned experiment with `Observed: pending` and `Verdict: pending`. An existing design doc is appended to or linked, never rewritten (`RECORDING.md`, section Rules). The reply reports what was written, where, in which state, and ends with: type `/game-prototype <the question>` to test the assumption.

## Record

Apply `RECORDING.md` in full: locate, read, conflict check, write, then report at the top of the reply what was written, where, in which state. A contradiction with a pillar, a non-goal, or a Decided entry opens the reply with the old entry quoted and one question (is the new entry right or the old one?); the write waits for the answer, and a Proposed replacement carries `Would supersede` with the old entry untouched until it is Decided. With no conflict, the entry is written first, `TBD: ask` in every slot the user did not supply, so a quick "don't forget" survives the conversation ending; then one question for the most important missing slot, `why` first. `Proposed` becomes `Decided` only when the user says so.

## Never

- Write a value the user did not give; the marker is `TBD: ask`.
- Ask a define question about rules, systems, levels, art, or engine.
- Report that something is fun; the Planned experiment tests it.
