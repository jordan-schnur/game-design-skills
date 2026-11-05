# Game Design Principles Catalog

Each entry: Principle, Origin, Explanation, Mechanism, Examples, Counterexamples, Application, Validation, Confidence. Confidence reflects how well the principle is supported by designer consensus and evidence, not how strongly it applies to any one game. Where an attribution is a paraphrase or disputed, the Origin line says so.

The source report this catalog is drawn from describes a catalog of roughly 75 to 80 principles but supplies four in full. Entries 1 to 4 are those four. Entries 5 onward are principles the same report states or relies on in its body, written up in the same format; their Origin lines name the developer or work the report ties them to. Treat them as faithful to the report, not as independently re-sourced.

---

## 1. Easy to Learn, Difficult to Master

**Origin:** Nolan Bushnell (Atari), stated around 1971. Rob Pardo (Blizzard) restates it as "easy to learn and almost impossible to master."
**Explanation:** Introduce core controls and mechanics simply, through natural mapping or a light tutorial, while making sure advanced play and strategy exist beyond them.
**Mechanism:** A low entry barrier grows the audience; a high skill ceiling keeps engagement through mastery.
**Examples:** Tetris (one rotate button, emergent high-skill play). Chess (simple rules, deep tactics). Asteroids (thrust and shoot are simple; dodging many bullets is hard).
**Counterexamples:** Strategy games that front-load every mechanic on novices. A single punishing difficulty with no on-ramp (the report cites Trauma Center without difficulty levels).
**Application:** Prototype the simplest version. Can someone enjoy it with minimal explanation? If not, simplify controls or add early guidance. Add layers (upgrades, obstacles) only as player skill grows.
**Validation:** Novices clear early tasks quickly; experts keep discovering combos and strategies. If everyone breezes through, or everyone dies early, the curve is off.
**Confidence:** High.

## 2. A Game Is a Series of Interesting Decisions

**Origin:** Sid Meier. Soren Johnson echoes it: "A game design is a collection of interesting decisions, as Sid would say."
**Explanation:** Every element should present a choice, not a chore. Add a unit, item, or mechanic only when it creates meaningful tactics.
**Mechanism:** Decisions engage the player intellectually; each one invokes goals and trade-offs.
**Examples:** Civilization (every tech, city placement, and unit build is a tactical choice). Portal and The Witness (each puzzle is a discrete decision to reach the next).
**Counterexamples:** "Collect 100 coins" fetch quests. Scripted sequences that remove choice. Games with one obviously best move, where choice is trivial.
**Application:** For any mechanic ask "why would a player care?" and "what options does the player have?" Remove features that create no decision, such as redundant upgrade paths.
**Validation:** Watch for players skipping modes or repeating one exact strategy. Several strategies should stay viable.
**Confidence:** High.

## 3. Maximize Fun per Time

**Origin:** Soren Johnson (Designer Notes): "Fun Factor = Interesting Decisions / Actual Time Played."
**Explanation:** Minimize filler (loading, busywork, travel, menu navigation) between interesting moments. Respect the player's time.
**Mechanism:** Tedium breaks immersion and reads as disrespect; density of decisions keeps engagement.
**Examples:** Superhot (every second of thought counts, no downtime). Stardew Valley (a day's tasks fit one screen, little back-and-forth).
**Counterexamples:** Long unskippable cutscenes. Grindy level-gating. Clicking an object twenty times to build one thing.
**Application:** Log time spent per activity. If players spend over about 30% of a session in menus or repetitive tasks, simplify UI or batch actions. Padding playtime is the direct violation.
**Validation:** Ask testers whether they felt they were wasting time. "This is boring to do" is a fail.
**Confidence:** Medium (designer insight, supported by user-feedback evidence).

## 4. Movement Itself Should Be Fun

**Origin:** Often cited by Nintendo's Shigeru Miyamoto on Mario; analyzed in Steve Swink's book Game Feel.
**Explanation:** Core actions (running, jumping, shooting) must be satisfying in isolation before content, story, or rewards are layered on.
**Mechanism:** Immediate sensory reward and agency set a positive tone for everything built on top.
**Examples:** Celeste (precise jump and dash). Hotline Miami (fast gunplay, screen shake). Super Mario Bros. (jump physics with slight downward momentum while rising).
**Counterexamples:** Floaty, laggy jumps in many early 3D platformers. Deadly Premonition's driving, which hurt immersion.
**Application:** Build a tech demo of just the core movement. Tune gravity, inertia, input smoothing, animation, and audio cues. Small tweaks matter disproportionately.
**Validation:** Compare time-to-complete and reported feel on a simple obstacle across parameter sets. If parameter changes do not move either, the design needs review.
**Confidence:** High.

## 5. Fun Comes From Learning and Mastery

**Origin:** Raph Koster, A Theory of Fun for Game Design ("the brain loves mastering patterns"). Csikszentmihalyi's Flow: challenge matched to skill. Self-determination theory: competence, autonomy, relatedness.
**Explanation:** Players enjoy recognizing and mastering patterns. Once a pattern is fully mastered, repetition becomes grind.
**Mechanism:** Learning produces competence; competence is intrinsically rewarding.
**Examples:** Roguelikes that keep introducing pattern variations. Dark Souls teaching through repeated death.
**Counterexamples:** Repetitive collection with no new pattern. Also: relaxation games where mastery is not the point and pattern-learning should stay gentle.
**Application:** Ask what the player is learning at each stage. When the answer is "nothing new," introduce a variation or end the segment.
**Validation:** Watch for autopilot behavior (checking phone, skipping, sighing). Note when it begins.
**Confidence:** High for the mechanism; frameworks like MDA, Bartle types, and Koster are lenses, not recipes.

## 6. Constraints Make Choices Meaningful

**Origin:** Widely held; the report cites limited inventory in The Legend of Zelda, time limits, and one-button arcade controls.
**Explanation:** Scarcity and limits force trade-offs; trade-offs are what make a decision interesting. Over-constraining or removing all constraints both frustrate.
**Mechanism:** A choice costs something only when resources are finite.
**Examples:** Zelda's limited inventory. Into the Breach's tiny grids and perfect information. Single-button arcade games.
**Counterexamples:** Constraints that feel arbitrary or punish without teaching. Freedom-first sandboxes where open-endedness is itself the pillar.
**Application:** When a choice feels flat, look for the missing constraint before adding content.
**Validation:** Players deliberate visibly, and different players choose differently.
**Confidence:** High.

## 7. Every Feature Must Serve a Pillar

**Origin:** Design-pillar practice; the report cites Jak & Daxter's team refusing late-added guns, Celeste's "platforming precision plus personal story," Civilization's "empire-building decisions," and Jonathan Blow scrapping half-built mechanics in Braid to keep focus.
**Explanation:** Write 3 to 5 pillars early. Judge every feature, mechanic, and piece of content against them. Cut what does not reinforce one.
**Mechanism:** Pillars make cuts defensible and keep a small team pointed one way.
**Examples:** Above. Also Larian's Dragon Commander failing commercially, which they attribute to no clear core vision.
**Counterexamples:** A pillar that was wrong and should itself be revised after evidence; pillars are living, not sacred.
**Application:** At every phase gate ask "does the game still match its pillars?" If not, revisit the feature or the pillar, deliberately.
**Validation:** A feature's pillar can be named in one breath. If it takes a paragraph, it probably serves none.
**Confidence:** High.

## 8. Remove What Does Not Create a Decision

**Origin:** Sid Meier's practice of discarding features that yield no strategy (he removed an early-game growth feature in Civ II). Eric Barone cut late content from Stardew Valley to improve balance.
**Explanation:** Content for its own sake dilutes the ratio in principle 3 and the decision density in principle 2.
**Mechanism:** Fewer, sharper elements are easier to balance and read.
**Examples:** Above.
**Counterexamples:** Flavor and atmosphere content that serves a pillar (world, mood) without creating a decision. Judge it on the pillar, not on decisions.
**Application:** For each feature on a wishlist, write the decision it creates for the player. Blank means cut or demote.
**Validation:** Removing it changes no player's behavior: it was safe to cut.
**Confidence:** High.

## 9. Simple Rules, Emergent Systems

**Origin:** The report's analysis of Minecraft (block interactions), Factorio (mining to automation to strategy), Civilization (interacting systems).
**Explanation:** Lasting interest comes from systems interacting, not from hand-placed content alone. Micro-actions feed a core loop, which feeds meta-goals.
**Mechanism:** Interacting systems produce situations the designer never authored, which stay fresh.
**Examples:** Factorio's resource chains. Minecraft. Civilization's economy, diplomacy, and warfare interacting.
**Counterexamples:** Handcrafted, authored experiences (Warren Spector's position) where emergent chaos would undermine the intended arc. Derek Yu favors procedural randomness; the sources disagree and the pillars decide.
**Application:** Map micro-action to loop to meta. Add a system only when it interacts with an existing one.
**Validation:** Players tell stories about things that happened that you did not script.
**Confidence:** Medium-high.

## 10. Check Positive Feedback, Use Negative Feedback

**Origin:** Systems-design practice; the report names power-ups and prestige (positive) and rubber-banding (negative).
**Explanation:** Unchecked positive feedback (the leader gets stronger) trivializes challenge and ends the game early. Negative feedback keeps the outcome in doubt but can feel unfair when visible.
**Mechanism:** Feedback loops amplify or dampen leads.
**Examples:** Mario Kart's item distribution (negative). Snowballing in 4X games (positive, often tempered by maintenance costs).
**Counterexamples:** Power fantasies where snowballing is the point for a bounded run (many roguelites).
**Application:** For each system, label its loop. Decide deliberately whether a snowball is intended and where it ends.
**Validation:** Track how early a run's outcome becomes certain. Too early means unchecked positive feedback.
**Confidence:** High.

## 11. Players Will Optimize; Tell Emergent From Degenerate

**Origin:** Soren Johnson's observation that players optimize the fun out of a game, and the roguelike practice of adding randomness or meta-goals when players solve a system.
**Explanation:** Players find dominant strategies, grind, and save-scum. Some optimization is intended mastery; some is degenerate play that removes the fun. Distinguishing them is the designer's job.
**Mechanism:** A dominant strategy collapses a decision into a chore.
**Examples:** Wube reworking Factorio's tech tree when it produced dead-end strategies.
**Counterexamples:** Speedrunning and theorycrafting communities where optimization is the pleasure. Do not patch away what a community loves.
**Application:** When one option is always picked, compute why (numbers, risk, access). Fix the cause, not the symptom. Prefer making alternatives viable over nerfing the favorite.
**Validation:** Several strategies see use and comparable success among skilled players.
**Confidence:** High.

## 12. Ramp Challenge With Skill

**Origin:** Flow (Csikszentmihalyi) applied to games; the report cites FromSoftware's "ramp up then safe room" rhythm, skill floors and ceilings, and adaptive pacing in Endless Ocean.
**Explanation:** Difficulty and complexity should rise in step with the player's growing skill, with relief after peaks. Players neither bored nor overwhelmed.
**Mechanism:** Challenge slightly above current skill is the Flow channel.
**Examples:** Souls games (brutal area, then bonfire). Celeste's assist mode as a floor.
**Counterexamples:** Relaxing sims where stress-free play is the pillar; difficulty is not the goal.
**Application:** Chart what each level or encounter demands and what the player has learned by then. A spike is a demand with no prior teaching.
**Validation:** Death and quit locations. Many deaths that end in success are a ramp; many deaths that end in quitting are a wall.
**Confidence:** High.

## 13. Teach Through Play, Not Text

**Origin:** Jonathan Blow (The Witness's puzzles convey their own rules). Hidetaka Miyazaki (levels teach by dying). Nintendo's level design.
**Explanation:** Mechanics should demonstrate themselves in a safe space before the real test. Text tutorials are a last resort.
**Mechanism:** Discovery is itself a reward (principle 5); reading is not.
**Examples:** Portal's early chambers. The Witness. Super Mario Bros. 1-1.
**Counterexamples:** Dense systems games where a reference is genuinely needed alongside play (Civilopedia).
**Application:** For each mechanic, design the moment the player discovers it, and a low-stakes place to practice before it is required.
**Validation:** Testers can state the rule in their own words without having read it.
**Confidence:** High.

## 14. Clear, Consistent Feedback

**Origin:** Game Feel (Swink); postmortems on "juice"; Supergiant adding status text after playtests.
**Explanation:** Every player action should produce an immediate, legible response. Feedback is how players learn the system and feel agency.
**Mechanism:** Tight action-response loops create a sense of control.
**Examples:** Hit-stop, screen shake, audio cues, damage numbers. Supergiant's narrator reacting to player behavior.
**Counterexamples:** Over-juiced feedback that obscures state, or hides the information a decision needs.
**Application:** Audit each action for visible, audible, and systemic response. Then audit for legibility.
**Validation:** Testers can say what just happened and why.
**Confidence:** High.

## 15. Core Fun Before Story, Art, or Rewards

**Origin:** Miyamoto names overemphasizing story or graphics too early as a mistake. Valve, Blow, and Barone all describe cutting to protect the core.
**Explanation:** Prove the minute-to-minute loop in greybox before investing in presentation. Presentation on a weak core is expensive to undo.
**Mechanism:** Art and story create sunk cost that makes core pivots politically and emotionally hard.
**Examples:** Miyamoto tuning Mario's jump by running in the office. Miyazaki blocking out Dark Souls levels in 3D before dressing them. Supergiant is a counter-case: they establish audio-visual theme early, by design.
**Counterexamples:** Supergiant, above, and narrative games where the story is the core loop.
**Application:** Prototype with placeholder assets. Set a gate: the core is fun ugly, or the concept pivots.
**Validation:** People play the greybox repeatedly without being asked.
**Confidence:** High.

## 16. Measure Behavior, Not Opinions

**Origin:** Valve (every employee playtests; heatmaps of where players die). Wube (precise telemetry on drop-off). Nintendo's relentless playtesting. The report's finding that players say they want freedom but enjoy guided challenge.
**Explanation:** What players do (quit here, pick this, replay that) is stronger evidence than what they say. Designers see patterns players will not; testers say what they think you want to hear.
**Mechanism:** Stated preference and revealed preference diverge.
**Examples:** Above.
**Counterexamples:** Early concept stages where there is no behavior yet to measure; opinions are all you have, so get many and discount them.
**Application:** Instrument death positions, time per activity, choice frequency, quit points. Record sessions. Ask open, non-leading questions afterward ("what would you cut?").
**Validation:** Decisions in the bible cite behavior, not quotes alone.
**Confidence:** High.

## 17. AI and Simulation Are Not Playtesters

**Origin:** The source report's explicit caution.
**Explanation:** AI can suggest experiments, simulate strategies, scan for exploits and rule conflicts, draft variants, and analyze logs. It cannot verify enjoyment and may hallucinate a fun outcome.
**Mechanism:** Fun is a felt response in a human; a model predicting it is a hypothesis.
**Examples:** Headless balance simulations find dominant strategies but not whether winning with them is satisfying.
**Counterexamples:** None for the core claim. Simulation is excellent for balance math and exploit discovery.
**Application:** Every AI judgement of fun is written as a hypothesis with a human test attached. Final judgement is the human's, from live play.
**Validation:** No bible entry's Evidence slot cites only an AI opinion.
**Confidence:** High.

## 18. Finish a Simple Game Well

**Origin:** Eric Barone ("I never finish anything; I eventually ship when I feel it's good enough"), Valve ("sprint to cut features"; Gabe Newell on Half-Life: Alyx shipping later than it needed to), the report's scope-management emphasis.
**Explanation:** Scope to the team. Ship a tight small game before adding features. Late content additions are the most common self-inflicted wound.
**Mechanism:** The last 30% of a game costs more than the first 70% felt like.
**Examples:** Stardew Valley launching only once Year 2 was fully playable; Barone cutting late content.
**Counterexamples:** A missing table-stakes feature the audience will punish (controller support in a cozy sim) is scope, not creep.
**Application:** Prioritize by pillar alignment and fun per development cost. Cut by default; justify additions.
**Validation:** The feature list shrinks as the ship date nears.
**Confidence:** High.

## 19. A Distinct, Well-Communicated Concept Beats a Gimmick

**Origin:** The report's commercial analysis: Papers, Please ("dystopian document-checking sim"), Celeste, Stardew Valley; Bushnell on fundamentals over engagement hacks.
**Explanation:** Market success correlates with a clear hook, a reachable niche, and execution quality. Grafting addictive mechanics from free-to-play onto a premium game costs goodwill. Fun games fail from too-small niches or no marketing; middling games succeed with clear concepts.
**Mechanism:** A hook is what a stranger repeats to a friend.
**Examples:** Above.
**Counterexamples:** Live-service games where retention mechanics are the business model and the audience signed up for it.
**Application:** Write the one-sentence hook and the "too similar to X unless your twist is Y" check at concept stage. Align the trailer and demo with the core fun, not a side feature.
**Validation:** Strangers can repeat the hook back after hearing it once.
**Confidence:** Medium-high.

## 20. The Bible Is the Memory

**Origin:** The report's Game Bible recommendation; Larian's documentation culture; Sid Meier's design diaries.
**Explanation:** Vision, pillars, rules, constraints, experiments, playtest findings, and decisions with rationale live in one living, version-controlled document. Every collaborator and every AI assistant reads it before judging and writes to it after deciding.
**Mechanism:** Rationale that is not written is re-argued or lost, and a game is years of decisions.
**Examples:** Decision entry: "Removed double-jump. Rationale: keeps challenge consistent with core momentum feel. Evidence: testers used it to bypass designed challenges in level 3, calling it cheat mode."
**Counterexamples:** None, though the form should be concise prose, bullets, and tables, never cryptic.
**Application:** Call the Skill tool with "game-bible".
**Validation:** A new collaborator can explain why a cut feature was cut without asking anyone.
**Confidence:** High.
