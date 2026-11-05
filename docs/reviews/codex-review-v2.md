## Findings resolved

These are design-level resolutions; the unchanged v1 files are not evidence against them.

**Substantially resolved:** automatic trigger competition is removed by making only `ask-sid` model-invoked; explicit hand-offs replace recursive tool chaining; short answers replace mandatory analogs and records; unknown analogs are permitted; the engineering exclusion is clear; the late-feature rule now states its conditions; prototype instructions explicitly accommodate systems, narrative, and social loops. The composite panel reduces the universal Meier filter.

**Partially resolved or only claimed:**

- **Evidence before judgment:** “Existing evidence” appears only in full form. Default answers still require a decisive verdict without requiring consultation of relevant observations. Evidence retrieval must precede both forms; unsupported recommendations should be explicitly provisional.
- **Conflicting contracts:** §5 says every tool defaults to short form, but mechanic critique explicitly produces a “Full-form verdict,” and release requires an extensive deliverable list. Tools also always offer records, whereas §4 reserves record drafts for full form.
- **Provenance:** tagging additions and restoring paraphrases helps. However, “studied / practiced / opinion” describes evidence type, not verification or confidence. Claim-specific citations remain unspecified. Calling an attribution “outside the document” does not verify it.
- **Testimony and genre bias:** §7 improves the language, but the panel still anchors on “Measure behavior, not opinions”; prototype still requires a behavioral pass/fail gate. Subjective reports need an explicit role in narrative, atmosphere, and social evaluations.
- **Memory costs:** a short core and linked history help, but neither selective evidence retrieval nor a bounded conflict-check procedure is defined.
- **Added heuristics:** labels clarify origin without fixing mandatory application. Tune → sibling → pivot remains compulsory, even when evidence warrants abandoning the concept immediately.

## New problems in v2

1. **Persistence has no unambiguous owner or authorization rule.** §1 says agents write proposals; §4 offers to write; §5 offers entries; §7 says tools write directly. Specify when a request authorizes saving, whether ordinary advice writes anything, and how every writer applies the same record and conflict rules.

2. **States lack transition semantics.** Planned experiments still require observations and verdicts; specify these as pending until results exist. Distinguish an experiment’s execution state from approval of its design and interpretation. Define who marks Running/Done, and prevent “kept” from silently becoming an approved design decision. Proposed pillars must not become binding merely because subsequent tools read them. Reported observations should retain attribution and build context rather than become unqualified facts.

3. **The interview can violate its own cap.** Its exit condition requires every pillar to exclude a real feature, even when pillars are `TBD` or the user supplied no features. Three rounds must take precedence over completeness. Define a round, limit questions per round, permit skipping, and record unresolved pillar checks. Recommended answers need scoped acceptance so a bare “yes” cannot approve several ambiguous proposals.

4. **Direct file access needs a concrete contract.** Specify skill-relative reference paths versus project-relative bible paths, project-root selection, multiple matching bibles, missing references, and preservation of existing documents. Inline catalog anchors can drift from their sources; retain stable entry identifiers and provenance labels. An index alone does not establish bounded reading.

5. **The mergers need modes, not concatenation.** Concept folded into define leaves no explicit process for revisiting an existing vision and drops concept’s scope-reality check. Balance needs a numerical-analysis branch preserving calculations and assumptions. Scope inside release needs an early-project scope mode that does not demand prices, launch analogs, or marketing plans.

6. **The dependency story contradicts itself.** §7 claims no skill-to-skill calls, while §9 recommends calling `grilling`. Resolve that choice and specify enforcement of the interview cap and fallback behavior.

## Change plan check

Section 8 is insufficient as written.

- Explicitly rewrite **prototype and playtest bodies**. Step 6 changes invocation plumbing but leaves v1’s behavioral-only gates, mandatory isolation, completed-result recording, “second-class” testimony, and “strong signal” language intact.
- Update the template beyond adding states: riskiest assumption, conditional experiment fields, supersession links, proposal provenance, and evidence links.
- Establish the shared output, path-resolution, persistence, and state-transition contracts **before** rewriting consumers. Reading `ask-sid/SKILL.md` as a contract should not accidentally import router behavior.
- Make the three mergers selective, with mode-specific outputs and retained capabilities, including balance’s feedback-loop analysis and qualified simulation option.
- Audit all references to deleted skills, old contracts, and automatic writes before deleting directories. Rewrite the router’s frontmatter explicitly to remove its current `disable-model-invocation: true`.
- Define how existing v1 bibles are preserved and interpreted without inventing approvals or historical results.

## Test plan check

Section 6 adds useful coverage, but mostly tests visible answer shape.

Add:

- Actual automatic routing and explicit invocation of **every** tool; mixed code/design prompts; hand-offs without unintended invocation.
- Persistence round trips: Proposed stays Proposed, Planned has no invented results, conflicts are surfaced, supersession preserves history, and repeat saves do not duplicate entries.
- Missing, multiple, existing, and large bibles; retrieval of relevant linked evidence outside the core.
- Interview refusals, ambiguous “yes,” absent features, unresolved pillars, and unavailable `grilling`.
- Short answers grounded in contradictory existing evidence; quick balance and scope requests that avoid full-form expansion.
- Arithmetic checks, missing denominators, one tester/no telemetry, and conflicting testimony versus behavior.
- Repeated comparisons with ordinary Claude advice, measuring factual errors, unsupported decisions, interaction burden, and useful next actions—not just format compliance.

## Verdict

**Approve with changes**, in this order: define persistence ownership and state transitions; require evidence grounding in both output forms; reconcile short-form versus tool-specific outputs; make interview termination unconditional at the cap; specify path resolution and selective retrieval; expand §8 to rewrite prototype/playtest and preserve merger capabilities; add behavioral and persistence tests. The six-skill architecture is workable, but these contracts need resolution before implementation.