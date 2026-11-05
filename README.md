# game-design-skills

Claude Code skills that act as a game design panel for a solo developer: seven
in all. One skill speaks up on design ideas (`ask-sid`), one keeps the game
bible (`game-bible`), and five tools are typed when a question needs a process
(`game-prototype`, `game-mechanic-critique`, `game-playtest`, `game-release`,
`game-audit`).

Built from a research report on what makes games fun (GDC talks, postmortems,
developer interviews). The design is in [SPEC.md](SPEC.md); the rules every
skill follows are in [docs/tickets/CONVENTIONS.md](docs/tickets/CONVENTIONS.md).

## The suite

Every panel answer leads with the six-line short form (Verdict, Lens, Pillar
check, Evidence, Test, Confidence), after a conflict notice or save report when there is one;
the five tools lead with it too, then add their deliverable. The form and the
output order are defined once in `ask-sid/SKILL.md` under Answer forms. `game-bible` is the
exception: its define interview produces a bible, not six lines, and its
record mode writes the entry the user asked for. Every skill reads the game
bible first, at `docs/game-bible.md` under the project root, and writes to it
only through the recording contract in `game-bible/RECORDING.md`: the panel
and the tools only after the user says yes to an entry shown in full,
`game-bible` on the user's request.

**ask-sid** is the panel: a table of designers, Sid Meier chairing, who reason
from the principles catalog. The panelist names the lens, the cited catalog
entry is the argument, nobody is impersonated. It is the one model-invoked
skill: Claude loads it on its own when the conversation turns to the design of
a game the user is making, or the user says they want to add, cut, or change
something in it (an idea, a mechanic, a feature request, a worry, a tester's
complaint), before any brainstorming or building of a feature; not for engine
or shader questions. It answers in the short form, gives the
full form on request or "settle this", and hands off to a tool by naming the
slash command to type. It owns `PRINCIPLES.md` (twenty entries, `P01` to
`P20`, with an index table), `DEVELOPERS.md`, `SOURCES.md`, and `GENRES.md`
(three genre sections that set the prototype gate, playtest signals, and
balance target).

**game-bible** keeps the game's memory. Typed as `/game-bible`, it runs in
define mode (no argument, or no bible yet): a bounded interview, on the
`grilling` skill with an inline fallback, that settles seven slots (north
star, hook check, pillars, non-goals and constraints, target player, core
loop, riskiest assumption) and writes `docs/game-bible.md`. With an argument
(`/game-bible we cut the shield`) it runs in record mode: one entry, written
first with `TBD: ask` in the slots the user did not supply, then one question.
Write-first applies only when no conflict is found; a conflict with a pillar,
a non-goal, or a Decided entry is asked about first and the write waits.
It owns `RECORDING.md` (the write contract: entry types, states, conflict
check), `TEMPLATE.md` (the bible skeleton), and `INTERVIEW.md` (the define
brief).

**game-prototype** plans the first playable test of an idea. Typed as
`/game-prototype <question>`, it turns the bible's riskiest assumption into
one question, a pass/fail gate in the shape the genre section gives it, a
minimum build with exclusions, a tuning plan, an observation plan for one to
five friends with no telemetry, and a `Planned` experiment entry. It owns only
its `SKILL.md`.

**game-mechanic-critique** gives a verdict on adding, removing, or changing
one mechanic, rule, or set of numbers. Typed as `/game-mechanic-critique`, it
answers in the short form plus two lines (the decision created, the request
behind it) and, when numbers are supplied, enters the numbers branch: proposed
target, normalized table with every assumption listed, dominance, emergent vs
degenerate, feedback loops, ranked single changes. It owns only its
`SKILL.md`.

**game-playtest** interprets what one to five testers did and said. Typed as
`/game-playtest`, it produces intent, what players did and then what they
said, the gap, candidate causes with the observation that confirms each, a
hypothesis, a one-variable experiment sized to the testers at hand,
non-leading questions, a decision rule, and a Playtest entry. Every
observation step names its no-logging substitute. It owns only its
`SKILL.md`.

**game-release** ships a simple game well. Typed as `/game-release`, it runs
in scope mode for a wishlist, a deadline, or "am I ready" (phase and gate,
feature table, cuts, missing table stakes, calendar, scope reality; a single
feature gets the short form, one table row, and the late-addition rule) and in
launch mode for pricing, channels, demo, retention, or post-launch questions
(eight parts, from promise to post-launch loop). It owns `LAUNCH.md`, which
holds launch mode's parts.

**game-audit** checks an existing bible against the panel and brings existing
playtest, interview, and design documents into it. Typed as
`/game-audit [documents]` (no argument means the bible plus every document
under `docs/` whose heading or file name says playtest, test, session, or
interview), it reads each document headings first and only the sections that
describe a session, observation, finding, change, or hypothesis, then
produces a bible check table (each core slot: present, shape, panel note with
panelist and catalog id), a verdict per pillar (keep, sharpen, split, or drop,
with the feature it fails to rule out), a tests table, and evidence versus
pillars, with contradictions as conflict notices at the top. It offers one
Playtest entry per session, one Done experiment per idea the documents say was
built and played, and one Open question per risk the bible lacks, numbered so
a yes can be scoped ("yes to 1, 3", "yes to all playtest entries"); every
entry names its source file and section, carries `TBD: ask` where the document
is silent, and nothing is written before a yes or marked Decided. It owns only
its `SKILL.md`.

## Install

```bash
git clone <remote> game-design-skills
cd game-design-skills
make install
```

`make install` symlinks each `skills/<name>` into `~/.claude/skills/<name>`,
so `git pull` updates the installed skills. Set `DEST` to install elsewhere
(`make install DEST=~/.agents/skills`). `make uninstall` removes the links,
`make check` validates frontmatter (fields, length, and a YAML parse when
`ruby` is on PATH), `make list` names the skills.

## Layout

```
SPEC.md                         the design: architecture, shared contracts, bible, panel, tools, change plan, tests
Makefile                        install / uninstall / check / list
skills/ask-sid/                 SKILL.md, PRINCIPLES.md, DEVELOPERS.md, SOURCES.md, GENRES.md
skills/game-bible/              SKILL.md, RECORDING.md, TEMPLATE.md, INTERVIEW.md
skills/game-prototype/          SKILL.md
skills/game-mechanic-critique/  SKILL.md
skills/game-playtest/           SKILL.md
skills/game-release/            SKILL.md, LAUNCH.md
skills/game-audit/              SKILL.md
docs/tickets/CONVENTIONS.md     fixed headings, ids, paths, writing and process rules every ticket follows
docs/baseline/                  baseline scenarios and results from the v1 build, the failures each skill was written against
docs/reviews/                   external (Codex) review reports of the spec
```

## Conventions

The full list is [docs/tickets/CONVENTIONS.md](docs/tickets/CONVENTIONS.md).
The parts a reader of the skills meets first:

- Each skill is one directory with a `SKILL.md` whose frontmatter has `name`
  and a `description` starting "Use when", under 1024 characters in total.
  Only `ask-sid` is model-invoked; every other skill carries
  `disable-model-invocation: true` and is typed as a slash command.
- Skills do not call each other through the Skill tool. They hand off with a
  last line that names the next step in the world, what you will have when it
  is done, and the `/game-...` command to type then. The one Skill-tool call in
  the suite is `game-bible` calling `grilling`.
- Shared files are read by path: `GENRES.md` and `PRINCIPLES.md` in the
  `ask-sid` skill directory, `RECORDING.md` and `TEMPLATE.md` in the
  `game-bible` skill directory. The bible is
  `<git top level, else cwd>/docs/game-bible.md`, with `GAME-BIBLE.md` at the
  root as the first fallback; two matches means ask which one and stop.
- Catalog ids `P01` to `P20` are the twenty entries of `PRINCIPLES.md` in
  order. A skill cites one by id and short name (`P02 Interesting decisions`).
- Fixed headings other files cite: `ask-sid/SKILL.md` has `## Answer forms`
  (with `### Short form`, `### Full form`, `### Tool deliverables`),
  `## Panel`, `## Hand-offs`, `## Never`. `GENRES.md` has
  `## Systems, strategy, roguelike`, `## Feel, action, platformer`,
  `## Minimalist systems`, each with the same six bold fields in the same
  order. `RECORDING.md` has `## Who writes`, `## Entry types`,
  `## States and transitions`, `## Rules`, `## Bibles without states`.
- Bible entries are Decision (Proposed, Decided, Superseded), Experiment
  (Planned, Running, Done), Playtest (no state), and Open question (Open,
  Settled). A Decision the agent writes is `Proposed` until the user flips it
  to `Decided`; the other types enter in their own first state (an Experiment
  as `Planned` with `pending` results, an Open question as `Open`, a Playtest
  entry as attributed facts with no state). Slots the user did not supply
  carry `TBD: ask`.
- `SKILL.md` bodies stay at or under 700 words; reference files are as long
  as they need to be. No em-dashes. `make check` must pass.

Skills are written TDD-style per the superpowers `writing-skills` process:
baseline scenarios without the skill (`docs/baseline/`), the skill written
against the observed failures, the same scenarios re-run with it (SPEC.md,
section 9).
