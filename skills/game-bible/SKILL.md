---
name: game-bible
description: Use when the user types /game-bible to define a game's north star and pillars, to revisit them, or to record a decision, experiment, playtest, or open question.
disable-model-invocation: true
---

# Game Bible

The game's memory: the north star and the six slots hanging off it. Every suite skill reads it first and writes through `RECORDING.md`, next to this file.

## Mode

- No argument, `define`, or no bible found: define.
- Anything else (`/game-bible we cut the shield`): record.

Locate the bible per `RECORDING.md`, section Who writes (two or more matches: ask which and stop); a bible without state lines reads per its section Bibles without states.

## Define

**Read first.** One document, per `INTERVIEW.md`, section Read-first: the one the user names, or the one that supersedes or embeds the others; headings first, then only the sections that answer a slot, never appendices, transcripts, implementation, or test plans. What the document marks proposed, default, or hypothesis is drafted `Proposed`; what it marks as the user's decision or correction is the user's words, `Decided` (Core slot marks). The confirmation line names the file and sections read. For a game with code, the first slot question is the intended experience, before what is built, so pillars recover intent.

**Name.** The first question, asked once: what name goes on decisions. None given means `TBD: ask`; never taken from git config, file system, or environment.

**Frontier.** Seven slots and nothing else: north star, hook check, pillars, non-goals and constraints, target player, core loop, riskiest assumption. Shapes and recommendation sources: `INTERVIEW.md`; written form: `TEMPLATE.md`; both next to this file.

**Engine.** Call the Skill tool with skill `grilling`, passing `INTERVIEW.md`'s Brief section, then the slots read-first settled. If the call fails or the skill is absent, run the brief inline in its round format.

**Scoped acceptance.** Numbered questions, one recommendation each. "Yes" accepts that one only, as `Proposed`; a slot in the user's own words is `Decided` (`RECORDING.md`, section Rules, Core slot marks). Inline, a bare "yes" with several questions pending gets "yes to which number, or all". Facts are the agent's job, web search only on a yes; decisions are the user's.

**Escalation.** A slot still open after two rounds of short questions gets no more: the reply says what it is looking for (`INTERVIEW.md`, section Escalation), asks for it in the user's own words at any length, derives the remaining slots from that text, and confirms each as its own `Proposed` question.

**Exit.** Done when all three hold:

1. The north star is one sentence the user wrote or confirmed, never deferred. If the user stops first, the interview ends paused: `North star: TBD (interview paused: <the question>)`, unusable for pillar checks until filled.
2. Every other slot is filled or deferred as `TBD: <the settling question>`.
3. Each pillar rules out a real feature (the user's, or one proposed and accepted or rejected), or is deferred as `Rules out: TBD: ask`, listed unresolved.

**Output.** `docs/game-bible.md` from `TEMPLATE.md`, core slots marked per Core slot marks, the scope-reality line (hours against a comparable shipped game, estimated) `Proposed`. The riskiest assumption is also an Open question and a Planned experiment, `Observed` and `Verdict` `pending`. An existing design doc is appended to or linked, never rewritten. The reply reports what was written, where, in which state, then the hand-off line (`ask-sid/SKILL.md`, section Answer forms): build nothing yet; when the core reads right, `/game-prototype <the riskiest-assumption question>`.

## Record

Apply `RECORDING.md` in full: locate, read, conflict check, write, then report at the top what was written, where, in which state; a section past about fifty lines is archived first. A contradiction with a pillar, non-goal, or Decided entry opens the reply with the old entry quoted and one question (new or old?); the write waits. With no conflict, the entry is written first, `TBD: ask` in unsupplied slots; then one question for the most important missing slot, `why` first. Hand-off, same shape: the entry stays `Proposed` until the user says "decided"; with a Planned experiment written, `/game-prototype <its hypothesis>` refines its gate.

## Never

- Record a fact the user did not state: what they said is written as said, an unfilled slot is `TBD: ask`, the agent's drafts (estimates, derived slots, gates) are `Proposed`.
- Ask define questions about rules, systems, levels, art, or engine.
- Report that something is fun; the Planned experiment tests it.
