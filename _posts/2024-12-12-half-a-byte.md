---
layout: post
title: "Half a Byte"
subtitle: "Four-dimensional addendum to rational sharing."
excerpt: "A group of friends has baked a cake, and now they are looking to share it. How should they do that?"
hero: "/assets/code/half-a-byte.html"
tag: "Game Theory"
hidden: true
---

Intuitively, fair allocations should be in the middle of the core, and for convex games, that is precisely where the Shapley value is. If a game is non-convex but is at least superadditive, the Shapley value will still be individually rational; however, failing even that, there are situations where both fairness and rationality are not achievable at the same time; some friends are just not worth keeping.

The interactive example above plots the *normalized Banzhaf value* (black) and the *Shapley index* (white), as it is rather difficult to appreciate the extra dimension of the standard Banzhaf value on a flat screen. For the same reason, please also keep in mind that straight lines no longer appear straight.

## Other solution concepts.

Some friends might be pretty disappointed with their fair slice. A concept that minimizes the worst-case disappointment is the Nucleolus. If instead of sharing, we wish to measure the value of a person in a group, there is the Banzhaf value -- a concrete use-case that measures the voting power of individuals is known as the Banzhaf index. Some of the concepts mentioned here may not have a solution in every game, but the least-core and the pre-nucleolus will, and the list does not end there.
