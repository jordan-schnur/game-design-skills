# T3 Grounding

One fresh Sonnet agent in a copy of the `rogue` fixture, given only the user's words ("I want to add unlockable characters you earn by finishing runs"), with `ask-sid` reachable through the real Skill tool. Suite at commit b567f35.

The fixture bible holds exactly the material the criteria expect: the Decided entry "Permanent unlocks between runs: remove", pillar 2 ("Runs are short and complete. Rules out: meta-progression that gates content behind run count") and a core-loop Meta line that says new characters are all available from the start.

| Scenario | Prompt | Evidence names the Decided entry and pillar 2 | Verdict not provisional | Verdict |
|---|---|---|---|---|
| T3 | unlockable characters earned by finishing runs | not met: `ask-sid` never ran, no Evidence line | not met: no verdict given at all | fail |

Verdict: fail, 0 of 1.

## Excerpt

The whole reply, which came from the brainstorming skill rather than `ask-sid`:

> If you'd rather skip the questions and have me just start building, say so and I will.
>
> Otherwise, one thing first: picture a player who has just finished a run and unlocks a new character. What happens in that moment, and why does it make them want another run?
>
> SKILLS INVOKED: superpowers:brainstorming

## Notes

- This is a trigger miss on an unambiguous design prompt, the kind T1 passed 5 of 5 at the earlier commit. The prompt begins "I want to add", which reads as a request to build something; the brainstorming skill's description claims every creative or feature-adding request, and it won. Hypothesis, not verified: the two descriptions overlap on "adding a feature", and `ask-sid` lost the tie.
- The grounding question itself (does the Evidence line find the Decided entry) is therefore unanswered by this run, not failed on its merits. The T2 answers in the same fixture (Q5, S5) did find that entry unprompted, which is weak evidence the grounding works once the skill fires.
