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

My [current research](/papers) focuses on practical algorithms for solving continuous general-sum multiplayer games. Although such games are known to have equilibria, actually computing them is challenging. Nevertheless, we have successfully used Lasserre hierarchies, iterative methods, reformulation techniques, and spatial branch-and-bound in developing scalable solvers for a large set of such games.

In my [thesis](/thesis), I demonstrate the practicality of our recent Multiple Oracle method with a proof-of-concept implementation, by successfully solving games compiled from both recent and classical literature, which we have published as a [dataset](/2026/05/04/a-list-of-games.html). We have also applied the same powerful optimization techniques in robotics, resulting in our follow-up paper on globally optimal inverse kinematics, where we demonstrated that an earlier technique could be extended from 7 to 10 degrees of freedom.

My long-term interest lies in developing practical algorithms for non-convex optimization, especially a specialized semidefinite solver that exploits the structure of matrices in Lasserre hierarchies. I believe that the general-purpose nature of current semidefinite solvers is a major bottleneck in Moment-SOS hierarchies today. While exploiting the structure and sparsity of the input polynomials is an area of active research and projects such as [TSSOS](https://github.com/wangjie212/TSSOS), the pre-solved problems should be solved by solvers that are efficient themselves. If semidefinite solvers are too niche for the industry, I would be interested in developing the next generation myself.

## Experience

I have shipped software for Linux, Windows, and Android, written in C++, Java, JavaScript, and Python, along with the obvious host of other supporting tools such as Bash, SQLite, etc. In my current job, I mainly write Julia and Python, with occasional Haskell and Scheme, but I know others and am willing to learn.

<details>
  <summary>Other languages </summary>
  <p>People have technically also paid me to write in C, C#, F#, and Matlab, but those projects were either too small or one-time use. I have completed a Prolog course too, and if even that is not enough, I am willing to learn any language you need (except for PHP, which I swore never to write again).</p>
</details>

<figure>
<figcaption markdown="1">
### From a Sketch to Shipped Products
I have experience in software development from initial problem analysis through design and development, including hardware selection (during the difficult times of Raspberry Pi shortages), UI/UX, prototypes, feedback, translations, and all the way to release and updates.
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