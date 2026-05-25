---
layout: text
title: "Publications"
permalink: /papers
---

# Bibliography

Below is a list of our published results mostly concerning the applications of global optimization in game theory.

[View on ORCID](https://orcid.org/0000-0001-6781-5560){: .link-important}

<!--## Preprints

- StayOnTheRidge-->

## Published

#### [Globally optimal inverse kinematics as a non-convex quadratically constrained quadratic program](https://doi.org/10.1109/LRA.2024.3398433)

   > Tomáš Votroubek and Tomáš Kroupa. IEEE Robotics and Automation Letters, 9(6):5998–6003, 2024.

We develop a bilinear lifting scheme for polynomial inverse kinematics with possible applications to manipulator design, enabling the computation of globally optimal solutions for generic manipulators with up to 10 degrees of freedom. Our scheme substantially improves upon the results of Trutman et al., who demonstrated that inverse kinematics with 7 degrees of freedom are solvable using a method based on algebraic geometry.

Relevant Julia source code is published as the [IK.jl](https://github.com/votroto/IK.jl) package.

#### [Multiple oracle algorithm to solve continuous games](https://doi.org/10.1007/978-3-031-26369-9_8)

   > Tomáš Kroupa and Tomáš Votroubek. In Fei Fang, Haifeng Xu, and Yezekael Hayel, editors, Decision and Game Theory for Security, pages 149–167, Cham, 2023. Springer International Publishing

We extend the Double Oracle algorithm to multi-player general-sum continuous games, prove the convergence to ϵ-equilibria in the Wasserstein metric under exact best-response oracles, and empirically evaluate it in Appendix B on a wide library of continuous games. Our program for multi-player general-sum continuous games is a generalisation of the Double Oracle algorithm by McMahan, Gordon, and Blum, originally designed for zero-sum matrix games, and of its later generalisation by Adam et al. to two-player zero-sum continuous games.

Relevant Julia source code is published as [DoubleQuack.jl](https://github.com/votroto/DoubleQuack.jl) (the fully general multiplayer version *Quack* is work-in-progress).

#### [Values of games over boolean player sets](https://doi.org/10.1016/j.ijar.2023.108925)

   > Tomáš Votroubek, Sara Vannucci, and Tomáš Kroupa. International Journal of Approximate Reasoning, 158:108925, 2023.

We study new classes of value operators for coalitional games where the players form a boolean algebra, and the coalitions are the corresponding down-sets. Namely, we focus on the classes of values that can represent alternatives to the solution of the information decomposition problem, such as random-order values or sharing values. We extend the axiomatic characterization of some classes of values that were known only for the standard coalitional games.

#### [Separable network games with compact strategy sets](https://doi.org/10.1007/978-3-030-90370-1_3)

   > Tomáš Kroupa, Sara Vannucci, and Tomáš Votroubek. In Lecture Notes in Computer Science, pages 37–56. Springer International Publishing, 2021.

We provide an infinite-dimensional linear program and a Moment–Sum-of-Squares hierarchy for Nash equilibria in polynomial separable network games in Section 3.2. See Theorem 5, and Examples 3 and 4. Our infinite-dimensional linear program for continuous network games is a generalisation of the linear program by Cai et al. originally applicable to games with finite action spaces.

