# T9 Few testers

One fresh Sonnet agent in a copy of the `rogue` fixture, told the user typed `/game-playtest` with "One friend played for 40 minutes, said it was fine, I have no logs" and given the skill body. Suite at commit b567f35.

| Scenario | Prompt | Criteria from PLAN.md | Verdict |
|---|---|---|---|
| T9 | one friend, 40 minutes, "fine", no logs | Tally sheet: met, one row per pick with card and degrade target. Screen recording: met, "a propped phone is enough". Ask where they stopped: met, within the hour, as question 1. No telemetry plan: met, only a check of existing save or crash files, no logging to build. Small sample stated as a reason to look: met, "reason to recruit, not the answer", any result is look again until two more testers. Experiment sized to one tester with learning effect named: met, within-subjects, order confound stated, B then A so practice works against the hypothesis, sized by picks not sessions. | pass |

Verdict: pass, 1 of 1.

Notes:

- The answer reused the fixture's Planned experiment rather than inventing a second one, and offered only a Playtest entry for the past session with every count as "TBD: ask" and the one quote marked as testimony. Nothing was written.
- It separated what the tester can still recall (recall, marked as such) from what the next session should count. That distinction is not a criterion but is the right handling of "no logs".
- Length is 1307 words for a one-tester question. No length criterion applies to the full playtest form, but it is the longest single answer in the suite after the interviews.
