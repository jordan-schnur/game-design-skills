# Game Design Principles Catalog

Twenty principles. Each entry: Origin, Explanation, Mechanism, Examples, Counterexamples (failures to follow the rule), When breaking it helped (cases where ignoring it improved a game), Application, Validation, Evidence. Where an attribution is a paraphrase or disputed, the Origin line says so.

**Provenance.** The source report this catalog is drawn from promises line-level citations and supplies none, so nothing here is verified beyond the report itself. The report describes a catalog of roughly 75 to 80 principles and gives four in full: P01 to P04 are those four. P05 to P20 are `[added]`: write-ups, in the same format, of principles the report states or relies on in its body; their Origin lines name the developer or work the report ties them to. Inside any entry, an example, attribution, or prescription the report does not contain is tagged `[outside report]`. A tagged item is a lead to verify, not a fact this file has checked. Carry both tags into any answer that cites the entry.

**Evidence** takes one of three values. `studied`: rests on published research or theory the report names. `practiced`: rests on a developer's or studio's own account of how they work. `opinion`: a designer's or the report's stated view with neither behind it. The clause after the value says what the entry rests on.

## Index

| Id | Title | Claim | Evidence |
|---|---|---|---|
| P01 | Easy to Learn, Difficult to Master | Simple entry, deep ceiling | practiced |
| P02 | A Game Is a Series of Interesting Decisions | Every element presents a choice, not a chore | practiced |
| P03 | Maximize Fun per Time | Minimize filler between interesting moments | opinion |
| P04 | Movement Itself Should Be Fun | Core actions must satisfy in isolation | practiced |
| P05 | Fun Comes From Learning and Mastery | Players enjoy mastering patterns; a mastered pattern becomes grind | studied |
| P06 | Constraints Make Choices Meaningful | Scarcity creates trade-offs, and trade-offs make a decision interesting | practiced |
| P07 | Every Feature Must Serve a Pillar | Judge every feature against three to five written pillars | practiced |
| P08 | Remove What Does Not Create a Decision | Cut features that create no player decision | practiced |
| P09 | Simple Rules, Emergent Systems | Lasting interest comes from interacting systems | practiced |
| P10 | Check Positive Feedback, Use Negative Feedback | Label each loop; decide where a snowball ends | practiced |
| P11 | Players Will Optimize; Tell Emergent From Degenerate | Players find dominant strategies; sort intended mastery from degenerate play | practiced |
| P12 | Ramp Challenge With Skill | Difficulty rises with skill, with relief after peaks | studied |
| P13 | Teach Through Play, Not Text | Mechanics demonstrate themselves before the real test | practiced |
| P14 | Clear, Consistent Feedback | Every action gets an immediate, legible response | practiced |
| P15 | Core Fun Before Story, Art, or Rewards | Prove the loop in greybox before presentation | practiced |
| P16 | Measure Behavior, Not Opinions | What players do outweighs what they say | practiced |
| P17 | AI and Simulation Are Not Playtesters | AI predicts fun as a hypothesis; humans verify it in play | opinion |
| P18 | Finish a Simple Game Well | Ship a tight small game; cut by default | practiced |
| P19 | A Distinct, Well-Communicated Concept Beats a Gimmick | A clear hook and execution beat engagement hacks | opinion |
| P20 | The Bible Is the Memory | One living document holds decisions and their rationale | practiced |

---

## P01 Easy to Learn, Difficult to Master

**Origin:** Nolan Bushnell (Atari), stated around 1971. Rob Pardo (Blizzard) restates it as "easy to learn and almost impossible to master."
**Explanation:** Introduce core controls and mechanics simply, through natural mapping or a light tutorial, while making sure advanced play and strategy exist beyond them.
**Mechanism:** A low entry barrier grows the audience; a high skill ceiling keeps engagement through mastery.
**Examples:** Tetris (one rotate button, emergent high-skill play). Chess (simple rules, deep tactics). Asteroids (thrust and shoot are simple; dodging many bullets is hard).
**Counterexamples:** Strategy games that front-load every mechanic on novices. A single punishing difficulty with no on-ramp (the report cites Trauma Center without difficulty levels).
**When breaking it helped:** None in source.
**Application:** Prototype the simplest version. Can someone enjoy it with minimal explanation? If not, simplify controls or add early guidance. Add layers (upgrades, obstacles) only as player skill grows.
**Validation:** Novices clear early tasks quickly; experts keep discovering combos and strategies. If everyone breezes through, or everyone dies early, the curve is off.
**Evidence:** practiced; an industry aphorism from Bushnell and Pardo with shipped examples and no study behind it. The report rates it High.

## P02 A Game Is a Series of Interesting Decisions

**Origin:** Sid Meier. Soren Johnson echoes it: "A game design is a collection of interesting decisions, as Sid would say."
**Explanation:** Every element should present a choice, not a chore. Add a unit, item, or mechanic only when it creates meaningful tactics.
**Mechanism:** Decisions engage the player intellectually; each one invokes goals and trade-offs.
**Examples:** Civilization (every tech, city placement, and unit build is a tactical choice). Portal and The Witness (each puzzle is a discrete decision to reach the next).
**Counterexamples:** "Collect 100 coins" fetch quests. Scripted sequences that remove choice. Games with one obviously best move, where choice is trivial.
**When breaking it helped:** None in source.
**Application:** For any mechanic ask "why would a player care?" and "what options does the player have?" Remove features that create no decision, such as redundant upgrade paths.
**Validation:** Watch for players skipping modes or repeating one exact strategy. Several strategies should stay viable.
**Evidence:** practiced; Meier's and Johnson's stated design practice, with Civilization as the case. The report rates it High.

## P03 Maximize Fun per Time

**Origin:** Soren Johnson (Designer Notes): "Fun Factor = Interesting Decisions / Actual Time Played."
**Explanation:** Minimize filler (loading, busywork, travel, menu navigation) between interesting moments. Respect the player's time.
**Mechanism:** Tedium breaks immersion and reads as disrespect; density of decisions keeps engagement.
**Examples:** Superhot (every second of thought counts, no downtime). Stardew Valley (a day's tasks fit one screen, little back-and-forth).
**Counterexamples:** Long unskippable cutscenes. Grindy level-gating. Clicking an object twenty times to build one thing.
**When breaking it helped:** None in source.
**Application:** Log time spent per activity. If players spend over about 30% of a session in menus or repetitive tasks, simplify UI or batch actions. Padding playtime is the direct violation.
**Validation:** Ask testers whether they felt they were wasting time. "This is boring to do" is a fail.
**Evidence:** opinion; Johnson's formula is designer insight. The report rates it Medium, "supported by user feedback principles" it does not name.

## P04 Movement Itself Should Be Fun

**Origin:** Often cited by Nintendo's Shigeru Miyamoto on Mario; analyzed in Steve Swink's book Game Feel.
**Explanation:** Core actions (running, jumping, shooting) must be satisfying in isolation before content, story, or rewards are layered on.
**Mechanism:** Immediate sensory reward and agency set a positive tone for everything built on top.
**Examples:** Celeste (precise jump and dash). Hotline Miami (fast gunplay, screen shake). Super Mario Bros. (jump physics with slight downward momentum while rising).
**Counterexamples:** Floaty, laggy jumps in many early 3D platformers. Deadly Premonition's driving, which hurt immersion.
**When breaking it helped:** None in source.
**Application:** Build a tech demo of just the core movement. Tune gravity, inertia, input smoothing, animation, and audio cues. Small tweaks matter disproportionately.
**Validation:** Compare time-to-complete and reported feel on a simple obstacle across parameter sets. If parameter changes do not move either, the design needs review.
**Evidence:** practiced; Miyamoto's account of tuning Mario and Swink's analysis of control feel. The report's entry is the only one of its four with no Confidence line.

## P05 Fun Comes From Learning and Mastery [added]

**Origin:** Raph Koster, A Theory of Fun for Game Design ("the brain loves mastering patterns"). Csikszentmihalyi's Flow: challenge matched to skill. Self-determination theory: competence, autonomy, relatedness.
**Explanation:** Players enjoy recognizing and mastering patterns. Once a pattern is fully mastered, repetition becomes grind.
**Mechanism:** Learning produces competence; competence is intrinsically rewarding.
**Examples:** Dark Souls teaching through repeated death (Miyazaki's "learn by dying" in the report). Roguelikes that keep introducing pattern variations `[outside report]`.
**Counterexamples:** Repetitive collection with no new pattern, such as the report's "collect 100 coins" quest.
**When breaking it helped:** Relaxation games where mastery is not the point and pattern-learning should stay gentle; the report's own caveat that for a relaxing sim, stress-free play may be the goal.
**Application:** Ask what the player is learning at each stage. When the answer is "nothing new," introduce a variation or end the segment.
**Validation:** Watch for autopilot behavior (checking phone, skipping, sighing). Note when it begins.
**Evidence:** studied; Koster's theory, Flow, and self-determination theory are published work the report names. The report treats MDA, Bartle types, and Koster as lenses, not recipes.

## P06 Constraints Make Choices Meaningful [added]

**Origin:** Widely held; the report cites limited inventory in The Legend of Zelda, time limits, and one-button arcade controls.
**Explanation:** Scarcity and limits force trade-offs; trade-offs are what make a decision interesting. Over-constraining and removing all constraints both frustrate.
**Mechanism:** A choice costs something only when resources are finite.
**Examples:** Zelda's limited inventory. Single-button arcade games. Into the Breach's tiny grids and perfect information `[outside report]`.
**Counterexamples:** Limits that feel arbitrary or punish without teaching: the over-constrained end of the report's warning.
**When breaking it helped:** Freedom-first sandboxes where open-endedness is itself the pillar `[outside report]`.
**Application:** When a choice feels flat, look for the missing constraint before adding content.
**Validation:** Players deliberate visibly, and different players choose differently.
**Evidence:** practiced; the report's shipped examples, with no study behind them.

## P07 Every Feature Must Serve a Pillar [added]

**Origin:** Design-pillar practice; the report cites the Jak & Daxter team refusing late-added guns, Celeste's "platforming precision plus personal story," Civilization's "empire-building decisions," and Jonathan Blow scrapping half-built mechanics in Braid to keep focus.
**Explanation:** Write 3 to 5 pillars early. Judge every feature, mechanic, and piece of content against them. Cut what does not reinforce one.
**Mechanism:** Pillars make cuts defensible and keep a small team pointed one way.
**Examples:** Above.
**Counterexamples:** Larian's Divinity: Dragon Commander, a story-RPG and RTS hybrid with no clear core vision, which confused players and failed commercially by Larian's own account.
**When breaking it helped:** None in source. Revising a pillar the evidence proves wrong is a deliberate act, distinct from ignoring it; pillars are living, not sacred.
**Application:** At every phase gate ask "does the game still match its pillars?" If not, revisit the feature or the pillar, deliberately.
**Validation:** A feature's pillar can be named in one breath. If it takes a paragraph, it probably serves none.
**Evidence:** practiced; studio accounts the report relays (the Jak & Daxter team, Blow, Larian).

## P08 Remove What Does Not Create a Decision [added]

**Origin:** Sid Meier's practice of discarding features that yield no strategy (he removed an early-game growth feature in Civ II). Eric Barone cut late content from Stardew Valley to improve balance.
**Explanation:** Content for its own sake dilutes the ratio in P03 and the decision density in P02.
**Mechanism:** Fewer, sharper elements are easier to balance and read.
**Examples:** Above.
**Counterexamples:** The same features before the cut: Meier's Civ II growth feature unbalanced the early game; Barone's late Stardew content hurt balance until removed.
**When breaking it helped:** Flavor and atmosphere content that creates no decision but serves a pillar such as world or mood; judge it on the pillar `[outside report]`.
**Application:** For each feature on a wishlist, write the decision it creates for the player. Blank means cut or demote.
**Validation:** Removing it changes no player's behavior: it was safe to cut.
**Evidence:** practiced; Meier's and Barone's own accounts.

## P09 Simple Rules, Emergent Systems [added]

**Origin:** The report's analysis of Minecraft (block interactions), Factorio (mining to automation to strategy), and Civilization (interacting systems).
**Explanation:** Lasting interest comes from systems interacting, not from hand-placed content alone. Micro-actions feed a core loop, which feeds meta-goals.
**Mechanism:** Interacting systems produce situations the designer never authored, which stay fresh.
**Examples:** Factorio's chain from mining to automation to deeper strategy. Minecraft's block interactions. Civilization's interacting systems.
**Counterexamples:** None in source.
**When breaking it helped:** Handcrafted, authored experiences: Warren Spector's position, against Derek Yu's preference for procedural randomness. The report leaves the disagreement open; the pillars decide (replayability and emergence pull procedural, authored pacing pulls handcrafted).
**Application:** Map micro-action to loop to meta. Add a system only when it interacts with an existing one.
**Validation:** Players tell stories about things that happened that you did not script.
**Evidence:** practiced; the report's reading of shipped systems games. The Spector and Yu disagreement shows the trade-off is unsettled among practitioners.

## P10 Check Positive Feedback, Use Negative Feedback [added]

**Origin:** Systems-design practice; the report names power-ups and prestige (positive) and rubber-banding (negative).
**Explanation:** Unchecked positive feedback (the leader gets stronger) trivializes challenge and ends the game early. Negative feedback keeps the outcome in doubt but can feel unfair when visible.
**Mechanism:** Feedback loops amplify or dampen leads.
**Examples:** Power-ups and prestige as positive loops, rubber-banding as a negative loop, as the report names them. Mario Kart's item distribution as negative feedback `[outside report]`. Snowballing in 4X games tempered by maintenance costs `[outside report]`.
**Counterexamples:** None named in source; the report states the failure (a lead that trivializes the rest of the game) without a game.
**When breaking it helped:** Power fantasies where snowballing is the point of a bounded run, as in many roguelites `[outside report]`.
**Application:** For each system, label its loop. Decide deliberately whether a snowball is intended and where it ends.
**Validation:** Track how early a run's outcome becomes certain. Too early means unchecked positive feedback.
**Evidence:** practiced; a systems-design heuristic the report states with loop types named and no game or study attached.

## P11 Players Will Optimize; Tell Emergent From Degenerate [added]

**Origin:** The report's account of players optimizing "all the fun out" of a game, and of designers adding random factors or meta-goals (quests) once a system is solved. The report attributes the phrase to no one; it is commonly credited to Soren Johnson `[outside report]`.
**Explanation:** Players find dominant strategies, grind, and save-scum. Some optimization is intended mastery; some is degenerate play that removes the fun. Distinguishing them is the designer's job.
**Mechanism:** A dominant strategy collapses a decision into a chore.
**Examples:** Roguelikes adding random factors after players solved them. Wube reworking Factorio's progression after early tech trees produced dead-end strategies.
**Counterexamples:** Factorio's early tech trees, above, before the rework. Systems predictable enough to invite save-scumming and pattern exploits.
**When breaking it helped:** Speedrunning and theorycrafting communities, where optimization is the pleasure and patching it away removes what the community loves `[outside report]`.
**Application:** When one option is always picked, compute why (numbers, risk, access). Fix the cause, not the symptom. Make alternatives viable before nerfing the favorite `[outside report]`.
**Validation:** Several strategies see use and comparable success among skilled players.
**Evidence:** practiced; the report's account of designers patching solved systems.

## P12 Ramp Challenge With Skill [added]

**Origin:** Flow (Csikszentmihalyi) applied to games; the report cites FromSoftware's "ramp up then safe room" rhythm, skill floors and ceilings, and adaptive pacing in Endless Ocean.
**Explanation:** Difficulty and complexity rise in step with the player's growing skill, with relief after peaks. Players are neither bored nor overwhelmed.
**Mechanism:** Challenge slightly above current skill is the Flow channel.
**Examples:** Souls games (brutal area, then a safe room). Endless Ocean's dynamic pacing. Celeste's assist mode as a skill floor `[outside report]`.
**Counterexamples:** None named in source; the report states the failure (bored or overwhelmed) without a game.
**When breaking it helped:** Relaxing sims where stress-free play is the pillar and difficulty is not the goal; the report's own caveat.
**Application:** Chart what each level or encounter demands and what the player has learned by then. A spike is a demand with no prior teaching.
**Validation:** Death and quit locations. Many deaths that end in success are a ramp; many deaths that end in quitting are a wall.
**Evidence:** studied; Flow is published theory the report names. The ramp techniques attached to it are developer practice.

## P13 Teach Through Play, Not Text [added]

**Origin:** Jonathan Blow (The Witness's puzzles convey their own rules; his GDC talks advocate teaching through mechanics). Hidetaka Miyazaki (levels teach by dying). Miyamoto's "surprise and discovery in a safe environment."
**Explanation:** Mechanics demonstrate themselves in a safe space before the real test. Text explanation comes last, for what play could not show.
**Mechanism:** Discovery is itself a reward (P05).
**Examples:** The Witness. Portal's early chambers `[outside report]`. Super Mario Bros. 1-1 `[outside report]`.
**Counterexamples:** None in source.
**When breaking it helped:** Dense systems games where a reference alongside play, such as the Civilopedia, is genuinely needed `[outside report]`.
**Application:** For each mechanic, design the moment the player discovers it, and a low-stakes place to practice before it is required.
**Validation:** Testers can state the rule in their own words without having read it.
**Evidence:** practiced; Blow's and Miyazaki's accounts as the report relays them.

## P14 Clear, Consistent Feedback [added]

**Origin:** Game Feel (Swink); GDC postmortems on small feel tweaks with large effects; Supergiant adding reactive status text after playtests.
**Explanation:** Every player action should produce an immediate, legible response. Feedback is how players learn the system and feel agency.
**Mechanism:** Tight action-response loops create a sense of control.
**Examples:** Screen shake and audio cues (the report's Hotline Miami and Mario cases). Supergiant's reactive status text. Hit-stop and damage numbers `[outside report]`.
**Counterexamples:** Over-juiced feedback that obscures state or hides the information a decision needs `[outside report]`.
**When breaking it helped:** None in source.
**Application:** Audit each action for visible, audible, and systemic response. Then audit for legibility.
**Validation:** Testers can say what just happened and why.
**Evidence:** practiced; Swink's analysis, the postmortems the report mentions without naming, and Supergiant's account.

## P15 Core Fun Before Story, Art, or Rewards [added]

**Origin:** Miyamoto names overemphasizing story or graphics too early as a mistake. Valve, Blow, and Barone all describe cutting to protect the core.
**Explanation:** Prove the minute-to-minute loop in greybox before investing in presentation. Presentation on a weak core is expensive to undo.
**Mechanism:** Art and story create sunk cost that makes core pivots politically and emotionally hard.
**Examples:** Miyamoto tuning Mario's jump by running in the office. Miyazaki blocking out Dark Souls levels in 3D before dressing them. The report's playbook: placeholder assets until the core loop is solid.
**Counterexamples:** Miyamoto's admitted mistake: story or graphics emphasized too early at the expense of core fun.
**When breaking it helped:** Supergiant, which establishes audio-visual theme, world, and lore first by design. Narrative games where the story is the core loop `[outside report]`.
**Application:** Prototype with placeholder assets. Set a gate: the core is fun ugly, or the concept pivots.
**Validation:** People play the greybox repeatedly without being asked.
**Evidence:** practiced; the accounts of Miyamoto, Miyazaki, Valve, Blow, Barone, and Supergiant as the report relays them.

## P16 Measure Behavior, Not Opinions [added]

**Origin:** Valve (every employee playtests; heatmaps of where players die). Wube (precise telemetry on drop-off). Nintendo's relentless playtesting. The report's finding that players say they want freedom but enjoy guided challenge.
**Explanation:** What players do (quit here, pick this, replay that) is stronger evidence than what they say. Designers see patterns players will not.
**Mechanism:** Stated preference and revealed preference diverge.
**Examples:** Above.
**Counterexamples:** None in source.
**When breaking it helped:** Concept stage, before there is behavior to measure: the report's evaluation framework then reaches for analogs and more prototyping rather than deciding on opinion.
**Application:** Instrument death positions, time per activity, choice frequency, quit points. Record sessions on video to catch frustration moments. Ask open, non-leading questions afterward.
**Validation:** Decisions in the bible cite behavior, not quotes alone.
**Evidence:** practiced; Valve, Wube, and Nintendo practice as the report relays it. The report says it cites evidence for the stated-versus-revealed preference gap but names none.

## P17 AI and Simulation Are Not Playtesters [added]

**Origin:** The source report's explicit caution.
**Explanation:** AI can suggest experiments, simulate strategies, scan for exploits and rule conflicts, draft variants, and analyze logs. It cannot verify enjoyment and may hallucinate a fun outcome.
**Mechanism:** Fun is a felt response in a human; a model predicting it is a hypothesis.
**Examples:** The report's own uses: AI agents playing for strategic exploits, scripted simulations as one experiment design, log analysis for imbalances, always validated against a real player.
**Counterexamples:** None in source.
**When breaking it helped:** None in source.
**Application:** Every AI judgement of fun is written as a hypothesis with a human test attached. Final judgement is the human's, from live play. Simulation does the balance math and exploit discovery.
**Validation:** No bible entry's Evidence slot cites only an AI opinion.
**Evidence:** opinion; the report's own caution, stated without a study.

## P18 Finish a Simple Game Well [added]

**Origin:** Eric Barone ("I never finish anything; I just eventually ship when I feel it's good enough"), Valve ("sprint to cut features"; Gabe Newell on Half-Life: Alyx shipping later than it needed to), the report's scope-management emphasis.
**Explanation:** Scope to the team. Ship a tight small game before adding features. Late content additions are the most common self-inflicted wound.
**Mechanism:** The last 30% of a game costs more than the first 70% felt like `[outside report]`.
**Examples:** Stardew Valley launching only once Year 2 was fully playable.
**Counterexamples:** Barone adding too much content near the end, then cutting it to restore balance. Half-Life: Alyx held back by perfectionism, by Newell's account.
**When breaking it helped:** A missing table-stakes feature the audience will punish (controller support in a cozy sim) is scope, not creep `[outside report]`.
**Application:** Prioritize by pillar alignment and fun per development cost. Cut by default; justify additions.
**Validation:** The feature list shrinks as the ship date nears.
**Evidence:** practiced; Barone's and Valve's accounts plus the report's own emphasis.

## P19 A Distinct, Well-Communicated Concept Beats a Gimmick [added]

**Origin:** The report's commercial analysis: Papers, Please ("dystopian document-checking sim"), Celeste, Stardew Valley; Bushnell on fundamentals over engagement hacks.
**Explanation:** Market success correlates with a clear hook, a reachable niche, and execution quality. Grafting addictive mechanics from mobile and free-to-play onto a premium game costs goodwill. Fun games fail from too-small niches or no marketing; middling games succeed with clear concepts.
**Mechanism:** A hook is what a stranger repeats to a friend.
**Examples:** Above.
**Counterexamples:** Fun games that failed from a niche too small or no marketing: the report's finding, with no game named.
**When breaking it helped:** Live-service games where retention mechanics are the business model and the audience signed up for it `[outside report]`.
**Application:** Write the one-sentence hook and the "too similar to X unless your twist is strong" check at concept stage. Align the description, trailer, and demo with the core fun, not a side feature.
**Validation:** Strangers can repeat the hook back after hearing it once.
**Evidence:** opinion; the report's commercial analysis, which says it draws on market data and reproduces none.

## P20 The Bible Is the Memory [added]

**Origin:** The report's Game Bible recommendation; Larian's documentation culture; Sid Meier's design diaries.
**Explanation:** Vision, pillars, rules, constraints, experiments, playtest findings, and decisions with rationale live in one living, version-controlled document, written as prose, bullets, and tables. Every collaborator and every AI assistant reads it before judging and writes to it after deciding.
**Mechanism:** Rationale that is not written is re-argued or lost, and a game is years of decisions.
**Examples:** The report's sample entry: "Removed double-jump. Rationale: keeps challenge consistent with core momentum feel. Evidence: testers used it to bypass designed challenges in level 3, calling it cheat mode."
**Counterexamples:** None in source.
**When breaking it helped:** None in source.
**Application:** Type `/game-bible`; it owns the entry format and the states.
**Validation:** A new collaborator can explain why a cut feature was cut without asking anyone.
**Evidence:** practiced; the report's recommendation, Larian's documentation culture, and Meier's design diaries.
