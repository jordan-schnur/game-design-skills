# Define interview

The brief `game-bible` define passes to the `grilling` skill, and runs inline when that skill is unavailable. The Brief section is passed verbatim, followed by the slots read-first already settled. The sections after it are for this skill: where each recommendation comes from, what accepts it, and the inline round format.

## Brief

Interview the user to find a game's north star and the six slots that hang off it. The frontier is these seven slots and nothing else: north star, hook check, pillars, non-goals and constraints, target player, core loop, riskiest assumption. Rules, systems, levels, art, engine, and content are outside the frontier and are not asked.

- Title each question by its slot. One recommendation per question, drafted from what the user has said and what the project files hold. "Yes" accepts that recommendation and nothing else; other open slots keep their own questions in the same round.
- Facts are the agent's job: read the repository, the pitch, the existing bible. Name comparable shipped games only when they can be named with confidence; otherwise "none I can verify" and an offer to search, taken only on the user's yes. Decisions are the user's.
- Prerequisites: north star first; hook check and pillars once a north star draft exists; the remaining slots as what they depend on settles.
- Escalation: a slot asked in two rounds of short questions and still open gets no more short questions. Say what is being looked for, ask the user to write it in their own words at any length, derive the remaining slots from that text, and confirm each as its own question.
- Done when every slot is filled or explicitly deferred as `TBD: <the question that would settle it>`, the north star is one sentence, and every pillar has ruled out a real feature. Deferred slots are legitimate; silent gaps are not. Then the bible is written; nothing is acted on before the user confirms the core.

## Slots

Shape, where the recommendation comes from, and what accepts it, per slot. The written form of each is in `TEMPLATE.md` next to this file.

### North star

- Shape: one sentence a stranger can repeat: the experience the game exists to deliver and why someone picks it over the closest alternative. The hook, not the genre list. "Roguelike deckbuilder with farming" is a genre list; "you plant your next deck before you know what you will face" is a hook.
- Recommendation from: the user's own words about the moment they want the player to have, compressed to one sentence.
- Accepted when: the user says yes, or edits the sentence and confirms. A sentence that lists genres goes back as a new question with a hook drafted from the user's answer.

### Hook check

- Shape: "too similar to X unless the twist is Y", with the two or three closest shipped games, or "none I can verify".
- Recommendation from: games the agent can name with confidence that share the loop or the fantasy. A weak Y is the finding; the question says so and asks for a stronger twist or an accepted risk.
- Accepted when: the user confirms the twist, names a stronger one, or accepts the similarity as a known risk (recorded as such).

### Pillars

- Shape: three to five noun phrases, each with one real feature it rules out.
- Recommendation from: the north star. For each pillar, propose the feature it excludes, taken from features the user has mentioned where possible. Test the set: pick two features from the conversation and say which pillar each serves. A feature no pillar touches, or a pillar that rules out nothing, is sent back in the next round.
- Accepted when: each pillar has a rules-out the user accepted or replaced.

### Non-goals and constraints

- Shape: what the game will not do; team size, hours per week, platform, deadline. One scope-reality line: the stated hours against a comparable shipped game's scope, marked as the agent's estimate, with the smallest version that could ship.
- Recommendation from: non-goals follow from the pillars (what they exclude at project level). Team, hours, platform, and deadline are facts only the user holds; they are asked plainly in one question and deferred as `TBD` if unknown.
- Accepted when: the non-goals are confirmed and the constraints are stated or deferred.

### Target player

- Shape: who, what they play now, what they want from this. A person, not a demographic range.
- Recommendation from: the player of the closest game named in the hook check, with what they want that game does not give them.
- Accepted when: the user confirms or corrects all three parts.

### Core loop

- Shape: three lines. Micro: the action repeated every few seconds. Loop: the cycle of a session or run. Meta: what carries across sessions, or "none" for a game with no persistence.
- Recommendation from: the north star and the user's description of play.
- Accepted when: the user confirms the three lines.

### Riskiest assumption

- Shape: the belief that, if false, kills the concept, and the slash command that tests it. Usually "the core loop is fun on its own" or "these two systems make each other better".
- Recommendation from: the belief the north star depends on most and has the least evidence for.
- Accepted when: the user confirms the belief. It is then written as an Open question (threatens: the north star) and a Planned experiment whose hypothesis is the assumption as a sentence that can be wrong, with variable changed and gate drafted as `Proposed`, `Observed: pending`, `Verdict: pending`. `/game-prototype` refines the gate.

## Escalation

What the reply says it is looking for, per slot that commonly escalates:

- North star: the one sentence every later cut is measured against.
- Pillars: the three to five things the game protects even when a feature is fun.
- Riskiest assumption: the belief that, if wrong, means stopping.

Target player, core loop, constraints, and hook check are mostly facts; they are asked once more and deferred as `TBD` with the settling question if the user does not have them.

After the user's text: derive every remaining slot from it, show each derivation as `Proposed`, and confirm each as its own question in one round. A derivation the user rejects becomes a deferred slot, not another short question.

## Read-first

Look in: the bible location and fallbacks from `RECORDING.md`, then `docs/`, the README, and any pitch or design doc. What a file answers becomes a `Proposed` draft, confirmed in one line that names the file. A stale doc (it describes features the code no longer has) is still read; the confirmation names the gap.

For a game that already exists, the first question is the intended experience: what the player was meant to feel, asked before any description of what is built.

## Inline round format

Used when the `grilling` skill is unavailable. Every open frontier question in one reply, then wait for the answers.

```
Q1 North star
<question, with the facts read from the project that bear on it>
Recommended: <one sentence>
Options: <alternative A> / <alternative B> / write your own

Q2 Hook check
...
```

Settled answers reshape the frontier: the next round asks only the slots whose prerequisites are now settled and that remain open.
