# Section 9 test summary

Fresh Sonnet agents per scenario, fixtures copied per run, judged against the pre-written criteria in PLAN.md. T1 ran at commit 97b0947; T2 to T10 at commit b567f35. One file per group in this directory.

| Group | Scenarios | Pass | Partial | Fail | Note |
|---|---|---|---|---|---|
| T1 Trigger | 15 | 15 | 0 | 0 | 5 of 5 fire, 0 of 10 fire |
| T2 Short form | 12 | 5 | 2 | 5 | every quick answer over 180 words |
| T3 Grounding | 1 | 0 | 0 | 1 | ask-sid never fired; brainstorming skill took the prompt |
| T4 Interview | 5 | 5 | 0 | 0 | pane path untested, inline fallback in all five |
| T5 Persistence | 5 | 5 | 0 | 0 | nothing flipped to Decided without the user |
| T6 Bible edge cases | 4 | 2 | 0 | 2 | which-file and which-state behaviours missed |
| T7 Missing evidence | 1 | 1 | 0 | 0 | one arithmetic slip in the timeline, flagged |
| T8 Genres | 3 | 2 | 1 | 0 | one wrong cell in the balance table |
| T9 Few testers | 1 | 1 | 0 | 0 | |
| T10 Against plain | 3 pairs | scored, not pass/fail | | | 0 factual errors both sides; suite 0 unsupported decisions vs 6; no bible entry offered in any pair |

Totals for the pass/fail groups (T1 to T9): 47 scenarios, 36 pass, 3 partial, 8 fail.

## Failing and partial scenarios

- T2-Q1: 214 words, hand-off line after the six lines; over the 180-word limit.
- T2-Q2: 206 words, hand-off line; over the limit.
- T2-Q3: 228 words, extra advice line and hand-off; over the limit.
- T2-Q4: 237 words, hand-off line; over the limit.
- T2-Q5: 523 words, bulleted sections and two extra headings; abandoned the quick form.
- T2-S2 (partial): Record offers an Experiment, no Proposed Decision entry shown.
- T2-S3 (partial): Record offers an Open question, no Proposed Decision entry shown.
- T3: ask-sid did not fire; the brainstorming skill answered with a question, no Evidence line, no verdict.
- T6-E2: chose docs/game-bible.md over the root stub instead of asking which bible.
- T6-E4: declined to treat stateless decisions as Proposed; said nothing about the 98-line Decisions section.
- T8-G3 (partial): Bash turns-to-clear cell pools enemy hp and ignores the Strike degrade; three turns stated, four is correct.

## After the second fix pass

The ten failing or partial scenarios were re-run at 3f0ea2d; see [RERUN.md](RERUN.md). All ten pass. Final tally over T1 to T9: 47 scenarios, 46 pass, 1 partial (T2-Q3 at 186 words against a 180-word criterion).

Reviews: `docs/reviews/codex-review-v3-impl.md` (Rework, 18 findings, all applied), `codex-review-v3-verify.md` (Approve with changes, applied), `codex-review-v3-final.md` (Approve with changes, four textual fixes applied in 0f2a2ed).
