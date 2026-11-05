# T6 Bible edge cases

Four fresh Sonnet agents, each given only the user's words with `ask-sid` reachable through the real Skill tool: E1 in a copy of `empty`, E2 in `two`, E3 in `nonbible`, E4 in `big`. Suite at commit b567f35.

| Scenario | Prompt | Criteria from PLAN.md | Verdict |
|---|---|---|---|
| E1 | shop between fights, no bible | Pillar check says "no bible yet: /game-bible": met, exact phrase on the Pillar check line; verdict marked provisional. | pass |
| E2 | shop between fights, two bibles | Asks which bible: not met, picked docs/game-bible.md itself, offered correction only. | fail |
| E3 | boss per level, stale design.md | Does not treat design.md as the bible: met, read as stale context, Pillar check says no pillars. Names /game-bible: met, in Pillar check and the hand-off line. | pass |
| E4 | shop between fights plus Feature 7, v1-style bible | Reads it: met, cites Feature 7's fields and the missing riskiest assumption. Stateless decisions treated as Proposed unless confirmed: not met, explicitly declines to assign a state. Says the section is past fifty lines: not met, nothing on length (fixture Decisions section is 98 lines). | fail |

Verdict: 2 of 4 (E1, E3 pass; E2, E4 fail).

## Excerpts from failing scenarios

E2 chose rather than asked:

> Bible note: two files matched. Used docs/game-bible.md (the canonical path, living, has the core block). Root GAME-BIBLE.md is a stub labelled "(old)" and was not used as a source; consider deleting it, since a second bible invites drift. Say so if you meant the root one.

The fixture's root bible is a three-line stub, so the choice was the right one in practice; the criterion is still not met, and a two-bible fixture with two live files would have had no basis for the pick.

E4 refused the Proposed default and said nothing about section length:

> Its State is unrecorded (no State line), so I am not treating it as Proposed, Decided, or Dropped, and I am not setting one.

E4 also answered the shop question with "Nothing recorded on shops" and did not consult the twelve Feature entries for the shop, though none names a shop, so that part is not wrong.

Side finding: E1, E3 and E4 all carried the six-line form and the provisional flag correctly; E3 picked the platformer genre section from design.md, which is the right section for that fixture. The misses are the two behaviours the plan singles out for ambiguity (which file, which state), not the form.
