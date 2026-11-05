---
name: game-audit
description: "Use when the user types /game-audit to check an existing game bible against the panel or to bring existing playtest, interview, or design documents into the bible."
disable-model-invocation: true
---

# Game Audit

Checks an existing bible against the panel and imports playtest, interview, and design documents as attributed entries.

## Reads

1. **The bible.** `<git top level, else cwd>/docs/game-bible.md`; fallbacks `GAME-BIBLE.md` at the root, then any file whose heading contains "game bible" or "design pillars". Two or more matches: ask which and stop. None: name `/game-bible` and stop. The core block, then entry headings, state lines, and `Tested:` lines in the bible and its `docs/game-bible/*.md` archives; entries matching a document session or pillar are read in full, whole archives never. No state lines: `RECORDING.md`, section Bibles without states.
2. **The documents.** Those named, else every file under `docs/` whose heading or file name says playtest, test, session, or interview. Headings first, then only sections on a session, observation, finding, change made, or hypothesis; never transcripts or implementation detail. The reply names what was read.
3. **The genre section** of `GENRES.md` in the `ask-sid` skill directory (the sibling of this skill's directory), and `PRINCIPLES.md` there, index first. Anchors: P07, P16, P20.

## Reply

In the output order of `ask-sid/SKILL.md`, section Answer forms: conflict notices, the short form on the bible as a whole (six lines, under 120 words), the deliverable, the offered records, the hand-off line.

The deliverable, in order:

1. **Bible check table.** One row per core slot: present or missing; shape (north star one sentence; each pillar rules out a real feature; hook check names games; riskiest assumption testable); panel note with panelist and catalog id (Blow, P07); `(Proposed)` where the slot is.
2. **Pillar verdicts.** One per pillar: keep, sharpen, split, or drop; the feature it fails to rule out; panelist and id. A rules-out nobody built or proposed is the sharpen case (Meier, P08).
3. **Tests table.** One row per session or built idea: source file and section, date, build, testers (count, relation), tested, result as stated; a cell the document does not give is `TBD: ask`.
4. **Evidence versus pillars.** One line per observation supporting or contradicting a pillar or the riskiest assumption, naming its tests-table row. Each contradiction also leads the reply as a conflict notice (pillar quoted, observation, source); one against a Decided entry waits per `RECORDING.md`, Rules. The agent's reading lives here, never in an entry.

## Records

Numbered, each shown in full per `RECORDING.md`, Entry types, and `TEMPLATE.md` in the `game-bible` skill directory:

- **One Playtest entry per session.** Heading `### YYYY-MM-DD, build <id>, <n> testers (<relation>): <what was tested>`, then Tested, Players did, Players said, Issues, in the document's words; what it does not give is `TBD: ask`.
- **One Done experiment per idea the documents say was built and played.** Hypothesis as stated; `State: Done (<date>, build <id>, <n> testers)`; Variable changed; Gate or metric; Observed; Verdict as the document states it (kept, dropped, inconclusive), else `TBD: ask`.
- **One Open question per risk the documents raise that the bible lacks.** `State: Open (by /game-audit, <date>)`, Threatens, Settles when, `Settled by: pending`.

Every entry ends `Source: <file>, section <heading>` (RECORDING.md, Rules). Identity is the session, not the feature: one session in two documents is one entry citing both; two sessions on one feature are two entries; a session already in the bible is offered as an update. A tester count or relation read from wording such as "the designer's report" is recorded with that wording quoted.

**The yes.** Scoped: "yes to 1, 3" or "yes to all playtest entries" writes those; a bare "yes" with several offered gets "which numbers, or all?". The write runs the conflict check, goes newest first, and is reported at the top.

## Hand-offs

Last line in the shape of `ask-sid/SKILL.md`, section Answer forms: say yes to the records to keep, then the first of:

- A verdict of sharpen, split, or drop: `/game-bible <pillar>: <the change>`.
- A conflict notice: `/game-playtest <the session>`.
- Otherwise the riskiest assumption's `/game-prototype` line.

## Never

- Invents an observation, tester count, date, or verdict; `TBD: ask` instead.
- Marks anything Decided, or edits a core slot or a source document.
- Judges fun; testers show it.
- Writes before a yes to numbered entries shown in full.
