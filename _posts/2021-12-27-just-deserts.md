---
layout: post
title: "Just Deserts"
subtitle: "An interactive introduction to fundamental solution concepts in coalitional game theory."
excerpt: "A group of friends has baked a cake, and now they are looking to share it. How should they do that?"
hero: "/assets/code/just-deserts.html"
tag: "Game Theory"
---

A group of friends has baked a cake and are now looking to share it. How should they do that? Let's start with a couple of obvious requirements: feasibility --- they can't split more than the entire cake; efficiency --- if everyone is happy to switch to a different division, and some players strictly prefer it, they should pick that division instead. In particular, they ought not to throw any of the cake away.

## Cooperation

Efficient allocations are our first solution concept called pre-imputations (the faint hyperplane hatched in green). But is that enough? What if some of the friends' slices end up being smaller than what they could get by themselves? The group better look for individually-rational concepts that entice individuals to cooperate, which is precisely what *imputations* are (the whole blue triangle).

While taking the largest slice that leaves no room for complaints from individuals may be tempting, such behavior might result in not getting invited next time --- the group might break up into sub-coalitions. By strengthening the concept again to only coalitionaly-rational allocations, we get a fundamental set called the *core* (highlighted in beige). As long as they pick a division out of the core, it will be in everyone's best interest to cooperate, but which allocation should they choose?

## Fairness

A natural goal for the group is to split the cake fairly. One possibility is to measure the contribution of each friend from the perspective of every other individual and every sub-group, then everyone would get a slice proportional to their perceived usefulness. This concept is called the *normalized Banzhaf value* (the un-normalized version is drawn as a black point) and satisfies natural axioms of fairness: people who bring the same value get the same slice, and people who bring nothing get nothing; however, suppose that the friends get together regularly and their contribution is slightly different each time. Due to the normalization, what appeared like fair slices in individual sessions might not add up to something fair in the long run.

Finally, we arrive at a fair, efficient, and additive solution concept called the *Shapley value* (drawn as a white point). Imagine the friends joining the group in a random order, each bringing some value increase to the group. The Shapley value is the average of such increases by each friend over every possible order. While this may seem unnecessarily convoluted, it turns out to be the only completely fair way.

*Play around with the controls above and see how the concepts are related to one another.* Once you are ready, you can have a look at the intersection of these goals [in the fourth dimension]({% post_url 2024-12-12-half-a-byte %}).