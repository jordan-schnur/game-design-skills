---
name: game-release
description: Use when the user types /game-release with a feature wishlist, a deadline, or "am I ready", or to plan launch, pricing, demo, marketing, retention, monetization, or post-launch updates.
disable-model-invocation: true
---

# Game Release

Ships a simple game well and connects it to its audience without betraying the design. Two modes:

- **Scope mode**: the request carries a wishlist, a deadline, "what next", or "am I ready".
- **Launch mode**: the request carries launch, price, channels, a retention or monetization mechanic (battle pass, daily rewards, streaks), or post-launch reviews.
- Both: scope mode, launch mode named as the next step.

## Reads

1. **The bible's core block.** `<git top level, else cwd>/docs/game-bible.md`; fallbacks `GAME-BIBLE.md` at the root, then any file whose heading contains "game bible" or "design pillars". Two or more matches: ask which. None: say so, name `/game-bible`, and proceed on pillars inferred from the request, labelled inferred. Then any Decision, Experiment, Playtest, or Open-question entry whose heading names a feature or question under discussion (grep the bible and its `docs/game-bible/*.md` archives by heading; never read whole archives).
2. **The genre section** in `GENRES.md` in the `ask-sid` skill directory (the sibling of this skill's directory).
3. **Anchors** P18 Finish a simple game well, P07 Every feature serves a pillar, P19 A distinct concept beats a gimmick; full entries in `PRINCIPLES.md` in the `ask-sid` skill directory.
4. **Launch mode only:** `LAUNCH.md` next to this file.

## Deliverable

Either mode follows the output order in `ask-sid/SKILL.md`, section Answer forms: a conflict notice when there is one, the short form (Verdict, Lens, Pillar check, Evidence, Test, Confidence; each line one or two sentences, under 150 words together), the mode's parts, Record, one hand-off line. Full form on "settle this" or "record this".

Every fact about another game (its price, hours, demo, launch) carries one of three marks: known (the user said it or it was read this session), from memory (recalled, unverified), or "none I can verify" with an offer to search.

### Scope mode

1. **Phase and gate.** The phase (concept, core prototype, expansion, systems, polish, launch prep, post-launch), the gate question for leaving it, and passed or not, with the bible entries that show it by heading and date, or "nothing recorded".
2. **Feature table.** One row per feature: pillar served (or none), decision it creates for the player, cost (small, medium, or large, in weeks for this team), table stakes (the audience punishes its absence), trailer visible, verdict (build, build small, defer, cut). The verdict column follows three rules: no pillar and no decision is cut unless table stakes; of two systems competing for the same hours, the one closer to the hook wins; a count ("40 recipes") becomes the smallest number that gates progression.
3. **Cuts with reasons.** Each cut names the pillar it fails or the cost it cannot carry, and whether post-launch is its home.
4. **Missing table stakes.** Work absent from the wishlist (save robustness, the first twenty minutes, settings, controller support where the audience expects it, store page and demo), added to the table. P18's When breaking it helped line is the one that applies.
5. **Calendar.** Build order, the polish tail (the final third carries no new features), and what slips first. A late addition needs a pillar, a small cost, and a reason it cannot wait.
6. **Scope reality.** The stated hours against a comparable shipped game's scope, marked estimate, and the smallest version that could ship.

Scope mode asks about hours, what exists, and how the core feels.

### Launch mode

The eight parts in `LAUNCH.md`, promise to post-launch loop.

## Record

The `Proposed` entries offered, shaped by `RECORDING.md` in the `game-bible` skill directory: a Decision per cut, deferral, price, or launch window (`<Feature>: remove`, `defer`, or `add`), `TBD: ask` in slots the user did not supply, each shown in full; a yes writes that one entry.

## Hand-offs

One line, last in the reply: type `/game-mechanic-critique` for the verdict on a single feature (this skill keeps the calendar); `/game-prototype` when the gate is unpassed and a build is next; `/game-playtest` with post-launch reports; `/game-bible` with no bible or an unclear north star.

## Never

- Invents a launch fact, price, date, or analog.
- Asks for prices or marketing in scope mode.
- Reports that something is fun; the test shows it.
- Writes to the bible unasked, or sets `Decided`.
