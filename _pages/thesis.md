---
layout: text
permalink: /thesis
title: "Algorithms and Iterative methods for infinite games"
---

# Algorithms and Iterative methods for infinite games
## Global Optimization in Game Theory and Beyond

<a href="{{ site.assets }}/assets/pdf/dizertace.pdf" class="link-important">Download Thesis</a>
<a href="{{ site.assets }}/assets/pdf/dizertace.pdf" class="link-item link-text">View Source</a>


**Acknowledgements**
*I would like to thank to Victor Magron for his thorough review of the original draft of my thesis. His comments and suggestions are now a part of this online edition.*

## Contributions and Thesis Structure

This thesis covers results published under the supervision of Tomáš Kroupa on the solutions of games with infinite action spaces. It focuses on a generically applicable algorithm called Multiple Oracle, and shows how the powerful underlying global optimisation techniques extend to applications in robotics. Finally, it outlines the future direction for our research.

Epsilon Equilibria in Continuous Games In Section 3.3, we extend the Double Oracle algorithm to multi-player general-sum continuous games, prove the convergence to ϵ-equilibria in the Wasserstein metric under exact best-response oracles, and empirically evaluate it in Appendix B on a wide library of continuous games. Our program for multi-player general-sum continuous games is a generalisation of the Double Oracle algorithm by McMahan, Gordon, and Blum, originally designed for zero-sum matrix games, and of its later generalisation by Adam et al. to two-player
zero-sum continuous games.

Relevant Julia source code is published as [DoubleQuack.jl](https://github.com/votroto/DoubleQuack.jl) (the fully general multiplayer version *Quack* is work-in-progress).

Optimal Inverse Kinematics In Chapter 4, we develop a bilinear lifting scheme for polynomial inverse kinematics with possible applications to manipulator design, enabling the computation of globally optimal solutions for generic manipulators with up to 10 degrees of freedom. Our scheme substantially improves upon the results of Trutman et al., who demon strated that inverse kinematics with 7 degrees of freedom are solvable using a method based on algebraic geometry.

Relevant Julia source code is published as the [IK.jl](https://github.com/votroto/IK.jl) package.

Nash Equilibria in Separable Network Games We provide an infinite-dimensional linear program and a Moment–Sum-of-Squares hierarchy for Nash equilibria in polynomial separable network games in Section 3.2. See Theorem 5, and Examples 3 and 4. Our infinite-dimensional linear program for continuous network games is a generali- sation of the linear program by Cai et al. originally applicable to games with finite action spaces.

List of Continuous Games Appendix A contains our curated and standardised library of continuous-game benchmarks