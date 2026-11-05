# game-design-skills

Claude Code skills that act as a game design panel for a solo developer:
one skill that speaks up on design ideas (`ask-sid`), a bounded interview that
defines the game's north star and keeps a game bible (`game-bible`), and four
tools typed when a question needs a process (`game-prototype`,
`game-mechanic-critique`, `game-playtest`, `game-release`).

Built from a research report on what makes games fun (GDC talks, postmortems,
developer interviews). The design is in [SPEC.md](SPEC.md); the skills in
`skills/` are the v1 draft that the spec's change plan revises.

## Install

```bash
git clone <remote> ~/dev/game-design-skills
cd ~/dev/game-design-skills
make install
```

`make install` symlinks each `skills/<name>` into `~/.claude/skills/<name>`,
so `git pull` updates the installed skills. Set `DEST` to install elsewhere
(`make install DEST=~/.agents/skills`). `make uninstall` removes the links,
`make check` validates frontmatter, `make list` names the skills.

## Layout

```
SPEC.md             the design under review, with decisions and review adjudication
skills/<name>/      one directory per skill, SKILL.md plus reference files
docs/reviews/       external (Codex) review reports
docs/baseline/      baseline and with-skill test notes from the v1 build
Makefile            install / uninstall / check / list
```

## Conventions

Each skill is one directory with a `SKILL.md` (YAML frontmatter: `name`,
`description`). Only `ask-sid` is model-invoked; every other skill carries
`disable-model-invocation: true` and is typed as a slash command. Skills do
not call each other through the Skill tool; they hand off by naming the
command to type, and read shared files by path. No em-dashes in prose.

Skills are written TDD-style per the superpowers `writing-skills` process:
baseline scenarios without the skill, the skill written against the observed
failures, the same scenarios re-run with it.
