**Verdict: Approve with changes.**

Read all requested files and prior v3 reviews. References below are repository-relative; `Audit` means `skills/game-audit/SKILL.md`.

| Section 11 row | Assessment and evidence |
|---|---|
| Invocation (`SPEC.md:246`) | Pass: explicit invocation and default document discovery, `Audit:3`, `Audit:14`. |
| Reads (`SPEC.md:247`) | Partial: selective document reading is explicit (`Audit:14`), but bible retrieval stops at headings, states, and `Tested:` lines (`Audit:13`). |
| Bible check (`SPEC.md:248`) | Pass: core-slot checks and four pillar verdicts with panelist/id, `Audit:23–24`. |
| Import (`SPEC.md:249`) | Mostly passes: all three entry types, source attribution, and missing-value handling, `Audit:30–36`. Duplicate identification needs clarification below. |
| Evidence versus pillars (`SPEC.md:250`) | Pass: observations linked to tests-table rows; contradictions lead, `Audit:26`. |
| Writing (`SPEC.md:251`) | Approval and source protection pass (`Audit:38`, `Audit:53–54`); “everything … Proposed” conflicts with the contract’s own Done/Open imports. |
| Output (`SPEC.md:252`) | Pass: required deliverable order, `Audit:19–26`; save report restored at `Audit:38`. |
| Hand-off (`SPEC.md:253`) | Pass by reference: `Audit:42–46` explicitly adopts `skills/ask-sid/SKILL.md:18–21`, including `Next: …; when …, type …` and the 40-word limit. |
| Never (`SPEC.md:254`) | Pass: explicit prohibitions and `TBD: ask`, `Audit:50–54`. |

Required changes:

1. **Retrieve matching bible entry bodies.** After heading searches, explicitly read relevant entries before judging evidence, identifying existing risks, or proposing updates (`Audit:13`, `Audit:36`). This matches the sibling’s retrieval instruction at `skills/game-playtest/SKILL.md:13` and avoids reviving the prior reviews’ evidence-retrieval gap.

2. **Define import identity.** `Audit:36` delegates to feature-based repeat saves (`skills/game-bible/RECORDING.md:74`). Different sessions testing the same feature must remain separate. Match updates by source/session identity, and consolidate repeated descriptions of one session across documents.

3. **Reconcile shared recording language.** Done, Open, stateless Playtests, `pending`, and `TBD: ask` match `RECORDING.md:24–35` and `TEMPLATE.md:69–95`; no invented state is needed. Qualify `SPEC.md:251` so “Proposed” applies to recommendations, not imported facts. Define the provenance mark demanded by `Audit:36`: Playtests and Done experiments have no existing author-mark slot. **Yes, RECORDING.md should define the accepted `Source:` addition**, ideally incorporating importer provenance there; also add audit to its writer list (`RECORDING.md:11`).

For five 400–1,800-word documents, the workflow supports selective reading, scoped approval, and unknown counts/dates/verdicts without guessing. Reliable deduplication needs changes 1–2. Transcript-only evidence should remain unimported rather than inferred. This was static review, not a five-document execution.

README’s audit paragraph (`README.md:84`) matches. YAML parses; body **698 words**; no em-dashes or machine-local paths. `make check` passed despite sandbox cache warnings.