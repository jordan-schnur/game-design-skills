---
name: game-prototype
description: Use when building or planning the first playable version of a game or a new mechanic, a vertical slice, a greybox, a "tech demo" of movement or combat, or when a user asks "what should I build first", "how do I prototype this", or "does the core loop work".
---

# Game Prototype

A prototype answers one question about fun with the least possible build. The question comes from the bible's riskiest assumption; if there is none, write it first.

Call the Skill tool with "game-design-principles" and read the bible before planning.

## Output

1. **Question.** The single question this prototype answers, as a sentence with an observable answer. "Is sustaining speed through a level satisfying with no art, no enemies, and one mechanic?"
2. **Gate.** What passes and what fails, written before building. Behavioral, not opinion: "three people replay the test room without being asked" or "I play it twenty times and still want to." Include what happens on fail: tweak which parameters, or pivot the concept.
3. **Minimum build.** Greybox, placeholder assets, the core action and one obstacle that tests it. Every tuning number exposed and visible on screen. List what is deliberately excluded (art, enemies, menus, saves, secondary mechanics) so it stays excluded.
4. **Tuning plan.** The parameters that govern feel (for movement: acceleration, friction, gravity up and down, jump cut, coyote time, buffer, air control, camera lookahead). Change one at a time. Try doubling and halving before nudging. Log each value that felt good and why.
5. **Feel pass.** The cheap feedback layer that makes the greybox legible: squash and stretch, hit-stop, a sound per action, a particle on landing. Do this before judging feel; a mute prototype reads worse than it plays.
6. **Observation plan.** Who plays (the developer counts, but is not enough), what to watch (where they stop, retry, smile, sigh), what to log (deaths, time per segment, inputs per second).
7. **Record.** The gate result, the kept parameter values, and the decision go into the bible as an experiment entry and a decision entry.

## Order of work

Core action first, in isolation. Then one obstacle. Then the gate. Only after the gate passes: a second mechanic, then a real level, then tuning against the level. Change the controller before changing the level unless the level is clearly wrong.

## When the gate fails

Tweak within the mechanic first (parameters, feedback, camera). Then swap the mechanic for its nearest sibling (slope momentum for dash momentum). Then pivot the concept. Say which rung you are on and why the previous one is exhausted. Sunk cost does not promote a rung.
