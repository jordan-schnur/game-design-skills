## Fidelity to the source

- **The source is not the verified research foundation the spec implies.** It promises “Quotes and data are properly cited to specific lines,” but supplies no such citations. Several deliverables say they “will include” material. The spec acknowledges missing catalog entries and case studies, but overlooks this larger provenance problem. Fidelity to this document does not establish factual accuracy.
- **The catalog adds unsupported prescriptions.** Examples include “The last 30% of a game costs more than the first 70% felt like” (principle 18), “reading is not” a reward (13), and preferring buffs over nerfs (11). The final-third feature freeze and mandatory tune → sibling → pivot sequence are also implementation choices, not source-backed rules. Label them accordingly.
- **Unverified Meier advice becomes mandatory practice.** `DEVELOPERS.md` marks doubling/halving “verify before quoting publicly,” yet prototype and balance prescribe it without that qualification. The uncertainty disappears precisely where the advice affects decisions.
- **Some paraphrases gain unsupported specifics.** Supergiant’s source entry describes status text added after playtests; `DEVELOPERS.md` changes this into narrator feedback because players “wanted acknowledgement.” Blow’s advocacy of teaching through gameplay becomes “never text.” Neither stronger claim follows from the document.
- **Attribution machinery is weaker than advertised.** `SOURCES.md` introduces “Zabek” as an MDA author without support in the supplied source. Most entries identify entire blogs or unspecified interviews, not retrievable evidence for particular claims. Its assertion that each Confidence line distinguishes empirical research, practice, or opinion is false: most merely say “High.”
- **The evaluation framework loses an important checkpoint.** Source D explicitly requires “Collect Current Data,” then “Analyze,” before deciding. The shared verdict contract requires a decisive recommendation before its test and has no dedicated current-evidence slot. Provisional advice is reasonable, but the distinction from an evidence-supported decision needs to survive.
- **The source’s breadth narrows.** It opens with “mastery, exploration, social play, and surprise.” Social play and relatedness receive little operational treatment; decisions and mastery dominate. Spec §8’s “one-to-one” taxonomy mapping is also inaccurate: H lists six example capabilities, whereas the suite adds prototype and playtest.

## Internal consistency

- **There are competing output contracts.** The principles layer requires seven parts “in this order.” Concept, prototype, balance, playtest, scope, and release prescribe different numbered outputs. Playtest omits explicit confidence; scope’s confidence section does not require the mandated confidence word. An agent must either violate one contract or concatenate them.
- **Engineering boundaries contradict each other.** Spec §1 excludes engineering guidance. Concept ends by saying engine classes and data structures are “the prototype’s business”; the prototype skill supplies no corresponding engineering workflow. The router says prototype “builds,” while the body primarily specifies a plan.
- **The freeze has an unexplained exception.** Scope says “no new features in the final third,” then permits late additions with a pillar, tiny cost, and urgency. The spec presents only the absolute rule.
- **Experiment records cannot represent their required inputs.** Concept must save a *planned* experiment, but bible/template experiments require observations and a verdict of kept/dropped/inconclusive. There is no planned/running state or explicit gate field. Prototype similarly demands gate results even when only planning.
- **Bible behavior remains unresolved.** Proposed content is allowed during creation, but decision slots must never contain inference. Critique nevertheless sends its own recommendation as a decision entry. The files do not define how an unconfirmed recommendation is recorded without becoming a user decision.
- **Known recording omission remains:** prototype never names the `game-bible` Skill call.
- **Persona claims overstate implementation.** Spec §2 says the catalog’s first entries are Meier’s; entry 1 is Bushnell/Pardo. Router frontmatter promises a designer’s “voice,” while the body excludes role-play.
- **Counterexamples mean different things.** The principles skill promises cases where breaking a rule improves a game; entries 1–4 mostly list failures to follow the rule. Those do not establish exceptions.

## Design critique

The decomposition is plausible as a reference organization, but unproven as an invocation system. Balance deserves specialized numerical treatment; bible management deserves separate persistence rules. The remaining boundaries need precedence rules:

- “Should I add X before shipping?” triggers critique and scope.
- “What should I build first?” triggers concept, prototype, and potentially scope.
- “Players say this is too easy” triggers playtest and balance.
- Post-launch complaints trigger release and playtest.
- The principles description overlaps nearly every design question.

Because the router is user-only, it cannot reliably arbitrate ordinary automatic invocation. Ten files are manageable; uncontrolled chaining is the bigger problem.

The verdict shape is useful as an internal checklist or substantial review format. Requiring every slot, two analogs, and a persistent entry for every judgment turns quick advice into paperwork. The spec’s own 800–1500-word test outputs demonstrate the cost. Use an adaptive response contract and reserve full records for consequential decisions.

A single markdown bible is workable initially. It becomes expensive when every judgment reads the entire decision and playtest history. The template already permits linking out, undermining a strict single-file interpretation. Define a concise current-state document, linked evidence, and a way to supersede decisions without deleting history.

Sid is a reasonable optional lens for strategy and systems. He is a poor universal filter for atmosphere, narrative, expressive play, or social experiences. The persona mostly supplies branding and a repeated maxim; operationally, its strongest effect is biasing everything toward decision density. The catalog’s exceptions help, but phase instructions frequently override them.

## Risks when used by an agent

- **Forced specificity invites fabrication.** Critique demands games that faced the “exact choice”; balance demands an analog that made the same change. Release demands historical launch timelines, prices, named creators, and upcoming windows. There is no verification workflow or explicit permission to leave an analog unknown. “Pattern-matched” is insufficient protection for factual launch claims.
- **Metrics can become invented authority.** Balance requests N viable options and X/Y percentages; prototype offers replay-count gates; playtest calls two of five quitting a “strong signal” and says small samples are “directional, not noise.” These may motivate investigation, but cannot establish causation or reliable success thresholds. Proposed targets, observed measurements, and statistical confidence need separate labels.
- **Genre-specific prototype rules masquerade as universal rules.** Requiring an isolated action, one obstacle, no enemies, then a second mechanic only after success can invalidate tests of combat, social interaction, or interacting systems. Principle 15 acknowledges narrative/theme exceptions; prototype and scope gates do not.
- **Behavior is treated as a proxy for enjoyment too confidently.** Replays, completion, and persistence can reflect obligation or confusion. Calling testimony “second-class” systematically discounts the evidence needed to distinguish those explanations.
- **Invocation and context costs compound.** Concept invokes principles, bible, and prototype; prototype invokes principles again. Release can restart concept. No stopping or reuse rule exists. Full-bible reads plus the catalog make small questions increasingly expensive.
- **Cold-start pillars risk rationalizing sunk cost.** Deriving pillars from “what the game already is” can legitimize accidental implementation choices rather than recover the developer’s intended experience.
- **Testing establishes format compliance, not usefulness.** One run per scenario, manual file loading, and no negative-trigger tests cannot substantiate reliable routing or practical solo-developer value.

## Questions the author should ask the user

1. Which actual game and genres must this support, including experiences where isolated mechanics or decision density are poor success criteria?
2. What distinguishes advice, a proposed experiment, and an approved design decision—and which may be saved automatically?
3. May the assistant research external sources, and what should it do when an attribution or comparable launch cannot be verified?
4. What testers, telemetry, and development-time data are realistically available?
5. How should existing design documents, multiple games in one repository, and superseded decisions be handled?
6. What observable improvement over ordinary Claude advice would justify the suite’s added interaction and context cost?

## Verdict

**Rework.** First repair provenance and separate source claims from new heuristics; then resolve recommendation/decision and planned/completed experiment states; reconcile output contracts and genre exceptions; define trigger precedence and bounded loading; finally test real invocation, missing evidence, quick questions, and non-strategy games. The reference-plus-memory architecture is worth retaining, but current tests reward prescribed answer shape more convincingly than trustworthy design assistance.