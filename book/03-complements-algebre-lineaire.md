# Compléments d'algèbre linéaire

Dans tout ce chapitre, $E$ désigne un $\mathbb{K}$-espace vectoriel avec
$\mathbb{K}=\mathbb{R}$ ou $\mathbb{C}$, et $I$ désigne un ensemble quelconque
d'*indices*.

## Introduction {.unnumbered}

Un espace vectoriel est essentiellement un ensemble dans lequel on est capable
d'additionner les éléments et de les mutltiplier par un scalaire, avec les
mêmes règles de distributivité et de commutativité que la multiplication et
l'addition usuelles. 

La notion centrale de l'algèbre linéaire est donc celle de *combinaison
linéaire*. C'est elle qui permet de définir les familles libres, les familles
génératrices, les sous-espaces vectoriels, et les applications linéaires. 

Cette notion a été vue en première année dans le cas des familles *finies* de
$E$ ; on les étend cette année au cas des familles quelconques. 

## Familles quelconques de vecteurs

Cette première section étend au cas des familles quelconques (finies ou
infinies) les définitions vues en première année.  

### Combinaisons linéaires


Contrairement aux sommes infinies de l'analyse, toutes les sommes rencontrées
en algèbre linéaire sont nécessairement *finies* (on ne dispose pas, à priori, de
notion de convergence dans un espace vectoriel). 

Pour pouvoir envisager une combinaison linéaire d'un nombre infini de vecteurs,
on est amené à introduire la notion de famille à support *fini*.

::: {#def-support-fini}

Le **support** d'une famille $(\lambda_{i})_{i \in I}$ de $\mathbb{K}$ est
l'ensemble des $i \in I$ pour lesquels $\lambda_{i}$ est non nul. On dit que la
famille $(\lambda_{i})_{i \in I}$ est à support **fini** si son support est un
sous-ensemble *fini* de $I$.

:::

::: {#def-combinaison-lineaire} 

Soit $E$ un $\mathbb{K}$-espace vectoriel et $\mathcal{F}=(v_{i})_{i \in I}$
une famille d'éléments de $E$. Une **combinaison linéaire** de $\mathcal{F}$
est une somme de la forme $\sum_{i \in I}\lambda_{i}v_{i}$ où $(\lambda_{i})_{i
\in I}$ est une famille à support *fini* d'éléments de $\mathbb{K}$, appelés
**coefficients** de la combinaison linéaire.

:::

Dans cas d'un ensemble *fini* $I$, les familles à support fini coincident
avec les familles, et on retrouve la définition vue en première année. 

::: {#exm-cas-fini} 

Une combinaison linéaire d'une famille $v_1,\dots,v_{n}$ de $E$ est une somme
de la forme $\sum_{i=1}^{n}\lambda_{i}  v_{i}$ avec
$\lambda_1,\dots,\lambda_{n}\in \mathbb{K}$.

:::

Lorsque $I$ est infini, par exemple si $I=\mathbb{N}$, on se limite par contre
à un nombre *fini* de vecteurs : 

::: {#exm-polynome}

Dans $E=\mathbb{K}[X]$, une combinaison linéaire de $\{ X^{k}, k\in
\mathbb{N}\}$ est un *polynôme* à coefficients dans $\mathbb{K}$.

:::


### Familles libres, génératrices

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
composent cette famille ont des degrés *deux à deux distincts*).

:::

::: {#prp-sous-famille}

Toute sous-famille d'une famille libre est libre. 

:::

::: {#def-famille-generatrice}

On dit qu'une famille $\mathcal{G}$  de $E$ est **génératrice** ou qu'elle
**engendre** $E$ si tout élément de $E$ est combinaison linéaire de
$\mathcal{G}$.

:::

::: {#exm-famille-generatrice}

La famille $\{X^k,\ k\in \mathbb{N}\}$ est une famille génératrice de $E=\mathbb{K}[X]$.

:::

### Bases

::: {#def-base}

Une famille $\mathcal{B}$ de $E$ est une **base** de $E$ si elle est à la fois
libre est génératrice.

:::

::: {#exm-base}

La famille $\{X^k,\ k\in \mathbb{N}\}$ est une base de $\mathbb{K}[X]$.

:::

::: {#nte-dimension-finie .callout-note}

#### Dimension d'un espace vectoriel 

On rappelle qu'un espace vectoriel $E$ est dit de dimension finie s'il admet
une famille génératrice finie. Dans ce cas toutes les bases de $E$ possède le
même nombre d'éléments, appelé **dimension** de $E$, et noté $\dim E$.

:::

::: {#prp-caractérisation-base}

#### Caractérisation des bases en dimension finie 

Soit $E$ un $\mathbb{K}$-espace vectoriel de dimension finie et $\mathcal{F}$
une famille de $E$. Alors

1. toute famille libre de $E$ a au plus $\dim E$ éléments et une famille libre à
   $\dim E$ éléments est automatiquement une base,

2. toute famille génératrice de $E$ à au moins $\dim E$ éléments, et une
   famille génératrice à $\dim E$ élément est automatiquement une base de $E$.

:::

::: {#prp-base-canonique}

#### Bases canoniques

Les bases suivantes, dites *canoniques*, sont à connaître :

1. la base canonique de $\mathcal{M}_n(\mathbb{K})$ est $\{E_{ij},\
   i\,j\in\{1,\dots,j\}\}$ où $E_{ij}$ est la matrice contenant uniquement des
   $0$, sauf un $1$ en position $ij$,

2. la base canonique de $\mathbb{K}_n[X]$ est $(1,X,\dots,X^n)$,

3. la base canonique de $\mathbb{K}[X]$ est $\{X^k,\ k\in\mathbb{N}\}$.

:::

::: {#rem-cas-particulier}

Le premier cas engloble les cas $\mathcal{M}_{1,n}(\mathbb{K})=\mathbb{K}^{n}$
(matrices lignes) et $\mathcal{M}_{n,1}(\mathbb{K})$ (matrices colonnes),
souvent identifiés à tort. 

:::

