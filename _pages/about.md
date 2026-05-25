---
layout: text
title: "Tomas Votroubek"
subtitle: "About Me"
permalink: /
---
# About Me

[CV](/cv){: .link-important}
[Thesis](/thesis){: .link-important}
[Papers](/papers){: .link-item}
[Posts](/posts){: .link-item}
{: .links-list}

<figure>
<img class="portrait" src="{{site.assets}}/assets/img/presentation.avif" alt="Portrait"/>
<figcaption markdown="1" class="larger-caption">
## Tomáš Votroubek
*Hello,* I am a PhD student and junior researcher at the Artificial Intelligence Center in Prague, working on *game theory* and *global optimization*. Alongside research, I build reliable software systems ranging from optimization tooling and scientific infrastructure to embedded and cross-platform applications.
</figcaption>
</figure>

## Interests

I am interested in the optimality, efficiency, and minimalism of computer programs. This includes everything from designing specialized solvers and algorithms, to writing toy path-tracers for fun, to programming embedded hardware with limited computing power.

<div class="gallery-overflow">
<div class="gallery">
  {% include gallery-img.html folder="/assets/img/" file="ray.avif" %}
  {% include gallery-img.html folder="/assets/img/" file="eink.avif" %}
</div>
</div>

I am a big fan of Mark Seemann's ideas on [Poka-yoke](https://web.archive.org/web/20260328093033/https://blog.ploeh.dk/2011/05/24/Poka-yokeDesignFromSmelltoFragrance/) design and his development practices in general. I've had good experiences with functional design; software built that way doesn't fail once out in the wild. For related reasons, I currently give regular lectures on functional programming at the Czech Technical University in Prague.

## Research
I study *game theory* and *global optimization*.

Nash Equilibria in Separable Network Games We provide an infinite-dimensional linear
program and a Moment–Sum-of-Squares hierarchy for Nash equilibria in polynomial
separable network games in Section 3.2. See Theorem 5, and Examples 3 and 4.
Our infinite-dimensional linear program for continuous network games is a generali-
sation of the linear program by Cai et al. [13] originally applicable to games with finite
action spaces. Our code at https://github.com/votroto/PolyNets.jl solves polynomial separa-
ble network games using Moment–Sum-of-Squares hierarchies.

Epsilon Equilibria in Continuous Games In Section 3.3, we extend the Double Oracle al-
gorithm to multi-player general-sum continuous games, prove the convergence to
ϵ-equilibria in the Wasserstein metric under exact best-response oracles, and empiri-
cally evaluate it in Appendix B on a wide library of continuous games.
Our program for multi-player general-sum continuous games is a generalisation of the
Double Oracle algorithm by McMahan, Gordon, and Blum [55], originally designed for
zero-sum matrix games, and of its later generalisation by Adam et al. [2] to two-player
zero-sum continuous games.
Relevant Julia source code is published at https://github.com/votroto/Quack.jl.

Optimal Inverse Kinematics In Chapter 4, we develop a bilinear lifting scheme for poly-
nomial inverse kinematics with possible applications to manipulator design, enabling
the computation of globally optimal solutions for generic manipulators with up to 10
degrees of freedom.
Our scheme substantially improves upon the results of Trutman et al. [90], who demon-
strated that inverse kinematics with 7 degrees of freedom are solvable using a method
based on algebraic geometry.
Relevant Julia source code is published at https://github.com/votroto/IK.jl.

List of Continuous Games Appendix A contains our curated and standardised library of
continuous-game benchmarks

## Experience

I have shipped software for Linux, Windows and Android, written in: C++, Java, JavaScript and Python, along with the obvious host of other supporting tools such as Bash, SQLite, etc. In my current job I mainly write Julia, Python, with the occasional Haskell and Scheme, but I know others and am willing to learn.

<details>
  <summary>Other languages </summary>
  <p>People have technically also  paid me to write in C, C#, F# and Matlab, but those projects were either too small or one-time use. I have completed a Prolog course too, and in case even that is not enough, I am willing to learn any language You need (except for PHP, which I swore never to write again).</p>
</details>



<figure>
<figcaption markdown="1">
### From a Sketch to Shipped Products
I have experience with software development from the initial problem analysis, through design and development including hardware selection (during the difficult times of Raspberry Pi shortages), UI/UX, prototypes, feedback, translations, all the way to release and updates.
</figcaption>
<img loading="lazy" alt="shipped" src="{{ site.assets }}/assets/img/shipped.avif"/>
</figure>

I created software for the detection and visualization of plagiarism in university homework submissions based on *gSAIS*; several dashboards and displays for monitoring and data collection of laboratory humidity, freezer temperatures, and alarm states based on SNMP and MQTT; and Android to Windows software for scanning etched *DataMatrix* labels using the *Scandit SDK* and sending them to MS Excel over Bluetooth with *32feet.NET*.

<div class="gallery-overflow">
<div class="gallery">
  {% include gallery-img.html folder="/assets/img/" file="dash.avif" %}
  {% include gallery-img.html folder='/assets/img/' file='plag.avif' %}
</div>
</div>

### Networking, Graphics and Design

Outside of programming and research, I semi-professionally manage the local-area network and website for a small inn, I know the basics of CAD, Fused Filament Fabrication, laser engraving, and graphical 3D modeling for product and architectural design; I can even clean up your logo for laser-cutting...

<div class="gallery-overflow">
<div class="gallery">
  {% include gallery-img.html folder='/assets/img/' file='inno.avif' %}
  {% include gallery-img.html folder='/assets/img/' file='buggy.avif' %}
</div>
</div>