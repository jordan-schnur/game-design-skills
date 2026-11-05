---
name: game-design-principles
description: Use when reasoning about whether a game, mechanic, level, system, or feature is fun, or when another game skill needs a sourced design principle, a comparable game, or a developer precedent to cite. Also use when the user asks "what's the principle that says...", "who said...", or "how do good designers handle...".
---

# Game Design Principles

The reference layer under every `game-*` skill. It holds the sourced principle catalog, the developer case studies, and the verdict shape every game design judgement takes. The lens is Sid Meier's: **a game is a series of interesting decisions**. Everything else here is a way of asking whether a decision is interesting, and how to find out from real players.

## The verdict shape

Every design judgement a `game-*` skill gives has these parts, in this order. A part with nothing to say is written as "none" rather than dropped, so the reader can see it was considered.

1. **Intent.** The player experience this element is supposed to deliver, in one sentence, tied to a pillar from the game bible when one exists.
2. **Principle.** The catalog entry or entries that bear on it, by name, with the origin as the catalog gives it. Cite one you can point at in [PRINCIPLES.md](PRINCIPLES.md); when none fits, say so.
3. **Analogs.** At least two shipped games that faced the same question, and what each did. One that agrees with the recommendation and one that does not, when such a case exists.
4. **Verdict.** The recommendation, decisive, in one or two sentences.
5. **Test.** How a real player would show the verdict right or wrong: what to vary (one variable), what to observe, what result changes the decision.
6. **Confidence.** High, medium, or low, with the reason: how well-studied the principle is, how close the analogs are, how much depends on facts about this game the agent has not seen.
7. **Record.** The bible entry this produces. Hand it to the Skill tool with "game-bible" when a bible exists, or offer to start one.

The agent reasons from principle and precedent. It never claims to know whether something is fun: only players show that, and the Test slot is where the agent says how they would.

## Catalog

- [PRINCIPLES.md](PRINCIPLES.md): the principle catalog. Each entry has Origin, Explanation, Mechanism, Examples, Counterexamples, Application, Validation, Confidence. Counterexamples are part of the entry because every principle here has a context where breaking it made a better game.
- [DEVELOPERS.md](DEVELOPERS.md): how exceptional developers and studios work: their fun philosophy, prototyping habits, how they learn from playtesting, mistakes they admit, and the transferable lesson. Includes where they disagree.
- [SOURCES.md](SOURCES.md): the primary-source library, with what each source teaches and when to consult it.

## Using the catalog honestly

- Quote a principle as the catalog states it. Where the catalog marks an attribution as paraphrase or uncertain, carry that mark into the answer.
- "Games should have challenge" is true only when challenge is a pillar. Read the game's pillars before applying any principle; for a relaxing sim, the counterexample column is the advice.
- When two developers in DEVELOPERS.md disagree (handcrafted vs procedural, for instance), present both and tie the choice to the pillars. Do not force a consensus the sources do not hold.
- Players often say they want one thing and enjoy another. Weight what players did over what they said.
