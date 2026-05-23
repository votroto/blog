---
layout: post-katex
title: "List of Continuous Games"
subtitle: "A curated and standardised library of continuous-game examples"
excerpt: "We present a benchmark for game-solving algorithms: a list of continuous games from the literature."
tag: "Game Theory"
img: "/assets/img/games.svg"
---


We present a compilation of parametrized continous games drawn from both recent and classical literature. Analogous to the [Gamut](https://dl.acm.org/doi/10.5555/1018410.1018840) test set of finite games, our suite should provide a convincing and comprehensive benchmark for continous-game solvers. Specifically, we compiled multiplayer games with continuous utility functions and compact strategy sets and, where possible, with known equilibria.

![Game table]({{ site.assets }}/assets/img/gametable.png){: .invertible }

## Standardization

Players are identified by successive natural numbers $$1,2,\dots$$, while their variables are named consistently by $$x$$ followed by two indices indicating the controling player first and the variable number second. For example, variable `3` of player `4` is refered to as $$x_{34}$$.

<figure>
<figcaption markdown="1">
Consider the following **Tangent Ridge Game** with two players, each with a single variable on the interval

$$x_{i} \in [0,1] \quad \forall i \in \{1,2\}.$$

The utility functions are defined by:

$$
\begin{aligned}
u_1(x_1,x_2) &= -\sqrt{ |x_1-x_2| } \\
u_2(x_1,x_2) &= -\sqrt{ |x_1-\tan(x_2)| }
\end{aligned}
$$

The game has an equilibrium at $$x^\star=(0,0)$$.
</figcaption>
<img class="invertible" alt="tan-ridge game" src="{{ site.assets }}/assets/img/games.svg"/>
</figure>


Note that continuous games are complicated, and one game may have many representations. A strategy set as simple as $$z\in[-1,1]$$ may also be writen as $$z^2\le1$$ or $$(-1\ge z \land z \le1)$$, with all three having potentially different implementations in your solver.

In addition to the game description in a canonical format we also provide a simple and reusable format, where we formulate the constraints for each player in terms of *non-negative* and *equal-to-zero* relations. The incentives of players are described by *utility* functions. In our simplified format the Tangent Ridge game is equivalent to:

```
NNEG1: x11 >= 0, 1-x11 >= 0
NULL1: 0 = 0
NNEG2: x21 >= 0, 1-x21 >= 0
NULL2: 0 = 0
U1: -sqrt(abs(x11-x21))
U2: -sqrt(abs(x11-tan(x21)))
```


## Cooperation

Efficient allocations are our first solution concept called pre-imputations (the faint hyperplane hatched in green). But is that enough? What if some of the friends' slices end up being smaller than what they could get by themselves? The group better look for individually-rational concepts that entice individuals to cooperate, which is precisely what *imputations* are (the whole blue triangle).

While taking the largest slice that leaves no room for complaints from individuals may be tempting, such behavior might result in not getting invited next time --- the group might break up into sub-coalitions. By strengthening the concept again to only coalitionaly-rational allocations, we get a fundamental set called the *core* (highlighted in beige). As long as they pick a division out of the core, it will be in everyone's best interest to cooperate, but which allocation should they choose?

## Fairness

A natural goal for the group is to split the cake fairly. One possibility is to measure the contribution of each friend from the perspective of every other individual and every sub-group, then everyone would get a slice proportional to their perceived usefulness. This concept is called the *normalized Banzhaf value* (the un-normalized version is drawn as a black point) and satisfies natural axioms of fairness: people who bring the same value get the same slice, and people who bring nothing get nothing; however, suppose that the friends get together regularly and their contribution is slightly different each time. Due to the normalization, what appeared like fair slices in individual sessions might not add up to something fair in the long run.

Finally, we arrive at a fair, efficient, and additive solution concept called the *Shapley value* (drawn as a white point). Imagine the friends joining the group in a random order, each bringing some value increase to the group. The Shapley value is the average of such increases by each friend over every possible order. While this may seem unnecessarily convoluted, it turns out to be the only completely fair way.

*Play around with the controls above and see how the concepts are related to one another.* Once you are ready, you can have a look at the intersection of these goals [in the fourth dimension]({% post_url 2024-12-12-half-a-byte %}).