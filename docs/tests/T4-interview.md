# T4 Interview

Five fresh Sonnet agents, each told the user typed `/game-bible <argument>` and given the skill body (SKILL, INTERVIEW, TEMPLATE, RECORDING): I1, I3, I4 and I5 in copies of the `empty` fixture, I2 in a copy of the `nonbible` fixture, with the user's answers scripted in the prompt. Suite at commit b567f35.

Caveat on the engine: in I1 to I4 the grilling skill loaded, but its answer pane cannot return answers in a headless run, so all four fell back to the inline round format from INTERVIEW.md. I5 was told the skill was absent and ran the same format. The pane path is therefore untested here; what was tested is the brief, the round format, the exit conditions and the write.

| Scenario | Prompt | Criteria from PLAN.md | Verdict |
|---|---|---|---|
| I1 | "a game about running a lighthouse", bare idea | Every slot filled or TBD with question: met, all seven filled, none deferred. North star one sentence: met, confirmed in round 1. Each pillar names a rules-out: met, four pillars, each with a feature. Bible from TEMPLATE with Proposed marks: met, agent drafts Proposed; two user-stated facts marked Decided. Open question and Planned experiment pending: met, Observed and Verdict pending. Final line names /game-prototype: met. | pass |
| I2 | half-built platformer with stale design.md | Reads design.md first: met, before any question. Asks intended experience before describing what is built: met, round 1 asks the feeling. Does not rewrite design.md: met, untouched. Writes docs/game-bible.md linking to it: met, named as earlier notes. Shop and crafting tested against pillars: met, pillar 3 rules both out. | pass |
| I3 | 200-word pitch supplied | Asks only what the pitch does not answer: met, four questions (north star compression, hook twist, pillars' rules-outs, riskiest assumption); non-goals, target player, core loop shown as Proposed without questions. Same exit conditions: met, all slots filled, bible written, /game-prototype last line. | pass |
| I4 | "a tower defense thing", answers "fun" then "idk" | After two short rounds stops, states what it wants, asks for own words: met, escalation after round 2 in one paragraph. Derives remaining slots and confirms each: met, six questions, six separate yes answers. | pass |
| I5 | two-player bluffing card game, grilling absent | Inline round format with the same brief: met, slot-titled numbered questions, one Recommended, Options ending in write your own. Same exit conditions: met, one deferral (deadline) as TBD: ask. | pass |

Verdict: pass, 5 of 5.

Readings used:

- I3 "asks only what the pitch does not answer": the pitch gave a hook sentence and three pillar noun phrases; the agent asked the user to confirm a compressed north star and the drafted rules-out per pillar. I counted confirming a compression as not re-asking, since the pitch did not supply either the one-sentence form or the rules-outs. Under a stricter reading Q1 and Q3 re-ask settled slots and I3 would be partial.
- I1 "with Proposed marks": agent-drafted slots Proposed, which is what the plan tests. The constraints line and the no-multiplayer non-goal were marked Decided by the user because the user stated them as facts; the agent flagged this and offered to revert.

Side findings:

- I5 marked every confirmed core slot Decided by the user, while I1 to I4 marked the same kind of slot Proposed. The I5 agent itself reports that TEMPLATE.md, RECORDING.md and SKILL.md disagree on whether a confirmed slot is Proposed or Decided. One rule is needed.
- I2 ran thirteen rounds of one question each because the scripted bare "yes" cannot be matched to several pending questions; a real user answering by number would see fuller rounds. I1 and I4 batched questions and read the scripted answers by number instead. The brief allows both; the transcripts show the format tolerates either.
- Analogs in the hook check (I1, I3, I4, I5) were named from memory and marked unverified, with a search offered and never run because no scripted answer asked for one. I1's scope line leans on a recalled development time it flags as unverified.
