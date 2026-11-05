---
name: game-bible
description: Use when the user types /game-bible to define a game's north star and pillars, to revisit them, or to record a decision, experiment, playtest, or open question.
disable-model-invocation: true
---

# Game Bible

The game's memory. Its core is the north star, the sentence every later cut is measured against, and the six slots that hang off it. Every suite skill reads it first and writes through `RECORDING.md`, next to this file.

## Mode

- No argument, `define`, or no bible found: define.
- Anything else (`/game-bible we cut the shield`): record.

Locate the bible per `RECORDING.md`, section Who writes (two or more matches: ask which one and stop); a bible without state lines is read per its section Bibles without states.

## Define

**Read first.** Read any existing bible, design doc, pitch, or README; a slot a document answers is drafted from it as `Proposed` and confirmed in one line naming the source. For a game with code, the first slot question is the intended experience, before any description of what is built, so pillars recover intent.

**Name.** The first question, asked once: what name goes on decisions. None given means `TBD: ask`; never taken from git config, the file system, or the environment.

**Frontier.** Seven slots and nothing else: north star, hook check, pillars, non-goals and constraints, target player, core loop, riskiest assumption. Shapes and recommendation sources: `INTERVIEW.md`; written form: `TEMPLATE.md`; both next to this file.

**Engine.** Call the Skill tool with skill `grilling`, passing the Brief section of `INTERVIEW.md` followed by the slots read-first settled. If the call fails or the skill is absent, run the brief inline in `INTERVIEW.md`'s round format.

**Scoped acceptance.** Numbered questions, one recommendation each. "Yes" accepts that one only, as `Proposed`; a slot in the user's own words is `Decided` (`RECORDING.md`, section Rules, Core slot marks). In the inline fallback, a bare "yes" with several questions pending gets "yes to which number, or all". Facts are the agent's job, by reading, web search only on the user's yes; decisions are the user's.

**Escalation.** A slot still open after two rounds of short questions gets no more. The reply says what it is looking for (`INTERVIEW.md`, section Escalation), asks the user to write it in their own words at any length, derives the remaining slots from that text, and confirms each as its own `Proposed` question.

**Exit.** Done when all three hold:

1. The north star is one sentence the user wrote or confirmed; it cannot be deferred. If the user stops first, the interview ends paused: the bible carries `North star: TBD (interview paused: <the question>)` and is unusable for pillar checks until filled.
2. Every other slot is filled or deferred as `TBD: <the question that would settle it>`.
3. Each pillar rules out a real feature (the user's, or one proposed and accepted or rejected), or is deferred with `Rules out: TBD: ask` and listed as unresolved.

**Output.** `docs/game-bible.md` from `TEMPLATE.md`, core slots marked per the Core slot marks rule, the scope-reality line (hours against a comparable shipped game, an estimate) `Proposed`. The riskiest assumption is also an Open question and a Planned experiment, `Observed` and `Verdict` `pending`. An existing design doc is appended to or linked, never rewritten. The reply reports what was written, where, in which state, and ends: type `/game-prototype <the question>` to test the assumption.

## Record

Apply `RECORDING.md` in full: locate, read, conflict check, write, then report at the top of the reply what was written, where, in which state; a section past about fifty lines is archived before the write. A contradiction with a pillar, a non-goal, or a Decided entry opens the reply with the old entry quoted and one question (new entry or old?); the write waits for the answer. With no conflict, the entry is written first, `TBD: ask` in unsupplied slots, so a quick "don't forget" survives; then one question for the most important missing slot, `why` first. `Proposed` becomes `Decided` only when the user says so.

## Never

- Record a fact the user did not state as if they had: what they said is written as said, an unfilled slot is `TBD: ask`, and the agent's own drafts (estimates, derived slots, gates) are marked `Proposed`.
- Ask define questions about rules, systems, levels, art, or engine.
- Report that something is fun; the Planned experiment tests it.
