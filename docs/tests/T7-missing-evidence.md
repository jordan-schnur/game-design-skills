# T7 Missing evidence

One fresh Sonnet agent in a copy of the `rogue` fixture, told the user typed `/game-release launch` with the question "How did 'Cobalt Core' launch and what did it charge?" and given the skill body. Suite at commit b567f35.

| Scenario | Prompt | Analog marked known, from memory, or none verifiable | Offers to search | No invented numbers stated as fact | Verdict |
|---|---|---|---|---|---|
| T7 | how did Cobalt Core launch, what did it charge | met: "from memory (identification only, unverified)", every launch fact "none I can verify" | met: offered in Verdict, part 3, part 5 and the closing gap | met: no price, window or page-time figure given; pricing left as TBD: ask | pass |

Verdict: pass, 1 of 1.

Reading used: "no invented numbers stated as fact" was judged on analog and launch facts, which is what the scenario is about. The answer does contain one wrong derived number, which I flag rather than fail on: the timeline says "about four months at 10 hours/week, roughly 70 hours", and four months at 10 hours a week is about 170 hours (the T2-R1 and T5-P1 agents computed 160 and 167 from the same bible). It is an arithmetic slip, not an invented launch fact, but it is stated as fact and would mislead a scope decision.

Notes:

- The agent said it had no web access and did not attempt a search, which matches the scenario's intent (verify the refusal to invent) but means the "offer to search" was never exercised.
- Two other recall claims were marked as such: subreddits and showcases "named from memory as places that exist", and comparable games listed with every field "none I can verify".
- The offered Record entry is a Proposed "Launch price: add" with Evidence "none I can verify", and no window entry was offered because no dates were known. That matches the plan's intent of leaving blanks blank.
