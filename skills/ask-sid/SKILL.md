---
name: ask-sid
description: Ask which game design skill or flow fits where your game project is right now. A router over the game-* skills, in the voice of a designer who thinks a game is a series of interesting decisions.
disable-model-invocation: true
---

# Ask Sid

You do not remember every game skill, so ask. Sid Meier's lens runs through all of them: **a game is a series of interesting decisions.** Every skill here asks, in its own phase, whether a decision is interesting and how real players would show it.

Before stating what a skill does or recommending a step be skipped, read that skill's SKILL.md: the summaries here are for orientation only. This is a router, not a role-play; the skills reason from Meier's principles and precedents, they do not impersonate anyone.

A **flow** is a path through the skills. Most work travels one **main flow**; a few **on-ramps** merge onto it. Two layers run underneath everything.

## The main flow: idea to ship

1. **`/game-concept`** turns an idea into a vision sentence, a hook check against the closest games, three to five pillars, non-goals, a target player, and the riskiest assumption. It opens the bible. Start here whenever a project has no pillars written down, even if code already exists.
2. **`/game-prototype`** builds the cheapest thing that tests the riskiest assumption, usually "is the core action fun in greybox, alone?" It writes the pass/fail gate before building and tunes one parameter at a time.
   - **Gate: is the core fun ugly?** Pass: expand. Fail: tweak the mechanic, swap it for its sibling, or pivot the concept, in that order. Sunk cost does not skip a rung.
3. **Expand, one mechanic at a time.** Each addition runs the loop:
   - **`/game-mechanic-critique`** gives the verdict (add, remove, change, defer) with pillar check, principle, analogs, test, and confidence, before anything is built.
   - **`/game-playtest`** reads what players did, states the intent-behavior gap, writes a hypothesis, and designs a one-variable experiment.
   - **`/game-balance`** does the math when numbers or systems are involved: finds the dominant line, calls it emergent or degenerate, ranks single-number changes.
   - **Gate: does the game still match its pillars?** Ask it after every addition. A no means revisit the feature or, deliberately, the pillar.
4. **`/game-scope`** decides what gets built, built small, deferred, or cut, by pillar alignment and fun per development cost, and whether the project passes its phase gate. Run it whenever a wishlist appears and again when the deadline gets real. Finish a simple game well.
5. **`/game-release`** turns the vision and target player into the promise the store page, trailer, and demo must deliver; prices against analogs; judges retention and monetization ideas against the pillars; sets up the post-launch loop, which feeds back into `/game-playtest`.

## On-ramps

- **"Players say X is too hard / boring / confusing"** → **`/game-playtest`**. Reports are not verdicts. The skill finds the cause and designs the test.
- **"Should I add X?"** or a feature request from anyone → **`/game-mechanic-critique`**. Decisive, with the request behind the request named.
- **"Everyone picks X"** or a table of numbers → **`/game-balance`**.
- **A wishlist, a deadline, or "am I ready?"** → **`/game-scope`**.
- **"We decided..."** or "write that down" → **`/game-bible`** directly.
- **"How do I launch / price / should I add a battle pass?"** → **`/game-release`**.

## Layers underneath

- **`/game-bible`** is the memory. One living document: vision, pillars, rules, constraints, experiments, playtest log, decisions with rationale, open questions. Every skill above reads it before judging and writes to it after deciding. A decision entry never invents a rationale; a missing one is written as `TBD: ask`.
- **`/game-design-principles`** is the vocabulary: the sourced principle catalog with counterexamples and confidence, the developer case studies (Meier, Miyamoto, Miyazaki, Blow, Valve, Larian, Wube, Barone, Supergiant) and where they disagree, the source library, and the **verdict shape** every judgement takes: intent, principle, analogs, verdict, test, confidence, record. Reach for it directly when the words or the precedent are the question.

## What the agent never does

It never reports that something is fun. Fun is shown by players; the agent writes the hypothesis and the test. AI simulation finds dominant strategies and rule conflicts, not enjoyment. Every judgement carries a confidence word and the facts about this game the agent has not seen.

## Starting cold

No bible, code exists, players already complaining: run **`/game-concept`** anyway to write the pillars from what the game already is, then go to the on-ramp that matches the complaint. Pillars written late are still better than judgement with none.
