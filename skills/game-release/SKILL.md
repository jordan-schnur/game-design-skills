---
name: game-release
description: Use when the user types /game-release with a feature wishlist, a deadline, or "am I ready", or to plan launch, pricing, demo, marketing, retention, monetization, or post-launch updates.
disable-model-invocation: true
---

# Game Release

Ships a simple game well and connects it to its audience without betraying the design. Two modes, picked from the request:

- **Scope mode**: the request carries a wishlist, a deadline, "what next", or "am I ready".
- **Launch mode**: the request carries launch, price, channels, a retention or monetization mechanic (battle pass, daily rewards, streaks), or post-launch reviews.
- Both: scope mode, with launch mode named as the next step.

## Reads

1. **The bible's core block.** `<git top level, else cwd>/docs/game-bible.md`; fallbacks `GAME-BIBLE.md` at the root, then any file whose heading contains "game bible" or "design pillars". Two or more matches: ask which. None: say so, name `/game-bible`, and proceed on pillars inferred from the request, each labelled inferred.
2. **The genre section** in `GENRES.md` in the `ask-sid` skill directory (the sibling of this skill's directory).
3. **Anchors** P18 Finish a simple game well, P07 Every feature serves a pillar, P19 A distinct concept beats a gimmick; full entries in `PRINCIPLES.md` in the `ask-sid` skill directory.
4. **Launch mode only:** `LAUNCH.md` next to this file, which holds that mode's parts.

## Deliverable

Either mode opens with the short form, six labelled lines in order (Verdict, Lens, Pillar check, Evidence, Test, Confidence), defined in `ask-sid/SKILL.md`, section Answer forms. The mode's parts follow, then Record and Hand-offs.

Every fact about another game (its price, hours, demo, launch) carries one of three marks: known (the user said it or it was read this session), from memory (recalled, unverified), or "none I can verify" with an offer to search.

### Scope mode

1. **Phase and gate.** The phase (concept, core prototype, expansion, systems, polish, launch prep, post-launch), the gate question for leaving it, and passed or not, with the bible entries that show it by heading and date, or "nothing recorded".
2. **Feature table.** One row per feature: pillar served (or none), decision it creates for the player, cost (small, medium, or large, in weeks for this team), table stakes (the audience punishes its absence), trailer visible, verdict (build, build small, defer, cut). The verdict column follows three rules: no pillar and no decision is cut unless table stakes; of two systems competing for the same hours, the one closer to the hook wins; a count ("40 recipes") becomes the smallest number that gates progression.
3. **Cuts with reasons.** Each cut names the pillar it fails or the cost it cannot carry, and whether post-launch is its home.
4. **Missing table stakes.** Work absent from the wishlist (save robustness, the first twenty minutes, settings, controller support where the audience expects it, store page and demo), added to the table. P18's Counterexamples line is the one that applies.
5. **Calendar.** Build order, the polish tail (the final third carries no new features), and what slips first. A late addition needs a pillar, a small cost, and a reason it cannot wait.
6. **Scope reality.** The stated hours against a comparable shipped game's scope, marked estimate, and the smallest version that could ship.

Scope mode's questions are about hours, what already exists, and how the core feels; prices and marketing wait for launch mode.

### Launch mode

The eight parts in `LAUNCH.md`: promise, audience and channels, analog launches, demo and trailer, pricing, timeline, retention and monetization, post-launch loop.

## Record

The reply ends with the `Proposed` entries it offers, shaped by `RECORDING.md` in the `game-bible` skill directory: a Decision per cut, deferral, price, or launch window (`<Feature>: remove`, `defer`, or `add`), with `TBD: ask` in slots the user did not supply. Each is shown in full; a yes writes that one entry.

## Hand-offs

One line each, after the short form: type `/game-mechanic-critique` for the verdict on a single feature ("add X before shipping"; this skill keeps the calendar); `/game-prototype` when the gate is unpassed and a build comes next; `/game-playtest` with post-launch reports; `/game-bible` when there is no bible or the north star is unclear.

## Never

- Invents a launch fact, price, date, or analog.
- Asks for prices or marketing in scope mode.
- Reports that something is fun; the test is what shows it.
- Writes to the bible unasked, or sets `Decided`.
