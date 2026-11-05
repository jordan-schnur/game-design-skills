---
name: game-release
description: Use when the user types /game-release with a feature wishlist, a deadline, or "am I ready", or to plan launch, pricing, demo, marketing, retention, monetization, or post-launch updates.
disable-model-invocation: true
---

# Game Release

Ships a simple game well and connects it to its audience without betraying the design.

- **Scope mode**: a wishlist, a deadline, "what next", "am I ready", or one feature.
- **Launch mode**: launch, price, channels, a retention or monetization mechanic (battle pass, daily rewards, streaks), or post-launch reviews.
- Both: scope mode, naming launch mode as next.

## Reads

1. **The bible's core block.** `<git top level, else cwd>/docs/game-bible.md`; fallbacks `GAME-BIBLE.md` at the root, then any file whose heading contains "game bible" or "design pillars". Two or more matches: ask which one and stop. None: say so, name `/game-bible`, and proceed on pillars inferred from the request, labelled so. Then any Decision, Experiment, Playtest, or Open-question entry whose heading or `Tested:` line names a feature or question under discussion (grep those lines in the bible and its `docs/game-bible/*.md` archives; never read whole archives).
2. **The genre section** in `GENRES.md` in the `ask-sid` skill directory (the sibling of this skill's directory).
3. **Anchors** P18 Finish a simple game well, P07 Every feature serves a pillar, P19 A distinct concept beats a gimmick; full entries in `PRINCIPLES.md`, same directory.
4. **Launch mode only:** `LAUNCH.md` next to this file.

## Deliverable

Either mode follows the output order in `ask-sid/SKILL.md`, section Answer forms: conflict notice, save report, the short form (Verdict, Lens, Pillar check, Evidence, Test, Confidence; one sentence each, under 120 words together), the mode's parts as the deliverable, Record, one hand-off line. Full form on "settle this" or "record this". Facts about other games carry the three marks defined in `LAUNCH.md` next to this file (known, from memory, "none I can verify").

### Scope mode

**A single feature** ("should I add a shop before the demo?") gets the short form, one feature-table row, and the late-addition rule in one sentence: a late addition needs a pillar, a small cost, and a reason it cannot wait. The six parts below answer a wishlist, a deadline, "what next", or "am I ready".

1. **Phase and gate.** The phase (concept, core prototype, expansion, systems, polish, launch prep, post-launch), its exit gate question, passed or not, with the bible entries showing it by heading and date, or "nothing recorded".
2. **Feature table.** One row per feature: pillar served (or none), decision it creates for the player, cost (small, medium, large, in weeks for this team), table stakes (the audience punishes its absence), trailer visible, verdict (build, build small, defer, cut). Verdict rules: no pillar and no decision is cut unless table stakes; of two systems competing for the same hours, the one closer to the hook wins; a count ("40 recipes") becomes the smallest number that gates progression.
3. **Cuts with reasons.** Each cut names the pillar it fails or the cost it cannot carry, and whether post-launch is its home.
4. **Missing table stakes.** Work absent from the wishlist (save robustness, first twenty minutes, settings, controller support where expected, store page, demo), added to the table. P18's When breaking it helped line applies.
5. **Calendar.** Build order, the polish tail (the final third adds no features), what slips first; the late-addition rule above applies.
6. **Scope reality.** The hours shown as a multiplication (16 weeks times 10 hours a week is 160 hours), not a bare figure, against a comparable shipped game's scope, marked estimate, and the smallest shippable version.

Scope mode asks for hours, what exists, and how the core feels.

### Launch mode

The eight parts in `LAUNCH.md`, promise to post-launch loop.

## Record

The `Proposed` entries offered, shaped by `RECORDING.md` in the `game-bible` skill directory: a Decision per cut, deferral, price, or launch window, `TBD: ask` in unsupplied slots, each shown in full; a yes writes that one entry.

## Hand-offs

Last line: type `/game-mechanic-critique` for the verdict on a single feature (this skill keeps the calendar); `/game-prototype` when the gate is unpassed; `/game-playtest` with post-launch reports; `/game-bible` with no bible or unclear north star.

## Never

- Invents a launch fact, price, date, or analog.
- Asks for prices or marketing in scope mode.
- Reports that something is fun; the test shows it.
- Writes to the bible unasked, or sets `Decided`.
