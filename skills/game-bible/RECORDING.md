# Recording contract

Every write to the game bible follows this file, whichever skill does the writing. Every reader of the bible (the `ask-sid` panel, the `game-*` tools) reads it the same way: a state means what this file says it means. Entry skeletons with the exact line format are in `TEMPLATE.md` next to this file.

## Who writes

| Writer | Writes when | Writes what |
|---|---|---|
| `game-bible` record mode | The user types `/game-bible <what happened>` | One entry of the type the request describes. Writes first, with `TBD: ask` in every slot the user did not supply, then asks for the missing rationale in one question and fills the answer in |
| `game-bible` define mode | The interview exits | The core block from `TEMPLATE.md`, every slot the agent drafted marked Proposed, plus the riskiest assumption as an Open question and a Planned experiment |
| A tool (`game-prototype`, `game-mechanic-critique`, `game-playtest`, `game-release`) | The user says yes to an entry the tool showed in full | That entry only. A yes accepts the one entry it answers; other entries offered in the same reply stay unwritten until each gets its own yes |
| `ask-sid` | The user asks it to record | The entry it offered in the Record line of a full-form answer |

Advice, verdicts, plans and tables write nothing. The authorization to save is the user's request or the user's yes to a specific entry shown in full. A yes to an entry writes it in the state the entry shows (Proposed unless the user said they decided); it does not flip anything to Decided.

Every writer runs the same sequence: locate the bible, read it, run the conflict check (Rules), write, and report at the top of the reply what was written, in which section, in which state.

Where the bible is: `<project root>/docs/game-bible.md`, where project root is the git top level, else the working directory. Fallbacks: `GAME-BIBLE.md` at the root, then any file whose heading contains "game bible" or "design pillars". Two or more matches: ask which. None: `game-bible` offers to create `docs/game-bible.md` from `TEMPLATE.md`; every other writer says there is no bible and names `/game-bible`.

## Entry types

Four types. Every slot is present in every entry; a slot without a real value carries one of the markers below.

| Type | Slots, in order | States |
|---|---|---|
| Decision | feature and change (the heading: `<Feature>: add / remove / change / defer`), state, date, decided by, why, evidence, pillar check, alternatives considered, revisit if, supersedes | Proposed, Decided, Superseded |
| Experiment | hypothesis (the heading), state, variable changed, gate or metric, observed, verdict | Planned, Running, Done |
| Playtest | date, build, testers (count and relation to the developer) in the heading; tested, players did, players said, issues | None. A playtest entry is facts, attributed to that build and those testers |
| Open question | question (the heading), state, threatens, settles when, settled by | Open, Settled |

Slot markers:

- `TBD: ask`: the user could supply this and has not. The writer puts the marker in, never a guess, and asks for the value in one question. `Why: TBD: ask` on a decision the user stated without a reason is the normal case, not an error.
- `pending`: the slot cannot have a value in the entry's current state. Observed and verdict while an experiment is Planned or Running; decided by while a decision is Proposed; settled by while a question is Open.
- `none yet`: evidence when nothing in the bible or the user's reports bears on the entry. `none I can verify` for analogs the agent cannot confirm.

A change to a core slot (a pillar added, the north star reworded, a constraint dropped) is a Decision entry whose feature names the slot, plus the matching edit to the core block. The edit carries the Proposed mark until the user confirms it.

Playtest observations keep their attribution: `players did` and `players said` describe what those testers did on that build. A later entry that cites them says which playtest it cites.

## States and transitions

```
Decision        Proposed --(user says decided)--> Decided --(a later Decided entry names it)--> Superseded
Experiment      Planned --(user says testing)--> Running --(user reports results)--> Done
Open question   Open --(a confirmed entry answers it)--> Settled
```

Transitions only the user triggers:

- Proposed to Decided. The user says the thing is decided ("we're doing it", "decided", or yes to "mark this Decided?"). The agent then fills `decided by` from the user's words or with `TBD: ask`, and sets the state line to `Decided (by <name>, <date>)`.
- Planned to Running. The user says they are testing it. The agent sets `Running (since <date>)`.

Transitions the agent sets, with the trigger that allows it:

- Done, when the user reports what happened. `Observed` is the user's report, attributed to build and testers. `Verdict` is the user's reading of it (kept, dropped, inconclusive); when the report has no reading, `Verdict: TBD: ask` and the agent's own reading goes in the reply, not in the entry. Planned may go straight to Done when results arrive without a Running step.
- Superseded, when a new Decided entry the user confirmed names the old one in `Supersedes:`. The old entry's state line becomes `Superseded (by "<heading>", <date>)`; its body stays.
- Settled, when an entry the user confirmed answers the question. `Settled by:` names that entry by heading and date.

What a state means to a reader:

- Proposed is a working assumption. A tool reads a Proposed pillar as the pillar to check against and writes `(Proposed)` after its name in the Pillar check line. A Proposed entry stays Proposed across any number of tool runs and reads; only the user flips it.
- Decided binds. The conflict check runs against Decided entries; the panel's Evidence line cites them.
- An experiment verdict of `kept` changes no Decision's state. The related Decision stays Proposed; the reply offers the flip in one line and the user takes it or not.

An entry is named by its heading and date: `"Shield: remove" (2026-10-14)`.

## Rules

- Newest first within every section. A new entry goes directly under the section heading or its link-out line.
- Conflict check before every write: compare the new entry against the pillars, the non-goals and constraints, and every Decided entry. On a contradiction, the reply opens with the conflicting entry quoted and one question: is the new entry right or the old one? The user picks new: the new entry is written Decided with `Supersedes:` naming the old, and the old is marked Superseded. The user picks old: nothing is written and the reply says so. No contradiction is written silently and none is refused silently.
- Supersede instead of deleting. Entries change state and stay in the file. An entry written in error is marked `Superseded (by "<correction>", <date>)` with a one-line correction entry.
- Repeat saves of the same feature update the existing entry. Same feature, same change, more rationale: fill the slots in place and update the date. Same feature, a different change: a new entry that supersedes the old.
- Write, then ask. Record mode writes the entry with `TBD: ask` markers before asking anything, so a quick "don't forget, we cut the shield" survives the conversation ending. Then one question for the most important missing slot (`why` first).
- Core stays one screen. When a section (Decisions, Experiments, Playtest log, Open questions, Rules and systems, Progression) passes about fifty lines, its older entries move to `docs/game-bible/<section>.md`, newest first, and the section in the bible keeps the heading, the line `Older entries: [docs/game-bible/<section>.md](game-bible/<section>.md)`, and the newest entry. Readers and the conflict check follow the link.
- Existing design docs are never rewritten. When the project already has a design doc, pitch, or earlier bible, `game-bible` either appends the core block to it under its own heading or creates `docs/game-bible.md` with the core block and a line linking to the existing document. The existing text is left as it was.
- Dates are `YYYY-MM-DD`. The writer names itself in provenance marks as `/game-bible`, `/game-prototype`, `ask-sid`, or the user's name.

## Bibles without states

A bible written from the v1 template has entries with no `State:` line. Readers treat each one as Proposed until the user confirms it is Decided. A heading of the form `<Feature>: Decided: add` is read as the change type `add`; it does not make the entry Decided.

When a writer touches such an entry (updating it, superseding it, citing it as settling a question), it adds the state line at that moment: `Proposed (v1 entry, state unconfirmed)` or, after the user confirms, `Decided (by <name>, <date>)`. Entries the writer does not touch are left as they are.
