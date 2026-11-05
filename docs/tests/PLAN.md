# Section 9 test plan

Pass criteria written before any run. Each scenario runs in a fresh agent against a copy of a fixture repo. `ask-sid` is exercised through the real Skill tool (the agent gets only the user's words). Typed tools are exercised the way a slash command works: the agent is told the user typed `/game-<tool> <args>` and is given the skill body to follow. Results in `docs/tests/<group>.md`.

Fixtures: `rogue` (roguelike deckbuilder, full v3 bible with Decided, Proposed, Planned, Playtest, Open entries), `metro` (minimalist, v3 bible), `empty` (no bible), `two` (two matching bibles), `nonbible` (stale design doc, no bible), `big` (v1-style bible without state lines, twelve decisions past fifty lines).

## T1 Trigger (15 fresh agents, fixture rogue)
Design prompts (ask-sid must fire): D1 "I'm thinking of adding a shop between fights where you can remove a card for gold." D2 "A tester said the boss in act 3 is unfair." D3 "Should the degrade effect hit a random card or one the player picks?" D4 "What would Sid Meier think about my deck cap of 15?" D5 "Is 20 minutes too long for a run?"
Unrelated (must not fire): U1 "Write a bash one-liner that counts lines in every .md file here." U2 "What's the capital of Mongolia?" U3 "Summarize the plot of Dune in three sentences." U4 "Help me write a cover letter for a data analyst job." U5 "Convert 72 Fahrenheit to Celsius."
Game code (must not fire): C1 "My Godot shader flickers when the camera moves; here is the fragment code: ..." C2 "What save-file format should I use for a deckbuilder, JSON or SQLite?" C3 "The card tooltip overlaps the degrade indicator at 1080p, how do I anchor it?" C4 "How do I profile GC spikes in Unity?" C5 "Write a C# struct for a card with cost, damage, and a degrade target."
Pass: 5/5 fire, 0/10 fire. One miss in either direction is a fail for the group.

## T2 Short form holds (12 agents)
Q1 to Q5 quick (fixture rogue, through ask-sid): "Should relics be able to cancel a card's downside?", "Is a hard deck cap of 15 too small?", "Players keep picking the heal card, is that a problem?", "Should I show the degraded card before or after the pick?", "Would a daily run mode fit?"
Pass: answer is the six labelled lines (Verdict, Lens, Pillar check, Evidence, Test, Confidence) and nothing else beyond one lead-in sentence; Lens names a panelist and a P-id; Evidence cites the bible or says nothing recorded; under 180 words.
S1 to S5 "settle this" (same five questions prefixed "Settle this:"). Pass: short form plus Intent, Analogs (two, or "none I can verify"), Counterexample, Record with a Proposed entry.
B1 quick balance through /game-mechanic-critique: "Is a 15 card cap balanced?" with no numbers. Pass: short form plus the two lines, no numbers branch.
R1 quick scope through /game-release: "Should I add a shop before the demo?" Pass: short form lead, compact feature row, no prices or marketing asked.

## T3 Grounding (1 agent, fixture rogue, ask-sid)
"I want to add unlockable characters you earn by finishing runs." Pass: Evidence line names the Decided entry "Permanent unlocks between runs: remove" and pillar 2; verdict is not provisional.

## T4 Interview (5 agents, /game-bible define)
I1 bare idea (fixture empty): user opens with "a game about running a lighthouse". The agent plays the user with scripted short answers given in the prompt. Pass: ends with every slot filled or TBD with a settling question; north star one sentence; each pillar names what it rules out; bible written from TEMPLATE with Proposed marks; Open question and Planned experiment with pending fields; final line names /game-prototype.
I2 half-built game with stale doc (fixture nonbible). Pass: reads design.md first; asks the intended experience before describing what is built; does not rewrite design.md; writes docs/game-bible.md linking to it; the shop and crafting menu are tested against pillars.
I3 detailed pitch (fixture empty, a 200-word pitch supplied). Pass: asks only what the pitch does not answer; same exit conditions.
I4 escalation (fixture empty): scripted user answers "fun" then "idk" to the north star question. Pass: after two short rounds on that slot the agent stops asking short questions, states what it is looking for, and asks for the user's own words; then derives remaining slots and confirms each.
I5 grilling unavailable (fixture empty): agent is told the grilling skill is not installed. Pass: runs the inline round format with the same brief; same exit conditions.

## T5 Persistence round trips (fixture rogue, typed tools, 5 agents)
P1 /game-mechanic-critique "add a shop" then user says yes to the offered entry, then run /game-release scope and /game-playtest once each. Pass: the shop entry stays Proposed; no entry changes to Decided.
P2 /game-prototype on the riskiest assumption. Pass: offered Planned experiment has Observed: pending and Verdict: pending; no invented results.
P3 /game-bible record "we decided to add run-count unlocks for cosmetics". Pass: conflict with the Decided entry and pillar 2 surfaced at the top; entry written as Proposed (user did not say Decided... they said decided: then written Decided only if the user is the one saying so; the test checks the conflict is surfaced and the old entry is not deleted).
P4 /game-bible record "Decided: deck cap is now 12, replaces the 15 cap". Pass: new Decided entry with Supersedes naming the old one; old entry marked Superseded, text kept.
P5 /game-bible record the relic slot again with a new rationale. Pass: existing Proposed entry updated in place; no duplicate heading.

## T6 Bible edge cases (4 agents, ask-sid)
E1 fixture empty: Pass: Pillar check says "no bible yet: /game-bible". E2 fixture two: Pass: asks which bible. E3 fixture nonbible: Pass: does not treat design.md as the bible; names /game-bible. E4 fixture big: Pass: reads it; decisions without a state line are treated as Proposed unless the user confirms; says the section is past fifty lines.

## T7 Missing evidence (1 agent, fixture rogue, /game-release launch)
"How did 'Cobalt Core' launch and what did it charge?" Pass: analog marked known, from memory, or "none I can verify"; offers to search; no invented numbers stated as fact.

## T8 Genres (3 agents)
G1 fixture metro, ask-sid: "Should I add a second boat type that is faster?" Pass: Lens names the minimalist section and restraint; verdict tests against "less". G2 fixture metro, /game-prototype. Pass: gate is one rule set producing growing legible pressure, not isolate-one-action. G3 fixture rogue, /game-mechanic-critique with numbers: "Strike 6 dmg cost 1, Bash 8 dmg cost 2 and degrades Strike by 2, Cleave 4 dmg to all cost 1; typical fight 3 enemies 12 hp each, 3 energy per turn." Pass: normalized table (damage per energy, per turn), assumptions listed, dominance and lever named, ranked single changes, simulation offer with its limit, arithmetic correct.

## T9 Few testers (1 agent, fixture rogue, /game-playtest)
"One friend played for 40 minutes, said it was fine, I have no logs." Pass: tally sheet, screen recording, ask-where-they-stopped substitutes; no telemetry plan; small sample stated as a reason to look; experiment sized to one tester with learning effect named.

## T10 Against plain Claude (3 pairs)
Prompts from docs/baseline: 01-concept, 03-mechanic, 04-playtest openers, run with the suite and without (agent told no skills are available). Scored: factual errors (named games or facts that are wrong or unverifiable stated as fact), unsupported decisions (verdict with no test or evidence line), bible entry offered or written afterwards.
