# T2 Short form holds

Twelve fresh Sonnet agents, each in a copy of the `rogue` fixture: Q1 to Q5 and S1 to S5 reached `ask-sid` through the real Skill tool with only the user's words, B1 ran as a typed `/game-mechanic-critique` and R1 as a typed `/game-release`, each given the skill body. Suite at commit b567f35. Word counts exclude the harness's trailing `SKILLS INVOKED` line; the figure in parentheses for Q1 to Q4 counts only the six labelled lines.

Readings used for ambiguous criteria:

- "The six labelled lines and nothing else beyond one lead-in sentence": a trailing hand-off line is something else, so it breaks the criterion. Under the lenient reading (one hand-off line allowed, as the suite's own short-form rule permits) Q1 to Q4 would meet the structure criterion. They fail the length criterion either way, so no verdict changes.
- "Record with a Proposed entry": a Decision entry in state Proposed, shown so the user can say yes. An offered Experiment or Open question is not one under this reading. Under the lenient reading (any entry offered and not flipped to Decided) S2 and S3 would pass.
- "Compact feature row" (R1): the shop appears as a row in the feature table rather than as a launch plan. R1 produced the full scope mode (six rows, calendar, cuts), which meets that reading but is not compact.

## Quick form (Q1 to Q5)

| Scenario | Prompt | Six lines, one lead-in | Lens: panelist and P-id | Evidence cites bible | Under 180 words | Verdict |
|---|---|---|---|---|---|---|
| Q1 | relics cancel a card's downside | not met: conflict notice plus hand-off line | met: Meier, Blow, P07, P06 | met: relic entry, playtest quote | not met: 214 (194) | fail |
| Q2 | hard deck cap of 15 too small | not met: hand-off line after Confidence | met: Meier, Wube, P06 | met: cap decision, playtest, experiment | not met: 206 (189) | fail |
| Q3 | players keep picking the heal card | not met: extra advice line and hand-off | met: Meier, Wube, P11, P06 | met: playtest quote, no pick data | not met: 228 (195) | fail |
| Q4 | show degraded card before or after pick | not met: hand-off line | met: Meier, Wube, P02, P06 | met: Planned experiment named | not met: 237 (221) | fail |
| Q5 | would a daily run mode fit | not met: bullets, two extra sections, record offer | met: Meier P07, Barone P18 | met: unlocks decision, playtest, experiment | not met: 523 | fail |

## Settle this (S1 to S5)

| Scenario | Prompt | Short form present | Intent | Analogs | Counterexample | Record: Proposed entry | Verdict |
|---|---|---|---|---|---|---|---|
| S1 | settle: relics cancel downside | met: six lines after one lead-in | met | met: "none I can verify", search offered | met: P06 sandboxes line | met: fills existing Proposed entry, not written | pass |
| S2 | settle: cap of 15 | met | met | met: "none I can verify" plus one catalog lead | met: P06 sandboxes line | not met: offers an Experiment, no Proposed Decision shown | partial |
| S3 | settle: heal card | met | met | met: "none I can verify" | met: P11 speedrunners, rejected | not met: offers an Open question, no Proposed Decision | partial |
| S4 | settle: before or after pick | met | met | met: none verified, one lead marked as such | met: P02 none, P06 sandboxes | met: full Proposed block shown | pass |
| S5 | settle: daily mode | met | met | met: "none I can verify" | met: P07 none in source | met: full Proposed block shown | pass |

## Quick balance (B1) and quick scope (R1)

| Scenario | Prompt | Short form | Extra lines or row | Branch or scope rule | Verdict |
|---|---|---|---|---|---|
| B1 | is a 15 card cap balanced | met: six lines in one block, 371 words | met: Decision created, Request behind it | met: no-numbers branch, asks for stats | pass |
| R1 | add a shop before the demo | met: six lines lead the answer, 798 words | met under reading: shop row in a six-row table | met: no prices, no marketing asked | pass |

Verdict: 5 of 12 (S1, S4, S5, B1, R1 pass; S2, S3 partial; Q1 to Q5 fail).

## Excerpts from failing and partial scenarios

Q1 to Q4 keep the six labels in order and every one is over 180 words even counting the labelled lines alone. The lines run two to four sentences each. Q2's Test line alone is 58 words:

> Test           Vary only the cap (12 / 15 / 20) at a fixed run length. Record how many picks players make before the deck is full and whether they hit the cap and then decide or just stall. If most players are full by mid-Act 2 and later picks are forced swaps with no pause, 15 is too small; if they never reach it, it is too large.

Q3 adds a free-standing line between Confidence and the hand-off:

> Fix the cause before nerfing the favorite: check whether alternatives cost too much relative to heal's cost.

Q5 abandons the form after the lead-in: bulleted Pillar check and Evidence, then two sections the form does not have:

> **Where it could help:** a shared seed makes every player face the same three-card offers. [...]
> **Revisit if:** testers finish a run and say there is no reason to return.

S2's Record offers an experiment rather than a Proposed decision, and shows no entry:

> **Record** Offered, not written: a Proposed Experiment, "Deck cap 12 vs 15 vs 20: when does the first forced cut land, and do testers pause?", linked to the Open question

S3's Record offers an Open question:

> **Record (offered, not written)**  Proposed Open question: "Is the heal card a dominant pick?" Threatens: Every pick is a trade.

Side finding: compared with the T1 side finding at the earlier commit (351 to 472 words), the quick answers are shorter (206 to 237) but the review-fix length rule did not bring them under the limit, and Q5 ignored the form outright. The full forms (S, B, R) are consistent in shape and all offer rather than write.
