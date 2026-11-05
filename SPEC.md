# Game Design Skill Suite: Spec v3 for Review

Status: draft for your approval. v1 described ten skills built directly from the source document; those draft files now live in this repo under `skills/` and are installed into `~/.claude/skills` as symlinks by `make install`. v2 redesigned around your answers and a Codex review. v3 folds in your second round of answers and Codex's second review ("approve with changes"). Nothing is applied to the files until you approve this document.

Source: a research report on what makes games fun (GDC talks, postmortems, developer interviews), deliverables A to I, supplied by the user; not in this repo.

## 1. What this is for

A solo developer working on a game in Claude Code gets:

1. **A bible whose core is the north star of the game**: the ideas every later decision is made against. Defined by an interview that is bounded by what it is looking for, not by a round count, and that escalates to "you define it" when short questions cannot get there.
2. **A panel of designers that speaks up on design ideas**, in the lenses of the people the report studies, grounded in the bible and a sourced catalog, short by default, and honest about what it cannot know.
3. **Four tools you type when a question needs a process**: prototyping, critiquing a mechanic or its numbers, interpreting a playtest, planning scope and release.

### Decisions taken (your answers, 2026-11-04)

| Topic | Decision |
|---|---|
| v1 problems | Files before spec; too many skills |
| Draft files | Keep as the draft in `skills/`; revise in place after approval |
| Skill count | Six: `ask-sid`, `game-bible`, `game-prototype`, `game-mechanic-critique`, `game-playtest`, `game-release` |
| Reply length | Short by default; full on request or for "settle this" asks |
| Persona | Composite panel; Sid Meier chairs; router keeps the name `ask-sid` |
| Catalog | Keep the 16 added entries, labelled; tag examples not in the document |
| Bible path | `docs/game-bible.md`, with fallbacks |
| Invocation | Only `ask-sid` fires on its own; everything else is typed |
| Saving | Agent writes `Proposed`; only you flip to `Decided`; your reported observations saved as fact with attribution |
| Unverifiable facts | "None I can verify" is valid; web search only on your yes |
| Interview engine | The `grilling` primitive for rounds and frontier, with the bible's own framing and questions |
| Interview bound | No round cap. Bounded by the seven core slots and by finding the north star; escalates to "define it in your own words" |
| Genres now | Systems / strategy / roguelike; feel / action / platformer; minimalist systems games like Mini Metro. Few testers, no telemetry. A later skill will add genres, so genre knowledge lives in one extensible file |

### Non-goals

No engine or engineering guidance. No Codex metadata, docs pages, or bucket folders. No role-play. No long answers by default. No narrative, atmosphere, or social-game lenses yet (they come through the genre file later).

## 2. Architecture

```
ask-sid                 model-invoked. The panel. Fires on game design talk. Short form.
                        Owns PRINCIPLES.md, DEVELOPERS.md, SOURCES.md, GENRES.md.
                        Hands off to a tool by naming its slash command.

game-bible              user-invoked. define: the north-star interview -> core slots.
                        record: one entry with required slots and states.
                        Owns TEMPLATE.md and RECORDING.md (the shared write contract).

game-prototype          user-invoked. One question, a gate, a minimum build, tuning, a Planned experiment.
game-mechanic-critique  user-invoked. Verdict on a mechanic or request; numbers branch (balance).
game-playtest           user-invoked. Reports -> gap, causes, hypothesis, one-variable experiment.
game-release            user-invoked. scope mode (early: gate, feature table, cuts) and
                        launch mode (promise, audience, pricing, post-launch loop).
```

### Invocation and dependencies

- `ask-sid` is the only skill without `disable-model-invocation: true`.
- Suite skills never call each other through the Skill tool (a user-invoked skill cannot be called that way). They hand off by naming the slash command to type.
- One external call: `game-bible define` calls the Skill tool with `grilling` (installed, model-invoked) for the round and frontier mechanics. If that call fails or the plugin is absent, `game-bible` runs the same brief with an inline round format.
- Shared material is read by path, not by Skill call. Two kinds of path:
  - **Skill-relative**: the catalog and the recording contract live under the skill that owns them and are resolved from that skill's base directory, which Claude Code supplies when the skill loads (`ask-sid/PRINCIPLES.md`, `game-bible/RECORDING.md`). Tools name these paths explicitly.
  - **Project-relative**: the bible is at `<project root>/docs/game-bible.md`, where project root is the git top level, else the working directory. Fallbacks: `GAME-BIBLE.md` at root, then any file whose heading contains "game bible" or "design pillars". Two or more matches: ask which. None: say so and name `/game-bible`.

### Naming

`ask-sid` stays as a nod to the chairing heuristic; its body names the panel. Tools are `game-<phase>`, flat, no collision with the installed `/prototype`.

## 3. Shared contracts

Defined once, referenced by every skill. Three files carry them: `ask-sid/SKILL.md` (answer forms), `game-bible/RECORDING.md` (write rules and states), `ask-sid/GENRES.md` (per-genre lenses and gates).

### 3.1 Answer forms

**Short form** (default everywhere, including the tools' lead-in):

```
Verdict        one or two sentences, decisive
Lens           panelist(s) and catalog entry by name (stable id, e.g. P02 Interesting decisions)
Pillar check   which pillar this serves or strains; or "no bible yet: /game-bible"
Evidence       what the bible already records on this, or "nothing recorded"
Test           one variable, one observation, what result reverses the verdict
Confidence     high / medium / low, and the fact about your game I have not seen
```

Evidence is in the short form because the source's evaluation framework collects current data before hypothesizing; a verdict given without checking the bible is marked provisional in the Verdict line.

**Full form** (on request, "settle this", or when recording): short form plus Intent (the player experience and its pillar), Analogs (two, one agreeing and one disagreeing where one exists, or "none I can verify"), Counterexample (where breaking the principle helped, or "none in source"), and Record (the `Proposed` entry it offers to write).

**Tool deliverables** (a plan, a table, a calendar) are compact: tables and bullets, led by the short form, expanded only on request. A tool never writes an essay around its table.

### 3.2 Recording contract (`game-bible/RECORDING.md`)

Who writes: `game-bible record` on your request; any tool, after you say yes to an offered entry. `ask-sid` never writes unless you ask it to record. Every writer follows this file.

Entry types and required slots. A slot you did not supply is `TBD: ask`, never inferred.

| Type | Slots | States |
|---|---|---|
| Decision | feature, state, date, decided by, why, evidence, pillar check, alternatives, revisit if, supersedes | `Proposed` → `Decided` (you say so) → `Superseded` (a later Decided entry names it) |
| Experiment | hypothesis, state, variable changed, gate or metric, observed, verdict | `Planned` (observed and verdict are `pending`) → `Running` (you say you are testing) → `Done` (you report observations; verdict kept / dropped / inconclusive) |
| Playtest | date, build, testers (count, relation to you), tested, players did, players said, issues | none; facts, attributed to the build and testers named |
| Open question | question, what it threatens, what evidence settles it | `Open` → `Settled` (names the entry that settled it) |

Transitions only you trigger: `Proposed` to `Decided`; `Planned` to `Running`. The agent may set `Done` when you report results, and `Superseded` or `Settled` when a new entry you confirmed makes it so. An experiment verdict of `kept` does not change any Decision's state; the related Decision stays `Proposed` until you flip it. A `Proposed` pillar is read by tools as a working assumption and is labelled as such in their Pillar check line.

Other rules: newest first within a section; conflict check against pillars, non-goals, and `Decided` entries before saving, surfaced at the top of the reply, never silently recorded or refused; supersede rather than delete; repeat saves of the same feature update the existing entry rather than duplicate it; the core section stays one screen and sections link out to `docs/game-bible/<section>.md` when they pass about fifty lines. Existing design docs are never rewritten; the core block is appended or placed in a new file that links to them.

### 3.3 Genres (`ask-sid/GENRES.md`)

One section per genre: which panelists lead, what the prototype gate looks like, what counts as a playtest signal, what a balance target is, and the catalog entries whose counterexample column is the advice. Initial sections:

- **Systems / strategy / roguelike** (Meier, Wube, Larian): gate is a decision that changes a run; signals are repeated strategies and run-length certainty; balance target is N viable lines.
- **Feel / action / platformer** (Miyamoto, Miyazaki, Supergiant): gate is the core action replayed in isolation; signals are death and quit positions, retry counts; balance target is a difficulty ramp with relief.
- **Minimalist systems (Mini Metro and kin)** (Meier, Blow, Wube): gate is one rule set producing growing pressure and readable failure with no content added; signals are session length before overwhelm and whether players can say why they lost; balance target is pressure growth that is legible, with restraint as a pillar (every addition must earn its place against "less"). Also the genre where behavior and testimony weigh equally, because the experience is flow rather than mastery.

A later skill of yours adds sections here. `ask-sid` and the tools read the matching section and say which one they used; a game matching none says so and uses the general catalog.

## 4. The bible (`game-bible`)

### Core slots (what define produces)

| Slot | Shape |
|---|---|
| North star | One sentence a stranger can repeat: the experience the game exists to deliver and why someone picks it over the closest alternative. The hook, not the genre list |
| Hook check | "Too similar to X unless the twist is Y", two or three closest games, or "none I can verify" |
| Pillars | Three to five noun phrases, each with what it rules out; a pillar that rules out nothing is sent back |
| Non-goals and constraints | What the game will not do; team, hours per week, platform, deadline |
| Target player | Who, what they play now, what they want from this |
| Core loop | Micro action, loop, meta |
| Riskiest assumption | The belief that, if false, kills the concept, and the slash command that tests it |

### The define interview

Runs on the `grilling` primitive (rounds, frontier, recommended answer per question so "yes" accepts it, facts are the agent's job, decisions are yours), with the bible's own brief:

- **Frontier is the seven slots and nothing else.** No questions about rules, systems, levels, art, or engine. A question is titled by its slot.
- **Scoped acceptance.** Each question carries one recommendation; "yes" accepts that one only. Several open slots are several questions.
- **Read first.** If a design doc, pitch, or earlier bible exists, read it and ask only what it does not answer. If the game already exists, ask for the intended experience before describing what is built, so pillars recover intent rather than rationalize what happened to get made.
- **Escalation, not a cap.** A slot that is still open after two rounds of short questions stops getting short questions. The skill says what it is looking for ("the one sentence that is the north star; the thing every later cut is measured against") and asks you to write it in your own words, at whatever length. It then derives the remaining slots from that text and asks you to confirm each.
- **Exit.** Done when every slot is filled or you have explicitly deferred it (`TBD`, with the question that would settle it written in), the north star is one sentence, and each pillar has ruled out at least one real feature (from your list, or one the panel proposes and you reject or accept). The north star itself cannot be deferred: escalation continues until you write it, and if you stop, the interview ends as paused and the bible says so. A deferred pillar is recorded with `Rules out: TBD: ask` and listed as unresolved. Deferred slots are legitimate; silent gaps are not.
- **Output.** `docs/game-bible.md` from `TEMPLATE.md`, core filled, everything the agent proposed marked `Proposed`, the riskiest assumption recorded as an `Open` question and a `Planned` experiment, ending with the slash command that tests it.

Why no numeric cap: you want a north star found, not a form filled. Boundedness comes from the fixed frontier, two rounds of short questions per slot before escalation, and an exit tied to the north star. The structural worst case is seven slots, two short rounds each, one escalation, one confirmation round.

### Record mode

`/game-bible <what happened>`. Applies the recording contract. Writes first with `TBD: ask` slots so nothing is lost, then asks for the missing rationale in one question.

## 5. The panel (`ask-sid`)

Fires when you discuss the design of a game you are making. Reads the bible core if one exists, picks the genre section and the one or two panelists whose lens fits, answers in the short form. Full form on request, "settle this", or "record this".

| Panelist | Leads on | Catalog anchor |
|---|---|---|
| Sid Meier (chair) | Decisions, systems, cutting | P02 Interesting decisions; P08 Remove what creates no decision |
| Shigeru Miyamoto | Core feel, prototyping by hand | P04 Movement itself should be fun; P15 Core fun before art |
| Hidetaka Miyazaki | Challenge, teaching through failure | P12 Ramp challenge with skill |
| Jonathan Blow | One core idea, restraint, teaching through mechanics | P07 Every feature serves a pillar; P13 Teach through play |
| Eric Barone | Solo scope, shipping | P18 Finish a simple game well |
| Valve, Wube | Watching players, telemetry | P16 Measure behavior, with words as the tiebreaker |
| Supergiant | Theme-first, feedback to the player | P14 Clear feedback; the counterexample to greybox-first |
| Larian | Documentation, open development | P20 The bible is the memory |

Where panelists disagree (procedural vs handcrafted, theme-first vs core-first, randomness) the panel says so and ties the call to your pillars. Hand-offs name the slash command and one reason: build plan (`/game-prototype`), verdict with numbers or a test design (`/game-mechanic-critique`), reports to interpret (`/game-playtest`), wishlist, deadline, launch (`/game-release`), no bible (`/game-bible`). Precedence when two fit: "add X before shipping" is critique for the verdict, release for the calendar; "too easy" is playtest first, critique once the cause is numbers.

Never: reports that something is fun; invents an analog, source, launch fact, or metric; writes to the bible unasked; sets `Decided`.

Files: `SKILL.md`, `PRINCIPLES.md` (with an index table and stable ids P01 to P20), `DEVELOPERS.md`, `SOURCES.md`, `GENRES.md`.

## 6. The tools

All user-invoked; read the bible by path; read their genre section; carry their two or three catalog anchors inline by id with a path to the full entry; lead with the short form; end with the `Proposed` entries they offer to write and the slash command that comes next. Each must work with one to five friends as testers and no telemetry; where a step assumes logging, the tool gives the no-logging substitute (screen recording, a tally sheet, asking where they stopped).

| Tool | Type it when | Produces | Rule that makes it this tool |
|---|---|---|---|
| `/game-prototype` | "What do I build first", a new mechanic to try, "does the core work" | One question from the riskiest assumption; a pass/fail gate written before building, in the genre's gate shape; minimum build with exclusions; tuning plan, one parameter at a time (double-or-halve noted as a Meier-attributed heuristic, verify); observation plan with the no-logging substitute; a `Planned` experiment | On fail: tune, swap sibling mechanic, pivot, in that order, unless the gate result itself says the concept is dead, in which case say so and go to pivot. Sunk cost does not skip a rung |
| `/game-mechanic-critique` | "Should I add X", a tester's request, "is this balanced", "everyone picks X" | Short form; the decision the mechanic creates; the request behind the request. **Numbers branch** when stats are supplied: proposed target from pillars (labelled proposed), normalized table with every assumption listed, dominance and its lever, emergent vs degenerate with the habit-or-discoverability caveat, feedback loops labelled, ranked single-change list, one change per build, a simulation offer with its limit (finds dominant lines, not enjoyment) | Decisive when asked. Alternatives viable before nerfing. Half-written code is not an argument |
| `/game-playtest` | "Players say X", "two of five quit", planning a test | Intent (from the bible, or assumed and flagged), what players did then what they said, gap in one sentence, candidate causes each with the observation that confirms it, hypothesis before any change, one-variable experiment sized to the testers you have (within-subjects with the learning effect named when there are few), non-leading questions, decision rule, a playtest entry | Never judges fun. Small samples are a reason to look, stated as such. Words are the tiebreaker between obligation and enjoyment, not second-class |
| `/game-release` | **scope mode**: a wishlist, a deadline, "what next", "am I ready". **launch mode**: "how do I launch", pricing, "should I add a battle pass", post-launch reviews | scope: phase and gate with evidence, feature table (pillar, decision created, cost, table stakes, trailer visible, verdict), cuts with reasons, missing table stakes, calendar with the polish tail, scope reality (hours vs a comparable shipped game). launch: promise sentence, audience and named channels, analog launches marked known vs from memory or "none I can verify", demo and trailer tied to the promise, pricing range with uncertainty, timeline with the ship-now vs wait trade-off, retention and monetization judged against pillars, post-launch loop that hands reports to `/game-playtest` | A late addition needs a pillar, a small cost, and a reason it cannot wait; that is the rule, stated once. Scope mode never asks for prices or marketing. Business-model mismatches fail the pillar check by default |

## 7. External review and adjudication

Two Codex (`gpt-6-astra`) passes; reports in `docs/reviews/codex-review-v1.md` and `docs/reviews/codex-review-v2.md`. v1 verdict: rework. v2 verdict: approve with changes. Every change requested in the second pass, and what v3 does:

| Requested | v3 |
|---|---|
| Define persistence ownership and state transitions | Section 3.2: who writes, when, and which transitions only you trigger |
| Require evidence grounding in both forms | Evidence line in the short form; verdicts without it marked provisional |
| Reconcile short form vs tool-specific outputs | Section 3.1: tools lead with the short form and deliver compact tables; "full-form verdict" removed from critique; release split into modes |
| Make interview termination unconditional at the cap | Overridden by you: no cap. Replaced with fixed frontier, escalation after two short rounds per slot, scoped acceptance, explicit deferral, and an exit tied to the north star |
| Specify path resolution and selective retrieval | Section 2: skill-relative vs project-relative paths, multiple-match rule; catalog index with stable ids; sections link out past fifty lines |
| Expand the change plan to rewrite prototype and playtest and preserve merger capabilities | Section 8 rewritten |
| Add behavioral and persistence tests | Section 9 |
| Resolve the `grilling` dependency contradiction | Section 2: one external call, with inline fallback; "no calls" now means no calls between suite skills |
| Added heuristics still mandatory (tune, sibling, pivot) | Prototype rule now allows a direct pivot when the gate result says so |
| Testimony still discounted | Words are the tiebreaker, not second-class; Mini Metro genre weighs them equally |
| Provenance labels do not verify | Accepted as a limit. Confidence lines state evidence type (studied / practiced / opinion); attributions outside the document are tagged, not verified. Verification is a search you authorize |

Carried from the first pass and still applied: catalog header on the source's own lack of citations; `[added]` tags; reverted paraphrases (Supergiant, Blow); Zabek tagged outside the document; counterexample vs "when breaking it helped" separated; router frontmatter rewritten; spec corrected on catalog order.

## 8. Change plan from the draft files

Order matters: contracts first, consumers after, deletions last.

1. **Contracts.** Write `game-bible/RECORDING.md` (section 3.2) and update `TEMPLATE.md`: north star, hook check, states, `pending` fields, supersedes and settled-by links, `Proposed` provenance, links to section files. Write `ask-sid/GENRES.md` (section 3.3). Define the short and full forms in `ask-sid/SKILL.md` as a labelled section the tools cite by path.
2. **Catalog.** Move `PRINCIPLES.md`, `DEVELOPERS.md`, `SOURCES.md` under `ask-sid/`. Add the index table and ids P01 to P20. Apply provenance fixes: header note, `[added]` tags, reverted paraphrases, Zabek tag, confidence rewritten as evidence type, "when breaking it helped" lines.
3. **`ask-sid/SKILL.md`.** Remove `disable-model-invocation: true`. Frontmatter: "Use when the user discusses the design of a game they are making: an idea, a mechanic, a worry, a rule, a number, a complaint from a tester." Body: panel table, genre lookup, short and full forms, hand-off table with precedence, never-does list.
4. **`game-bible/SKILL.md`.** Add `disable-model-invocation: true`. Define mode per section 4 (grilling call with the brief; inline fallback; read-first; escalation; exit; output). Record mode per the contract. Fold `game-concept`'s slots in. Delete `game-concept/`.
5. **`game-prototype/SKILL.md`.** Rewrite the body, not just the plumbing: genre gate shape, no-logging observation, `Planned` experiment, direct-pivot clause, heuristic attribution, path reads, hand-off lines.
6. **`game-mechanic-critique/SKILL.md`.** Short form default; numbers branch carrying `game-balance`'s target, table, dominance, emergent vs degenerate, feedback loops, ranked single changes, simulation offer. Delete `game-balance/`.
7. **`game-playtest/SKILL.md`.** Rewrite: evidence from the bible, words as tiebreaker, small-sample language, one-to-five-tester experiment designs, no-logging substitutes, playtest entry via the contract.
8. **`game-release/SKILL.md`.** Scope mode carrying `game-scope`'s gate, table, cuts, missing table stakes, calendar, plus concept's scope reality. Launch mode as before with "none I can verify" and the post-launch hand-off. Delete `game-scope/`.
9. **Sweep.** Every "Call the Skill tool with game-..." becomes a path read or a "type `/...`" line. Every reference to deleted skills removed. Set `disable-model-invocation: true` on the four tools. Delete `game-design-principles/`.
10. **README.** Rewrite the suite section for six skills.
11. **Existing bibles.** Any bible written by the v1 draft (the test fixture only, as far as I know) is read as-is; decisions without a state line are treated as `Decided` only if you confirm, else `Proposed`.
12. **Tests** (section 9), fixes, commit.

## 9. Tests before commit

Pass criteria written per scenario before running. Each run through the real Skill tool where the skill is model-invoked, and by typing the slash command where it is not.

- **Trigger**: `ask-sid` fires on five game-design prompts, stays quiet on five unrelated prompts and five game-code prompts (a shader bug, a save-file format).
- **Short form holds**: five quick design questions produce six-line answers; five "settle this" asks produce the full form; one quick balance and one quick scope question through the tools stay compact.
- **Grounding**: a question whose answer contradicts a `Decided` entry in the bible surfaces the entry in the Evidence line.
- **Interview**: three `/game-bible define` runs (bare idea; half-built game with a stale design doc; detailed pitch) end with every slot filled or deferred, the north star in one sentence, pillars tested against features; one run where the user gives a one-word answer twice triggers escalation; one run with `grilling` unavailable uses the fallback.
- **Persistence round trips**: a `Proposed` entry stays `Proposed` after two more tool runs; a `Planned` experiment has `pending` fields, never invented results; a conflicting entry is surfaced, not written; a superseding decision keeps the old one; saving the same feature twice updates, not duplicates.
- **Bible edge cases**: none, two matches, an existing doc that is not a bible, a bible past fifty lines in decisions.
- **Missing evidence**: a launch question about an obscure analog yields "none I can verify" and an offer to search.
- **Genres**: a Mini Metro-like game through `ask-sid` and `/game-prototype` uses the minimalist section (restraint pillar, legible-pressure gate), not isolate-one-action; a roguelike balance question through `/game-mechanic-critique` preserves arithmetic and lists assumptions.
- **Few testers**: `/game-playtest` with one tester and no logs gives the recording-and-tally substitute, not a telemetry plan.
- **Against plain Claude**: the v1 baseline prompts re-run with and without the suite, scored on factual errors, unsupported decisions, and whether a bible entry exists afterward.

## 10. Remaining questions

1. **"Own skin" for the interview.** I read it as: grilling supplies the round and frontier engine (and your grill-pad pane), `game-bible` supplies slot-titled questions, the north-star framing, the escalation step, and a bible as output instead of a glossary. If you meant a different pane or visual treatment, say so.
2. **Multiple games or existing docs.** One repo, one bible is assumed; an existing design doc is read first and never rewritten. Confirm.
3. **What would justify this over plain Claude.** The v1 baselines were already competent. v3's claim: a north star that exists and is kept, feedback grounded in it, honest unknowns, and short answers. If your bar is different, the last test in section 9 should measure that instead.
4. **Approve to proceed?** On approval I run the change plan, the tests, and commit in this repo; no push.

## 11. Addition after v3: `game-audit`

Requested 2026-11-05 after the suite was built and tested against a real project whose repository already held a bible candidate and several playtest documents. A seventh user-invoked skill, `/game-audit`, is the union of two things the suite could only do by hand: check an existing bible against the panel, and bring existing playtest and design documents into the bible as attributed entries.

| Topic | Decision |
|---|---|
| Invocation | `/game-audit [documents]`; user-invoked; no arguments means the bible plus every document under `docs/` whose heading or file name says playtest, test, session, or interview |
| Reads | The bible core and its entries; each named document headings first, then only sections that describe a session, an observation, a finding, a change made, or a hypothesis; never transcripts or implementation detail |
| Bible check | Each core slot: present, shape (north star one sentence; each pillar rules out a real feature; hook check names games; riskiest assumption testable), and a panel note with panelist and catalog id. Each pillar gets one verdict: keep, sharpen, split, or drop, with the feature it fails to rule out |
| Import | One Playtest entry per session found (facts, attributed to build and testers, with the source file and section named); one Done experiment per idea the documents say was built and played (verdict as the document states it, else `TBD: ask`); one Open question per risk the documents raise that the bible does not hold |
| Evidence versus pillars | Where an imported observation supports or contradicts a pillar or the riskiest assumption, one line each; contradictions are conflict notices at the top |
| Writing | Everything offered, nothing written until a yes; entries numbered so "yes to 1, 3, 4" or "yes to all playtest entries" is scoped; everything the agent drafts is Proposed; nothing becomes Decided; source documents are never edited |
| Output | Answer-forms order: conflict notices, short form on the bible as a whole, deliverable (bible check table, pillar verdicts, tests table, evidence versus pillars), offered records, the next-step hand-off line |
| Hand-off | A pillar verdict of sharpen, split, or drop names `/game-bible` to record the change; a contradiction names `/game-playtest` to interpret the session; otherwise the riskiest assumption's `/game-prototype` line |
| Never | Invents an observation, tester count, or date; marks anything Decided; judges fun; edits a source document |

Tests before merge: the baseline (plain Claude asked to audit and import) against the skill on the same fixture; import yields one entry per session with source named and no invented fields; nothing written before a yes; a pillar verdict cites a panelist and id; a contradiction appears as a conflict notice; a Codex review of the skill.
