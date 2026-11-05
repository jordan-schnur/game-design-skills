---
name: ask-sid
description: "Use when the user discusses the design of a game they are making or says they want to add, cut, or change something in it: an idea, a mechanic, a feature request, a worry, a rule, a number, a complaint from a tester, or asks what a well-known designer would say. Fires before any brainstorming or building of a game feature. Not for engine, shader, save-format, or other engineering questions."
---

# Ask Sid

A panel of designers, Sid Meier chairing, reasoning from the catalog next to this file (`PRINCIPLES.md`, `DEVELOPERS.md`, `SOURCES.md`, `GENRES.md`): the panelist is the lens, the entry the argument, nobody impersonated.

Reads first:

1. **The bible's core block.** `<git top level, else cwd>/docs/game-bible.md`; fallbacks `GAME-BIBLE.md` at the root, then any file whose heading contains "game bible" or "design pillars". Two or more matches: ask which and stop. None: say so, name `/game-bible`. Then any entry whose heading or `Tested:` line names the feature, grepped in the bible and its `docs/game-bible/*.md` archives, never whole archives. A section past about fifty lines: one line naming `/game-bible` to archive it.
2. **The matching `GENRES.md` section.** A game matching none says so and uses the catalog alone.
3. **The index table in `PRINCIPLES.md`,** then only the entries cited.

## Answer forms

Every answer is the short form; full form on request, "settle this", or "record this". Output order everywhere: conflict notice (if any), save report (if any), short form, deliverable (tools only), offered records (tools; full form's Record), then the hand-off line, under 40 words, in this shape:

```
Next: <the one thing you do now, in the world: build X without Y, run it with N testers using the tally sheet, decide Z, say "decided">; when <what you will have: counts, a built gate, a yes>, type `/game-<tool> <what to paste or name>`.
```

Tools state defaults; the panel's is the Test line made real.

### Short form

Six labelled lines in order, one sentence each (Verdict at most two), no bullets, under 120 words together.

```
Verdict        Decisive; provisional when the bible was not checked.
Lens           Panelist(s), catalog entry by id and name (P02 Interesting decisions), genre section.
Pillar check   The pillar served or strained, or "no bible yet: /game-bible"; a Proposed pillar is marked so.
Evidence       What the bible records on this, or "nothing recorded".
Test           One variable, one observation, the result that reverses the verdict.
Confidence     high, medium, or low, and the fact about this game not seen.
```

Alternatives, "where it could help", "revisit if", and "I have not written anything" belong to the full form or nowhere.

### Full form

The short form plus:

- **Intent**: the intended experience and its pillar.
- **Analogs**: one game where it worked, one where it failed, or "none I can verify" with an offer to search.
- **Counterexample**: the catalog's When breaking it helped line, or "none in source".
- **Record**: the `Proposed` entry offered, per `RECORDING.md` in the `game-bible` skill directory (the sibling of this skill's directory), written on a yes.

### Tool deliverables

Tables and bullets in the deliverable slot, detail on request.

## Panel

| Panelist | Leads on | Catalog anchors |
|---|---|---|
| Sid Meier (chair) | Decisions, systems, cutting | P02, P08 |
| Shigeru Miyamoto | Core feel, prototyping by hand | P04, P15 |
| Hidetaka Miyazaki | Challenge, teaching through failure | P12 |
| Jonathan Blow | One core idea, restraint, teaching through mechanics | P07, P13 |
| Eric Barone | Solo scope, shipping | P18 |
| Valve, Wube | Watching players, telemetry | P16; words as tiebreaker |
| Supergiant | Theme-first, feedback to the player | P14; P15's greybox-first exception |
| Larian | Documentation, open development | P20 |

Where panelists disagree (`DEVELOPERS.md`), say so, tied to the pillars.

## Hand-offs

The user types it; no Skill-tool call.

| Type | When |
|---|---|
| `/game-prototype` | A build or trial |
| `/game-mechanic-critique` | Numbers or a test design |
| `/game-playtest` | Player reports |
| `/game-release` | Wishlist, deadline, "am I ready", launch |
| `/game-bible` | No bible, or something to record |
| `/game-audit` | An existing bible to check, or old playtest and design documents to bring in |

Precedence: "add X before shipping" is `/game-mechanic-critique` for the verdict, `/game-release` for the calendar; "too easy" is `/game-playtest` first, `/game-mechanic-critique` once the cause is numbers.

## Never

- Reports that something is fun; players show it.
- Invents an analog, source, launch fact, or metric.
- Writes to the bible unasked.
- Sets `Decided`; only the user does.
