**Findings**

Static review completed; section 9 behavioral tests were not run. `make check` reports success, but a separate YAML parse rejects `ask-sid`’s frontmatter.

**Blocker**

1. **Invalid router frontmatter — [skills/ask-sid/SKILL.md:3](../../skills/ask-sid/SKILL.md:3).** The unquoted `description` contains `making: an idea`, which is invalid YAML and jeopardizes loading the suite’s only automatic skill (spec §2). **Fix:** Quote the description or use a YAML block scalar, and make the validation target parse YAML rather than merely search for field names.

**Major**

2. **Exception lookups select the opposite evidence — [skills/ask-sid/GENRES.md:7](../../skills/ask-sid/GENRES.md:7).** Genre exceptions, the full-form Counterexample slot (`ask-sid/SKILL.md:39`), and release’s P18/P19 references point to `Counterexamples`, although the catalog defines that field as failures and puts successful exceptions under `When breaking it helped` (`PRINCIPLES.md:3`), defeating spec §§3.3, 5–6. **Fix:** Point each reference to its actual field, preserving the distinction between failure examples such as P14 and successful exceptions such as P15, P18, and P19.

3. **The catalog still discounts testimony — [skills/ask-sid/PRINCIPLES.md:219](../../skills/ask-sid/PRINCIPLES.md:219).** P16 says behavior is stronger evidence and prohibits quotes alone as decision evidence at line 225, contradicting the tiebreaker contract and minimalist genre’s equal weighting (spec §§3.3, 5–6). **Fix:** Align P16’s index claim, explanation, and validation with the genre-specific testimony rules.

4. **Required evidence has no retrieval step — [skills/game-prototype/SKILL.md:13](../../skills/game-prototype/SKILL.md:13), [skills/game-release/SKILL.md:17](../../skills/game-release/SKILL.md:17).** Both tools read only the core before answering, although their Evidence and phase-gate outputs require relevant decisions or observations that may live in linked history (spec §§3.1, 6). **Fix:** Retrieve the relevant decision, experiment, and playtest entries before judging, including matching entries in linked files.

5. **Persistence still requires an unbounded history read — [skills/game-bible/RECORDING.md:71](../../skills/game-bible/RECORDING.md:71).** Every write compares against every Decided entry and follows archive links at line 75, so splitting sections does not bound conflict-check context costs, leaving the earlier memory-cost finding unresolved. **Fix:** Maintain a compact current-decision index and use it to retrieve potentially conflicting entries, with explicit handling when relevance is uncertain.

6. **Write-first and supersession rules contradict their safeguards — [skills/game-bible/RECORDING.md:73](../../skills/game-bible/RECORDING.md:73).** The unconditional instructions to supersede a different change and write before asking conflict with the confirmed-Decided supersession rule at line 57 and the conflict-resolution gate at line 71 (spec §3.2). **Fix:** Explicitly subordinate write-first to conflict resolution and preserve the old entry until the replacement reaches Decided.

7. **Interview deferral remains inconsistent — [skills/game-bible/INTERVIEW.md:13](../../skills/game-bible/INTERVIEW.md:13).** The interview permits every slot to be deferred but still requires a one-sentence north star and a real exclusion for every pillar, while line 71 can defer a rejected north-star or pillar derivation, leaving no defined exit for those cases (spec §4 contains the same tension). **Fix:** Define how explicitly deferred north-star and pillar slots satisfy the exit and how their unresolved checks are recorded, retaining fixed frontier plus escalation.

8. **A bare “yes” still lacks an unambiguous target — [skills/game-bible/INTERVIEW.md:9](../../skills/game-bible/INTERVIEW.md:9).** The brief says “yes” accepts one recommendation while allowing several questions in the same round, but never identifies which recommendation an unqualified answer accepts (spec §4, scoped acceptance). **Fix:** Require a question identifier when several recommendations are pending, or present only one acceptance target at a time.

9. **Unknown analogs leave dependent outputs unsupported — [skills/game-bible/INTERVIEW.md:46](../../skills/game-bible/INTERVIEW.md:46), [skills/game-release/LAUNCH.md:9](../../skills/game-release/LAUNCH.md:9).** Target-player recommendations depend on a closest game that may be unknown, and pricing requires analog prices that may all be unverifiable, without defining what replaces those required outputs (spec §§4, 6). **Fix:** Specify explicit unknown branches that ask for the missing audience or pricing inputs and defer the dependent recommendation.

10. **Provenance disappears at the point of application — [skills/game-mechanic-critique/SKILL.md:39](../../skills/game-mechanic-critique/SKILL.md:39).** Critique prescribes double-or-halve without the unverified Meier qualification, prototype omits its `[outside report]` tag at line 35, and `SOURCES.md:9` attributes optimizing fun away to Johnson without the qualification present in P11 (spec §6; provenance commitments §§7–8). **Fix:** Carry the existing attribution, uncertainty, and `[outside report]` markings into every repeated prescription or attribution.

11. **Prototype gates retain behavior-only and universal-exclusion instructions — [skills/game-prototype/SKILL.md:23](../../skills/game-prototype/SKILL.md:23).** Requiring each gate to describe what testers do and imposing an exclusion list that “stays excluded” at line 34 conflicts with testimony-based minimalist gates and the theme-first exception (spec §§3.3, 6). **Fix:** Derive both observations and exclusions from the selected genre and hypothesis, allowing testimony and any presentation or interacting mechanics needed to test them.

**Minor**

12. **Minimalist pressure changes between runs instead of within them — [skills/ask-sid/GENRES.md:40](../../skills/ask-sid/GENRES.md:40).** “Each session harder than the last” introduces escalating difficulty across sessions, whereas spec §3.3 requires legible pressure growth within the rule set. **Fix:** Describe pressure increasing within a session, without requiring successive sessions to become harder.

13. **Archive links break for supported fallback locations — [skills/game-bible/RECORDING.md:75](../../skills/game-bible/RECORDING.md:75).** The fixed relative link `game-bible/<section>.md` reaches the specified archive only from a bible inside `docs/`, not from root `GAME-BIBLE.md` or another discovered document (spec §§2, 3.2). **Fix:** Compute the relative link from the actual bible location to the project-root archive path.

14. **Output ordering and expansion rules remain contradictory — [skills/ask-sid/SKILL.md:22](../../skills/ask-sid/SKILL.md:22), [skills/game-release/SKILL.md:49](../../skills/game-release/SKILL.md:49).** “Nothing above” conflicts with mandatory top-of-reply conflict reports, hand-offs are placed immediately after the short form despite being closing outputs, and prototype/playtest/release lack an explicit full-form branch for “settle this” (spec §§3.1–3.2, 6). **Fix:** State one precedence order covering conflict notices, answer form, deliverable, records, and final hand-off, including full-form expansion triggers.

15. **Two core blocks omit proposal provenance — [skills/game-bible/TEMPLATE.md:19](../../skills/game-bible/TEMPLATE.md:19).** Non-goals/constraints and the core loop at line 26 lack the proposal markers present on other core slots, despite the requirement to mark every agent-drafted slot (spec §4). **Fix:** Add provenance placeholders to those blocks.

16. **Evidence classifications do not consistently follow their definition — [skills/ask-sid/PRINCIPLES.md:154](../../skills/ask-sid/PRINCIPLES.md:154).** P10 is classified `practiced` while its Evidence line describes only a report-stated heuristic without a developer account, contrary to the definition at line 7. **Fix:** Classify it as `opinion` or identify the specific practice account supporting `practiced`.

17. **README overstates shared answer and saving rules — [README.md:14](../../README.md:14).** It says every answer begins with six lines, every save waits for approval of a displayed entry, and everything written is Proposed at line 131, contradicting interview/record behavior and Experiment, Playtest, and Open-question states (spec §§3.2, 4). **Fix:** Document the bible-mode exceptions and distinguish Decision approval from each entry type’s state.

18. **Public tree contains a private source locator — [SPEC.md:5](../../SPEC.md:5).** The source is identified by a Downloads path, contrary to `CONVENTIONS.md:35`; README installation examples also assume a local `~/dev` checkout layout. **Fix:** Replace the private source locator with a portable source description and use a relative checkout directory in installation examples.

**Earlier v2 findings**

| Earlier item | Status | Implementation evidence and remaining gap |
|---|---|---|
| Evidence before judgment | **Partially resolved** | Evidence and provisional verdicts exist in `ask-sid/SKILL.md:25–28`; feature retrieval exists at line 12, but prototype/release omit relevant-history retrieval (finding 4). |
| Conflicting contracts | **Partially resolved** | Compact deliverables are defined in `ask-sid/SKILL.md:42`; critique uses short form at `game-mechanic-critique/SKILL.md:19`, but ordering and expansion conflicts remain (finding 14). |
| Provenance | **Partially resolved; verification limit acknowledged** | All P05–P20 entries carry `[added]`; `PRINCIPLES.md:5` disclaims verification, `SOURCES.md:11` tags the added MDA attribution, and `DEVELOPERS.md:32,69` restore the Blow/Supergiant paraphrases; findings 10 and 16 remain. |
| Testimony and genre bias | **Partially resolved** | Equal minimalist weighting appears in `GENRES.md:41` and `game-playtest/SKILL.md:22`; P16 and prototype instructions still conflict with it (findings 3 and 11). |
| Memory costs | **Partially resolved** | Selective catalog reads exist in `ask-sid/SKILL.md:14` and archives in `RECORDING.md:75`; conflict checks remain unbounded (finding 5). |
| Added heuristics | **Resolved for the mandatory failure ladder** | `game-prototype/SKILL.md:41` explicitly allows direct pivot when the gate invalidates the concept; attribution propagation remains defective (finding 10). |
| 1. Persistence ownership and authorization | **Mostly resolved** | `RECORDING.md:7–16` defines writers and authorization; write-first precedence remains inconsistent (finding 6). |
| 2. State-transition semantics | **Mostly resolved** | `RECORDING.md:31–64` defines pending fields, triggers, attribution, working assumptions, and kept-without-approval; unconditional supersession wording remains (finding 6). |
| 3. Interview termination and scoped acceptance | **Partially resolved under the accepted replacement** | `game-bible/SKILL.md:22–36` implements fixed frontier, escalation, and deferral without a round cap; deferred core slots and ambiguous “yes” remain unresolved (findings 7–8). |
| 4. Direct file-access contract | **Partially resolved** | `RECORDING.md:18` defines bible resolution and line 76 preserves existing documents; sibling paths are explicit, but fallback archive links break and missing shared references have no recovery instruction. |
| 5. Selective mergers and retained capabilities | **Mostly resolved** | Revisiting is advertised in `game-bible/SKILL.md:3`, scope reality appears at line 38, numerical analysis is preserved in `game-mechanic-critique/SKILL.md:30–40`, and release separates modes at `game-release/SKILL.md:9–13`; unknown-input branches remain incomplete. |
| 6. Dependency contradiction and fallback | **Resolved** | `game-bible/SKILL.md:24` specifies the sole external `grilling` call and inline fallback; `INTERVIEW.md:7–13` supplies the frontier and escalation brief. |

**Verdict: Rework**

The three changes that matter most are:

1. Repair and validate the router’s YAML so the suite can load reliably.
2. Reconcile exception lookup, testimony weighting, and prototype gates across catalogs and consumers.
3. Complete bounded evidence retrieval and make persistence/interview edge cases unambiguous before running section 9 tests.