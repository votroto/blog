---
layout: post
title: "Just Deserts"
subtitle: "An interactive introduction to fundamental solution concepts in coalitional game theory."
excerpt: "A group of friends has baked a cake, and now they are looking to share it. How should they do that?"
hero: "/assets/code/fair-share.html"
tag: "Game Theory"
---

A group of friends has baked a cake, and now they are looking to share it. How should they do that? Let's start with a couple of obvious requirements: *feasibility* -- they can't split more than the entire cake; *efficiency* -- if everyone is happy to switch to a different division, and some players would strictly prefer it, they ought to pick that division instead. In particular, they ought not to throw any of the cake away.

Efficient allocations are our first solution concept called *pre-imputations* (the faint hyperplane hatched in green). But is that enough? What if some of the friends' slices end up being smaller than what they could get by themselves? Such allocations are not *individually-rational*! The group better look for concepts that entice individuals to cooperate, which is exactly what **imputations** are (the whole blue triangle).

Still, imputations are not stable; there may be sub-coalitions which some of the friends would join instead. By strengthening the concept again to only *coalitionaly-rational* allocations, we get a very important set called the **core** (highlighted in beige).

But the core is the entire beige polygon. Clearly, some of those allocations favor some of the friends unfairly. If fairness is what the group is after, they should try the **Shapley value** (drawn as a unique white point). Intuitively, fair allocations should be in the middle of the core --- and for convex games, that is precisely where the Shapley value is.

There are many other solution concepts: if instead of stability or fairness you're worried how much anyone would complain, there is the **Nucleolus**; if a fair division of voting power is your goal, have a look at the *Banzhaf index* (if you generalize that, you get the *Banzhaf value*). Some of the concepts above may not have a solution in every game, but the *least-core* and the *pre-nucleolus* will. The list does not end there.

Play around with the controls above and see how the concepts are related to one another.