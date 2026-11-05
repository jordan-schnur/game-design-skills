# Ticket conventions

Every ticket in the spec-v3 change plan (GitHub issues labelled `ticket`) follows these rules. Tickets reference this file instead of repeating it.

## Source of truth

`SPEC.md` is the design. A ticket names the spec sections it implements; the spec wins over the v1 draft file being rewritten. Where the ticket fixes a heading, id, or path, use it exactly: other tickets are written against it.

## Fixed names other skills rely on

- Catalog ids: `P01` to `P20` are the twenty entries of `skills/ask-sid/PRINCIPLES.md` in their existing order (P02 Interesting decisions, P04 Movement itself should be fun, P07 Every feature serves a pillar, P08 Remove what creates no decision, P12 Ramp challenge with skill, P13 Teach through play, P14 Clear feedback, P15 Core fun before art, P16 Measure behavior, P18 Finish a simple game well, P20 The bible is the memory).
- `skills/ask-sid/SKILL.md` headings: `## Answer forms` with `### Short form`, `### Full form`, `### Tool deliverables`; `## Panel`; `## Hand-offs`; `## Never`.
- `skills/ask-sid/GENRES.md` headings: `## Systems, strategy, roguelike`; `## Feel, action, platformer`; `## Minimalist systems`. Each section has the same bold fields in the same order: Leads, Prototype gate, Playtest signals, Balance target, Testimony weight, Counterexample entries.
- `skills/game-bible/RECORDING.md` headings: `## Who writes`; `## Entry types`; `## States and transitions`; `## Rules`; `## Bibles without states`.
- Bible path resolution (spec section 2): `<git top level, else cwd>/docs/game-bible.md`; fallbacks `GAME-BIBLE.md` at the root, then any file whose heading contains "game bible" or "design pillars"; two or more matches means ask which; none means say so and name `/game-bible`.
- Skill-relative reads are phrased as "read `GENRES.md` in the `ask-sid` skill directory (the sibling of this skill's directory)". A skill's own files are "next to this file".

## Writing rules

- Frontmatter: `name`, `description` starting "Use when", triggers only, no workflow summary, under 1024 characters in total. Every skill except `ask-sid` carries `disable-model-invocation: true`.
- Suite skills never call each other through the Skill tool. They hand off with "type `/game-...`" and one reason. The only Skill-tool call in the suite is `game-bible` calling `grilling`.
- Positive contracts, not prohibitions: state what the output is, its parts, in order. One `## Never` list per skill at most.
- `SKILL.md` body at or under 700 words. Reference files as long as they need to be, no longer.
- No em-dashes, no emoji. Third person. `make check` must pass.
- Carry the short form's six labels inline (Verdict, Lens, Pillar check, Evidence, Test, Confidence) and cite `ask-sid/SKILL.md`, section Answer forms, for the definitions.
- Everything the agent writes into a bible is `Proposed` unless the user said otherwise; `TBD: ask` for slots the user did not supply.

## Process

- Work in your own worktree on branch `ticket/<id>` based on `spec-v3`. Confirm the base before starting.
- Skill TDD per `superpowers:writing-skills`: the RED baseline for each skill is in `docs/baseline/` (prompts, failures without a skill, v1 results). Write the skill against the spec and those failures. GREEN verification is the tests ticket, which re-runs the section 9 scenarios.
- Also follow `mattpocock-skills:writing-for-agents` for prose aimed at an agent.
- Commit with a short imperative subject; body only for a why. End every commit message with `Co-Authored-By: Claude Fable 5.1 <noreply@anthropic.com>`.
- Merge the `spec-v3` tip into your branch before reporting done. Do not push.
- The repo is public. No local paths, personal details, or session artifacts in files or commits.
