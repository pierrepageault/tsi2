# Rappels et compléments d'algèbre linéaire

Dans tout ce chapitre, $E$ désigne un $\mathbb{K}$-espace vectoriel avec
$\mathbb{K}=\mathbb{R}$ ou $\mathbb{C}$, et $I$ désigne un ensemble quelconque
d'indices.

## Introduction {.unnumbered}

## Famille infinie de vecteurs

Cette première section étend au cas des familles quelconques (finies ou
infinies) les définitions vues en première année.  

La notion centrale en algèbre linéaire est celle de *combinaison
linéaire*. C'est elle qui permet de définir les morphismes entre espaces
vectoriels (les applications linéaires), les sous-espaces vectoriels, les
familles libres et les familles génératrices. 

Contrairement aux sommes infinies de l'analyse, toutes les sommes rencontrées
en algèbre linéaire seront nécessairement *finies* (on ne dispose pas, à priori, de
notion de convergence dans un espace vectoriel). 

Pour pouvoir envisager une combinaison linéaire d'un nombre infini de vecteurs,
on est donc amené à introduire la notion de famille à support *fini*.

::: {#def-support-fini}

On dit qu'une famille $(\lambda_i)_{i \in I}$ de $\mathbb{K}$ est à **support fini**
si tous les $a_i$ sont nuls sauf un nombre *fini* d'entre eux.

:::

::: {#def-combinaison-lineaire} 

Soit $E$ un $\mathbb{K}$-espace vectoriel et $\mathcal{F}=(v_{i})_{i \in I}$
une famille d'éléments de $E$. Une **combinaison linéaire** de $\mathcal{F}$
est une somme de la forme $\sum_{i \in I}\lambda_{i}v_{i}$ où les
$(\lambda_{i})_{i \in I}$ forment une famille à *support fini* de $\mathbb{K}$,
appelés **coefficients** de la combinaison linéaire.

:::

Dans cas d'un ensemble $I$ *fini*, les familles à support fini coincident
avec les familles, et on retrouve la définition vue en première année. 

::: {#exm-cas-fini} 

Une combinaison linéaire d'une famille $v_1,\dots,v_{n}$ de $E$ est une somme
de la forme $\\sum_{i=1}^{n}\lambda_{i  v_{i}}$ avec
$\lambda_1,\dots,\lambda_{n}\in \mathbb{K}$.

:::

Lorsque $I$ est infini, par exemple si $I=\mathbb{N}$, la notion de support
fini apporte une vraie différence :

::: {#exm-polynome}

Dans $E=\mathbb{K}[X]$, une combinaison linéaire de $\{ X^{k}, k\in
\mathbb{N}\}$ est un *polynôme* à coefficients dans $\mathbb{K}$.

:::

::: {#def-famille-libre}

Une famille $\mathcal{F}=(v_{i})_{i \in I}$ de $E$ est **libre** si la seule
combinaison linéaire nulle de $\mathcal{F}$ est la combinaison linéaire
triviale i.e. pour toute famille $(\lambda_{i})_{i \in I}$ de $\mathbb{K}$ à
support fini,  

$$
    \sum_{i \in I} \lambda_i v_{i} = 0_{E} \Rightarrow \forall i \in I,\
\lambda_{i}=0.
$$

:::

::: {#exm-famille-libre}

La famille $\{X^{k},\ k \in \mathbb{N}\}$ est une famille libre de
$\mathbb{K}[X]$ car elle est *échelonnée en degrée* (les polynômes qui
composent cette famille ont des degrés deux à deux distincts).

:::

::: {#prp-sous-famille}

Toute sous-famille libre d'une famille libre est libre. 

:::

::: {#def-famille-generatrice}

On dit qu'une famille $\mathcal{G}$  de $E$ est **génératrice** de $E$ ou
**engendre** $E$ si tout élément de $E$ est combinaison linéaire de
$\mathcal{G}$.

:::

::: {#exm-famille-generatrice}

La famille $\{X^k,\ k\in\N\}$ est une famille génératrice de $E=\mathbb{K}[X]$.

:::

::: {#def-base}

Une famille $\mathcal{B}$ de $E$ est une **base** de $E$ si elle est à la fois
libre est génératrice.

:::

::: {#exm-base}

La famille $\{X^k,\ k\in\N\}$ est une base de $\mathbb{K}[X]$.

:::

::: {#nte-dimension-finie .callout-note}

On rappelle qu'un espace vectoriel $E$ est dit de dimension finie s'il admet
une famille génératrice finie. Dans ce cas toutes les bases de $E$ possède le
même nombre d'élément, appelé **dimension** de $E$.

:::

::: {#prp-caractérisation-base}

#### Caractérisation des bases en dimension finie 

Soit $E$ un $\mathbb{K}$-espace vectoriel de dimension finie et $\mathcal{F}$
une famille de $E$. Alors

1. toute famille libre de $E$ a au plus $\dim E$ élément et une famille libre à
   $\dim E$ élément est automatiquement une base,

2. toute famille génératrice de $E$ à au moins $\dim E$ éléments, et une
   famille génératrice à $\dim E$ élément est automatiquement une base de $E$.

:::

::: {#prp-base-canonique}

Les bases suivantes, dites *canoniques*, sont à connaître :

1. La base canonique de $\K^n$ est $(e_1,\dots,e_n)$ où $e_i=(0,\cdots,\underset{i}{1},\cdots 0)$.

2. La base canonique de $\M_n(\K)$ est $\{E_{ij},\ i\,j\in\{1,\dots,j\}\}$ où $E_{ij}$ est la matrice contenant des $0$ partout sauf un $1$ en position $ij$.

3. La base canonique de $\K_n[X]$ est $(1,X,\dots,X^n)$.

4. La base canonique de $\K[X]$ est $\{X^k,\ k\in\N\}$.

:::

