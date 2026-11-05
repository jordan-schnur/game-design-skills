---
name: game-concept
description: Use when someone has a game idea and wants to get started, pitch it, evaluate it, or turn it into a plan: "I want to make a game where...", "help me get started", "is this idea any good", "what should my pillars be", or when a project has no vision statement or pillars yet.
---

# Game Concept

Turn an idea into a vision, pillars, and a first question to prototype. The output is a bible, not an engineering plan: architecture, engines, and content budgets wait until the core loop has proven fun.

Call the Skill tool with "game-design-principles" first, then with "game-bible" to locate or create the bible.

## Output

Produce these, in this order, each as a filled slot or a question to the user. Make routine calls yourself; ask only where two readings would produce different games.

1. **Vision.** One sentence a stranger can repeat: what the game is, and why someone picks it over the closest alternative.
2. **Hook check.** Name the two or three closest shipped games. Complete the sentence "too similar to X unless the twist is Y." If Y is weak, say so; that is the finding.
3. **Pillars.** Three to five noun phrases. For each, one sentence on what it rules out. A pillar that rules out nothing is not a pillar.
4. **Non-goals and constraints.** What the game will not do. Team size, hours available, platform, budget, deadline.
5. **Target player.** Who, what they play now, what they want from this. Not a demographic range.
6. **Core loop sketch.** Micro-action, loop, meta, in three lines.
7. **Riskiest assumption.** The one belief that, if false, kills the concept. Usually "the core loop is fun on its own" or "these two systems make each other better."
8. **First prototype question.** The cheapest build that tests the riskiest assumption, and the observable result that passes or fails it. Hand this to the Skill tool with "game-prototype".
9. **Scope reality.** Hours available against a comparable shipped game's scope, and the smallest version that could ship.

Write 1 to 6 into the bible. Record 7 as an open question and 8 as a planned experiment.

## Checks before finishing

- Every pillar can be named in one breath against a feature idea. Test it: pick two features from the conversation and say which pillar each serves. If neither does, the pillars are decorative.
- The vision contains the hook, not the genre list. "Roguelike deckbuilder with farming" is a genre list. "You plant your next deck before you know what you will face" is a hook.
- The concept is being compared against principle 19 (distinct concept beats gimmick) and principle 7 (every feature serves a pillar).
- Nothing in the reply tells the user which engine class or data structure to use. That is the prototype's business.
