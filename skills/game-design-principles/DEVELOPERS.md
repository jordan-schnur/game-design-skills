# Developer Playbook

How exceptional developers and studios work, as the source report records them. Each entry: fun philosophy, prototyping habit, how they learn from playtesting, an admitted mistake, and the transferable lesson. Quotes are as the report gives them; where the report paraphrases, so does this file.

## Sid Meier (Firaxis)

- **Fun philosophy:** "A game is a series of interesting decisions." Every mechanic exists to create a choice with trade-offs.
- **Prototyping:** Spreadsheet prototypes for systems like economy before code. Decouples mechanics into explicit choices ("attack or not?").
- **Learning from play:** Discards elements that add no strategy, even late. Removed a feature in Civilization II that unbalanced early-game growth.
- **Admitted mistake:** Colonization suffered from overly random events, reducing player agency. Randomness must leave the decision with the player.
- **Transferable lesson:** Name the pillar (Civilization's: empire-building decisions) and align every mechanic to it. Cut what does not produce a decision.
- **Widely attributed rules (verify before quoting publicly):** when tuning a number, double it or halve it rather than nudging; the player must be the star; one good game beats two great ones bolted together.

## Shigeru Miyamoto (Nintendo)

- **Fun philosophy:** Surprise and discovery in a safe environment. "If it's possible to feel the movement is fun, that's the core of gameplay."
- **Prototyping:** Sketches on paper or whiteboard, then quick playable levels. Tuned Mario's jump by literally running in the office. Prototyped Wii Sports with real rackets and rubber balls.
- **Learning from play:** Relentless iterative playtesting with peers is standard at Nintendo.
- **Admitted mistake:** Overemphasizing story or graphics too early at the expense of core fun.
- **Transferable lesson:** Design from the player's perspective; make the core action fun in isolation before anything else.

## Hidetaka Miyazaki (FromSoftware)

- **Fun philosophy:** Player skill and mastery of a brutal but fair system; levels as metaphor.
- **Prototyping:** Builds traversable terrain and enemy placement before story; blocked out Dark Souls levels as 3D shapes to test flow.
- **Learning from play:** Responds to death data ("most deaths at area X" leads to chokepoint changes). Removes fights that are not crucial.
- **Admitted mistake:** Early Armored Core games were too obscure about player intent; Demon's Souls was made to be clearer.
- **Transferable lesson:** Teach through challenge, then give a safe room. Calibrate difficulty from where players actually die.

## Jonathan Blow (Thekla)

- **Fun philosophy:** Each game explores one novel idea deeply. Teach through gameplay, never text.
- **Prototyping:** Hand-crafted, sometimes on paper before code. Identified time-reversal as Braid's core and scrapped half-implemented mechanics to protect it.
- **Learning from play:** Ruthless iteration until the core idea works.
- **Admitted mistake:** Let code complexity creep into The Witness and had to refactor.
- **Transferable lesson:** One core idea, protected by cutting. Puzzles should convey their own rules.

## Valve

- **Fun philosophy:** Build games the team wants to play. Flat structure; players as coworkers.
- **Prototyping and testing:** Weekly playtests by all developers; for Portal, Kim Swift had the whole company play. Metrics (Source engine heatmaps of where players die) guide design.
- **Admitted mistake:** Gabe Newell has said Half-Life: Alyx could have shipped sooner but for perfectionism.
- **Transferable lesson:** Everyone plays, often. Sprint to cut features when needed. Instrument where players die.

## Larian Studios

- **Fun philosophy:** Systemic RPG freedom, iterated in the open.
- **Prototyping and testing:** Extensive dev diaries (Swen Vincke). Early alphas to Kickstarter backers. Combat iterated with AI testers plus community feedback; modding support extends balancing to the community.
- **Admitted mistake:** Divinity: Dragon Commander lacked a clear vision (story RPG vs RTS hybrid confused players) and failed commercially.
- **Transferable lesson:** Define the core experience in one sentence or players will not know what they are buying. Document everything.

## Wube Software (Factorio)

- **Fun philosophy:** Automation puzzles; the loop from manual mining to factory to deeper strategy.
- **Testing:** Watch new players' first hours. Observe player-built factories to guide updates. Precise telemetry on where players drop off or quit.
- **Admitted mistake:** Early tech trees led to dead-end strategies; progression was reworked.
- **Transferable lesson:** Add a feature only when it fits a well-understood loop. Know exactly where players stop.

## Eric Barone, ConcernedApe (Stardew Valley)

- **Fun philosophy:** The core loop (farming and relationships) above everything.
- **Prototyping and testing:** Solo for years; engaged future fans on forums and Reddit; balanced farming vs combat by playing thousands of hours himself and tweaking numbers.
- **Admitted mistake:** Added too much content near the end, then cut it to restore balance.
- **Transferable lesson:** "I never finish anything; I just eventually ship when I feel it's good enough." Avoid scope creep; ship when the core is right.

## Supergiant Games (Bastion, Hades)

- **Fun philosophy:** A strong audio-visual theme from the start; world and lore established early (a deliberate exception to greybox-first).
- **Testing:** Player-recording metrics. Added reactive status text (the narrator) after playtests showed players wanted acknowledgement.
- **Admitted mistake:** Pyre had pacing issues; later titles use shorter story beats.
- **Transferable lesson:** Continuous feedback to the player is a feature. Theme can lead if theme is a pillar.

## Where they disagree

- **Procedural vs handcrafted:** Derek Yu (Spelunky) prioritizes procedural randomness; Warren Spector favors handcrafted detail. Neither is wrong. The pillars decide: replayability and emergence pull toward procedural, authored pacing and story pull toward handcrafted.
- **Theme first vs core first:** Supergiant leads with audio-visual theme; Miyamoto, Blow, Miyazaki, and Valve prove the loop in greybox. If theme is a pillar, lead with it; otherwise greybox.
- **Randomness:** Meier warns (Colonization) that randomness can remove agency; roguelike designers add it to defeat solved strategies. Randomness should create decisions, not replace them.

## How to use a case study

Match the developer to the question, not to the genre. Balancing a number? Meier and Barone. Core feel? Miyamoto. Difficulty? Miyazaki. Scope and cutting? Blow, Valve, Barone. Telemetry? Valve and Wube. Documentation and community? Larian. Feedback to the player? Supergiant.
