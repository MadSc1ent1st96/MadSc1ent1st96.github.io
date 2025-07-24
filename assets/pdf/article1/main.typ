#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Inside the Heart of a Star: Simulating Stellar Evolution with MESA",
  authors: (
    "By Aniket Mishra",
  ),
)

// We generated the example code below so you can see how
// your document will look. Go ahead and replace it with
// your own content!

#figure(
  image("Sun_Life.png", width: 107%), caption: [The life cycle of a star, from birth in a nebula to its ultimate fate as a white dwarf, neutron star, or black hole. This visual summary introduces the stages explored in stellar evolution models. Image credit: Tablizer, via Wikimedia Commons [CC BY-SA 3.0] @sun_life_image]
)

= Introduction
Have you ever looked up at the night sky and wondered what a star truly is? We see these twinkling lights as fixed points, but they are anything but static. Stars are dynamic, living entities, constantly changing and evolving over vast stretches of time. They are governed by fundamental physical laws, and understanding them helps us understand our place in the universe.

=== What Defines a Star?
At its most basic, a star can be defined by two key characteristics #super[@prialnik2009stellar] :
+ It's a massive collection of particles, primarily gas, held together by its own gravity. Gravity is the force that attracts all objects toward one another, and in a star, it's what keeps all the gas from simply floating away.
+ It radiates energy, producing light and heat from internal sources. This energy is generated through nuclear fusion, a process we'll discuss later.

This article will take you on a journey inside a star, exploring the processes that drive its life cycle. We'll explore how scientists model these distant giants, and how these models help us understand everything from the origin of elements to the potential for life on other planets.
For writing this article, I referenced the book "An Introduction to the Theory of Stellar Structure and Evolution" by Dina Prialnik and used MESA (Modules for Experiments in Stellar Astrophysics) for simulating the star.


= Understanding Stars: The Basics

Stars are objects in space made of gas and generally spherical in shape ( spheroidal, if axisymmetric forces are also present) and follow the two conditions previously mentioned. Similarly, from the above definition, we may also infer the conditions for the death of a star: violation of first condition - huge gravity so that the star crumbles under its own gravity, or violation of second condition - Star running out of energy (or fuel) to radiate energy. The star gradually fades out of the field of view due to no light/ photon emission. This is what we call a dead star. Generally, stars evolve over time with a mix of these two condition - partial breakage and partial running out of fuel.

== Key concepts and equations in stellar evolution#super[@prialnik2009stellar]

+ *The Balancing Act: Hydrostatic Equilibrium:* Imagine a tiny particle somewhere deep inside a star. This particle experiences two opposing forces:
  - *Gravity:* Pulling it inward, towards the star's core.
  - *Pressure:* Pushing it outward, away from the core.
  Hydrostatic equilibrium is the state where these two forces are perfectly balanced at a given radius within the star. The equation derived for this condition is : 
  #align(center)[ $ frac(d P, d r) = - (\u{03C1}G m)/r^2 $
  or\
  #text(size: 15pt)[
  $ frac( d P, d m) = - (G m)/ (4pi r^4)$ ]]
   where  $frac(d P, d r)$  is the change in pressure with respect to radius, \u{03C1} is the density of the stellar material, G is the gravitational constant, m is the mass enclosed within radius r, r  is the radial distance from the center of the star.\
   This equation tells us that the pressure inside a star must increase as you move closer to the core to counteract the increasing gravitational force.


  #figure(
  grid(columns: 2, column-gutter: 7pt, fill: rgb(100, 50, 0, 100),
  image("Screenshot 2025-05-27 154736.png", width: 100%), align(horizon + center)[Figure 2: Hydrostatic equilibrium is \ achieved when the inward gravitational \ force is exactly balanced by the outward \ pressure at each point inside the star.]

    
  ), caption: none
)
   

   


+ *The equation of Energy:* So, where does a star get its energy? The answer lies in nuclear fusion, a process that occurs in the star's core. At the immense temperatures and pressures found there, hydrogen atoms are forced together to form helium, releasing a tremendous amount of energy in the process. This process can be explained by the famous equation E=mc#super[2], where a small amount of mass is converted into a large amount of energy. This energy is what makes stars shine. We use the first law of thermodynamics which says that the internal energy may change by two forms of energy transfer: Heat and work. We derive the following equation with this: 
  #align(center)[
    $ dot(u) + P dot(( 1/ \u{03C1})) =  q - (diff F)/ (diff m) $ where we used $dot(f)$ notation for the temporal derivative $(diff f)/ (diff t)$ , $u$ is \ internal energy per unit mass, and $q $ is the rate of nuclear energy release per unit mass
  ] \
+ *Spherical Symmetry:* In the majority of the cases, the stars are symmetrical in shape, because gravity is a spherically symmetric force, that is, gravity is same radially (at the same radius 'r', the gravity is same). Hence ,we neglect the cases deviating from spherical symmetry. Assuming the star to be a sphere, we get a relation between mass, density and radius as:
  #align(center)[
    $ d m = \u{03C1} 4pi r^2 d r  $

#figure(
  grid(columns: 2, column-gutter: 7pt, fill: rgb(100, 50, 0, 100),
  align(horizon + center)[Figure 3: A figure showing spherical \ symmetry of the star and thereby the \ various quantities which gives relationship \ between r and m.],
 image("1.png", width: 100%)
), caption: none
)
]
+ *The equations governing the composition changes:* The material inside a star is composed of free electrons and atomic nuclei. Due to the extreme conditions, chemical reactions are impossible; only nuclear reactions can occur, changing one nucleus into another.\
  To understand this further, we need basic knowledge about the nucleus:
  - Atomic nuclei is made up of protons and neutrons, collectively called nucleons and they belong to the group of heavy particles called baryons. The particles are characterized by two numbers, A (Baryon number) and Z (charge); for proton (1,+1) and for neutron (1,0).
  - Electrons and neutrinos are leptons—light particles with zero baryon number. Neutrinos have no charge and accompany leptons in nuclear processes to conserve quantum numbers.
  - Two types of forces act in the nucleus, strong nuclear force, the force of attraction which binds the nucleus together and the weak interaction force, which is responsible for changing protons into neutrons and vice-versa.
  - In nuclear reactions, charge, baryon number, and lepton number are always conserved. For example, weak interactions involve electrons or positrons to balance charge, and neutrinos or antineutrinos to conserve lepton number.
  
  As a nucleus of any element is uniquely defined by two integers, A and Z, a nuclear reaction might look like:\
 #align(center)[ I(A#sub[i], Z#sub[i]) + J(A#sub[j], Z#sub[j]) \u{21C6} K(A#sub[k], Z#sub[k]) + L(A#sub[l], Z#sub[l])
]
  which is subject to two conservation laws:
  - A#sub[i] + A#sub[j] = A#sub[k] + A#sub[l]
  - Z#sub[i] + Z#sub[j] = Z#sub[k] + Z#sub[l]
  After some derivations, we can derive the following equation for the rate of change of mass fraction:
  $  dot(X#sub[i])/(A#sub[i]) = \u{03C1}/(m#sub[h])(- (X#sub[i])/(A#sub[i]) sum(1 + \u{03B4}#sub[ij]) (X#sub[j])/(A#sub[j]) (R#sub[ijk])/(1 + \u{03B4}#sub[ij]) + sum (X#sub[l])/(A#sub[l]) (X#sub[k])/(A#sub[k]) (R#sub[lki])/(1 + \u{03B4}#sub[lk])) $
  where, X#sub[i] is the mass fraction of species i, A#sub[i]  is the atomic mass number of species i, \u{03C1} is the density, m#sub[h] is the mass of a hydrogen atom, R#sub[ijk] is the rate of the nuclear reaction involving species i, j, and k, \u{03B4}#sub[ij] is the Kronecker delta (1 if i=j, 0 otherwise).\
  For simplicity we will define a composition vector by X \u{2261} (X#sub[1], . . . , X#sub[n]) so that the set of equations from 1 to n may be collectively written as:
  $ dot(X) =  #strong[f] (\u{03C1}, T, X)$\
  When the rate of change of mass fraction is zero (̇$dot(X)= 0$), the star is in nuclear equilibrium.

  
= How Scientists Model Stars#super[@prialnik2009stellar]
Because stars are so far away and so hot, we can't directly observe their interiors. Instead, scientists rely on computer models to simulate what's happening inside. These models use the equations of stellar structure, derived from basic physics, to predict how a star will evolve over time.\
I will briefly mention the set of equations describing the evolutionary course of the internal structure of a star:
#align(center)[
#table( align: center,
  columns:2, rows: 1,
  [$ dot(r) = - (G m)/r^2 - 4 pi r^2 (diff P)/ (diff m), $
  $ dot(u) + P dot((1/\u{03C1})) = q - (diff F)/ (diff m), $
  $ dot(X) = #strong($f$) (\u{03C1}, T, X) $
  $ d m = \u{03C1} 4pi r^2 d r $], [where, \ r is the radial coordinate, \ G is the gravitational constant, \ m  is the mass coordinate, \ P  is the pressure, \ u is the internal energy,  \u{03C1} is the density, \ q  is the energy generation rate, \ F is the energy flux, \ X is the composition vector ]
)] 
  These equations are not complete on their own. They require additional information about the material properties of the star, such as its density, temperature, and composition. This information is obtained from various branches of physics, including thermodynamics, statistical mechanics, atomic physics, and nuclear physics .\
  
 We assume that the evolution of star is a quasi-static process, in which the composition changes slowly, which allows the star to maintain hydrostatic equilibrium and thermal equilibrium (generally) too.

 To solve these equations, scientists use computer programs like MESA (Modules for Experiments in Stellar Astrophysics). MESA takes these equations, applies appropriate boundary conditions, and simulates how the star will evolve over time, given specific starting and stopping conditions.

= From Curiosity to Code: My MESA Experience


Now, let’s address the big question: What exactly is MESA, the tool I’ve been mentioning throughout this article? MESA (Modules for Experiments in Stellar Astrophysics) is a powerful, open-source 1D stellar evolution software instrument used widely by researchers around the world. MESA is released under the GNU General Public License v3.0, making it freely available for scientific and educational use. It is primarily written in Fortran and follows a modular architecture, which makes it both flexible and extensible. Designed to facilitate experimentation in stellar evolution, MESA offers users a great deal of control over simulation parameters. However, this flexibility can feel quite overwhelming when you're just starting out.

*How to install MESA #super[@Paxton_2011]:* Detailed installation instructions are available on MESA’s official website. The software is intended to run on Linux or macOS systems. Since my personal computer runs Windows, I used Windows Subsystem for Linux (WSL) to create a Linux environment and successfully installed MESA following its Linux installation guide. The process was a bit tedious and took several hours, but it also served as a welcome distraction when I needed a break from reading theory!

*MESA working #super[@Paxton_2011]:* MESA simulations are controlled using a text file named "inlist", where you specify key parameters such as the initial mass of the star, boundary conditions, and criteria for starting and stopping the simulation—such as halting once the hydrogen in the core is depleted. Graphical outputs are customized through a configuration file called "pgstar_inlist", which controls real-time plots and diagrams generated during simulations. These text files define variables that MESA reads and integrates into its internal code during execution, tailoring the simulation accordingly.

*A practical example of a run:* I modeled a 1 M#sub[\u{2A00}] (1 Solar mass) star from the pre-main sequence to the red giant phase.
- *HR diagram:* The Hertzsprung-Russell (HR) diagram is a graph that plots stars’ luminosity against their surface temperature or color. It is significant because it reveals stellar evolution stages and helps classify stars based on their physical properties.


#figure(
  grid(columns: 2, column-gutter: 20pt,
    image("hr_000290.png" ),
    image("Screenshot 2025-05-27 150207.png")
  ), caption: [*HR diagrams* of a Sun-like star's evolution modeled with *MESA.*
*Left:* Simulation stops when *core hydrogen* drops *below 10#super[-4]* (model 290).
*Right:* Extended to *model 750*, showing evolution through *Pre-Main Sequence*, *Main Sequence*, *Subgiant*, and *Red Giant Branches*. Red circles mark the stopping points. Figures generated using MESA by the author]
)

*Diagram Interpretation (Right Side):* 
+ *Right to Left sequence (Pre-main sequence):* The graph starts on the right side at low temperature and low luminosity. This is the pre-main sequence phase, where the star is contracting and heating up before core hydrogen fusion starts.
+ *Nearly horizontal Phase (Main Sequence):* The graph levels off horizontally near log Teff ≈ 3.74–3.66. This is the main sequence phase where the star fuses hydrogen in its core. The nearly constant luminosity and slowly decreasing temperature are characteristic of a stable hydrogen-burning phase.
+ *Sharp Upward Turn (Post-Main Sequence / Subgiant Branch): * At the leftmost point, the track makes a sharp upward turn, increasing in luminosity while decreasing in temperature. This is the subgiant/red giant transition, where the star leaves the main sequence, the core contracts, and the outer layers expand.
+ *Red Giant Branch:* As the inert helium core contracts further, the surrounding shell fusion intensifies, causing the envelope to expand and cool, hence the shift to lower temperatures. The luminosity increases sharply, driving the star up the red giant branch (RGB).The endpoint of the model (highlighted by a red circle) lies on the RGB, consistent with the late evolutionary stage just before helium ignition (He flash).

The link to the working directory of the above simulation is https://zenodo.org/records/15571157 #super[@mishra2025]. The stellar evolution simulations of the Sun-like star presented was performed using MESA version 24.08.1. MESA provides a flexible and robust framework for modeling stellar structure and evolution, described in Paxton et al#super[@Paxton_2011]. The software is publicly available at http://mesa.sourceforge.net.



=  Connecting Theory and Simulation
Reading the book provided the theoretical foundation I needed to understand what was happening during the simulations. It helped me identify the different phases in a star’s life and choose appropriate stopping conditions: like halting the run just before the helium flash in a sun-like star. This knowledge also made it easier to interpret the many parameters MESA outputs, such as core temperature, luminosity, and radius changes, and to evaluate whether the simulation was behaving as expected. \
Linking theory with simulation turned MESA from a black box into a meaningful tool. I could critically assess how small changes in inputs. like mass, affected a star’s evolution. The HR diagram, once just a complex curve, became a narrative of stellar life. This blend of theory and practice made the experience both insightful and rewarding. \




=  Why This Matters and the Road Ahead
Stellar evolution remains an active area of research because many key processes are still not fully understood. Challenges include modeling complex internal mixing, mass loss during giant phases, and the effects of rotation and magnetic fields. Binary star interactions add further complexity, especially in predicting supernova outcomes and compact object formation. \
Recent observations from missions like Gaia, TESS, and JWST have revealed unexpected stellar behaviors, like rapidly evolving stars or stripped helium stars, prompting refinement of existing models. Tools like MESA are continuously updated to keep pace with these discoveries, helping scientists bridge theory with real-world data.\
As observational precision improves, so must our simulations. Stellar modeling is no longer just about single stars: it’s about predicting the diverse, dynamic systems that fill our universe.


#bibliography("references.bib")
