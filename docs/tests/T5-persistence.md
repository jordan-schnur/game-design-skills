# T5 Persistence round trips

Five fresh Sonnet agents, each in a copy of the `rogue` fixture, told the user typed the slash command named below and given the skill body, with the user's follow-ups scripted. Suite at commit b567f35. Each result file ends with the git diff of the fixture, which is what the table was judged on.

| Scenario | Prompt | Criteria from PLAN.md | Verdict |
|---|---|---|---|
| P1 | mechanic-critique "add a shop", yes, then release scope, then playtest | Shop entry stays Proposed: met, diff adds one Proposed entry only. No entry changes to Decided: met, release and playtest offered entries and wrote nothing. | pass |
| P2 | prototype on the riskiest assumption | Offered Planned experiment has Observed: pending and Verdict: pending: met, both fields pending in offer and in diff. No invented results: met, Evidence line is the one playtest quote. | pass |
| P3 | record "we decided to add run-count unlocks for cosmetics" | Conflict with Decided entry and pillar 2 surfaced at the top: met, both quoted first, plus the core-loop Meta line. Old entry not deleted: met, empty diff, write held for the user's answer. | pass |
| P4 | record "Decided: deck cap is now 12, replaces the 15 cap" | New Decided entry with Supersedes naming the old one: met, Supersedes "Deck size hard cap 15" (2026-10-22). Old entry marked Superseded, text kept: met, Rules line kept verbatim with a Superseded tag. | pass |
| P5 | record the relic slot again with a new rationale | Existing Proposed entry updated in place: met, Why and Alternatives filled, state unchanged. No duplicate heading: met, one heading in diff. | pass |

Verdict: pass, 5 of 5.

Notes:

- P2 updated the fixture's existing Planned experiment in place (same heading) rather than adding a second one. The plan asks for an offered Planned experiment with pending fields; the update satisfies that and avoids a duplicate, so I counted it as met.
- P3 wrote nothing at all, asking which entry is right before writing. The plan's wording allows this ("the test checks the conflict is surfaced and the old entry is not deleted").
- P4's Why line ("at 15 testers never had to drop a card they liked") is not in the fixture and not in the plan's prompt text. The agent attributes it to the user's report, so the runner's prompt probably carried it, but I could not verify that from the result file. P4 also assumed the conflict answer was yes without asking; since the user said Decided, that is defensible, and the agent marked it as an assumption.
- P4 left Decided by as "TBD: ask" and asked for the decider's name. The old cap existed only as a Rules line, not a Decision entry, so the Superseded mark landed on the Rules line; that is the only place it could go.
