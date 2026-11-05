---
name: game-playtest
description: Use when interpreting playtest feedback or deciding what to do about it, planning a playtest, or when a user reports "players say X is too hard / boring / confusing", "testers quit at level N", "is this fun?", "how do I test this on my own", or wants to A/B two versions of something.
---

# Game Playtest

Turn player reports into an evidence-based decision. The agent never judges fun itself: it says what the players showed, what the design intended, and how to find out which change closes the gap. Call the Skill tool with "game-design-principles" and read the bible before interpreting anything.

## Output

1. **Intent.** What this level, system, or moment was supposed to make the player feel, and the pillar it serves. Pull it from the bible; if the bible is silent, state the assumed intent and flag it.
2. **What players did.** Behavior first: where they stopped, died, quit, retried, sped up, went idle. Count of testers and their relation to the developer. Then what they said, as a second-class source.
3. **Gap.** The difference between intent and behavior, in one sentence. "Intended a tense ramp; two of five quit at the same screen" is a gap. "Too hard" is a report.
4. **Causes.** The candidate causes, each with the observation that would confirm it. For difficulty: unclear goal, hard to execute, spike from untaught demand, retry loop too long, bug or unintended skip.
5. **Principle and analogs.** The catalog entry that frames the gap (ramp challenge with skill, teach through play, fun per time) and two games that handled this moment.
6. **Hypothesis.** One sentence, falsifiable, written before any change: "adding a safe practice room before the hazard will cut quits at level 3 to zero of five."
7. **Experiment.** One variable changed. Two builds when there are enough testers (between-subjects); the same testers on a new build when there are not, noting the learning effect. What to log. What to ask afterward, open and non-leading ("what would you cut?", "what did you do because you felt you had to?"). Never say the feature's name first.
8. **Decision rule.** What result adopts the change, what discards it, what means "gather more."
9. **Record.** Playtest log entry and experiment entry for the bible, through the Skill tool with "game-bible".

## Solo testing

When the developer is the only tester: record sessions and watch for frustration moments; play as a deliberate novice; speedrun to find exploit loops; log deaths, times, and choice frequencies; change one variable per session. Small samples are directional, not noise. Two of five quitting at the same place is a strong signal.

## Where the agent fits

The agent can draft hypotheses, design the experiment, analyze logs for patterns, scan for rule conflicts and exploits, and simulate strategies. It cannot report whether anything was fun. Every judgement of fun in the reply is phrased as a hypothesis with its test.
