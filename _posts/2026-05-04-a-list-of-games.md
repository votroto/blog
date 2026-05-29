---
layout: post-katex
title: "List of Continuous Games"
subtitle: "A curated and standardised library of continuous-game examples"
excerpt: "We present a benchmark for game-solving algorithms: a list of continuous games from the literature."
tag: "Game Theory"
img: "/assets/img/games.svg"
---


We present a compilation of parametrized continuous games drawn from both recent and classical literature. Analogous to the [Gamut](https://dl.acm.org/doi/10.5555/1018410.1018840) test set of finite games, our suite should provide a convincing and comprehensive benchmark for continuous-game solvers. Specifically, we compiled multiplayer games with continuous utility functions and compact strategy sets and, where possible, with known equilibria.

![Game table]({{ site.assets }}/assets/img/gametable.png){: .invertible }

## Standardization

Players are identified by successive natural numbers $$1,2,\dots$$, while their variables are named consistently by $$x$$ followed by two indices indicating the controlling player first and the variable number second. For example, variable `3` of player `4` is referred to as $$x_{34}$$.

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


Note that continuous games are complicated, and one game may have many representations. A strategy set as simple as $$z\in[-1,1]$$ may also be written as $$z^2\le1$$ or $$(-1\ge z \land z \le1)$$, with all three having potentially different implementations in your solver.

In addition to the game description in a canonical format we also provide a simple and reusable format, where we formulate the constraints for each player in terms of *non-negative* and *equal-to-zero* relations. The incentives of players are described by *utility* functions. In our simplified format the Tangent Ridge game is equivalent to:

```
NNEG1: x11 >= 0, 1-x11 >= 0
NULL1: 0 = 0
NNEG2: x21 >= 0, 1-x21 >= 0
NULL2: 0 = 0
U1: -sqrt(abs(x11-x21))
U2: -sqrt(abs(x11-tan(x21)))
```


## Browser

TBD