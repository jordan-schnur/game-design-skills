# T1 Trigger

Fifteen fresh agents (Sonnet), each given only the user's words in a copy of the `rogue` fixture, at spec-v3 commit 97b0947 (before review fixes).

Criteria: the five design prompts invoke `ask-sid`; the five unrelated and five game-code prompts do not.

| Prompt | Fired `ask-sid` | Expected |
|---|---|---|
| D1 shop between fights to remove a card for gold | yes | yes |
| D2 tester said the act 3 boss is unfair | yes | yes |
| D3 degrade a random card or one the player picks | yes | yes |
| D4 what would Sid Meier think of a deck cap of 15 | yes | yes |
| D5 is 20 minutes too long for a run | yes | yes |
| U1 bash one-liner counting lines | no | no |
| U2 capital of Mongolia | no | no |
| U3 summarize Dune | no | no |
| U4 cover letter (invoked an unrelated writing skill) | no | no |
| U5 convert 72 F to C | no | no |
| C1 Godot shader flicker (invoked a debugging skill) | no | no |
| C2 save-file format JSON or SQLite | no | no |
| C3 tooltip overlaps indicator at 1080p | no | no |
| C4 profile GC spikes in Unity | no | no |
| C5 C# struct for a card | no | no |

Verdict: pass, 15 of 15.

Side finding: the five design answers carried the six short-form labels in order, cited panelist and catalog id, and grounded the pillar check in the fixture bible, but ran 351 to 472 words, with multi-sentence lines and a trailing alternatives section. Fed into the review-fixes pass as the short-form length rule (one or two sentences per line, under 150 words, one hand-off line).
