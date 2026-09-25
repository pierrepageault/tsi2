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

La notion de combinaison linéaire a été vue en première année dans le cas des familles *finies* de
$E$ ; on l'étend cette année au cas des familles quelconques. 

## Familles quelconques de vecteurs {#sec-03-familles-quelconques-de-vecteurs}

Cette première section étend au cas des familles quelconques (finies ou
infinies) les définitions vues en première année.  

### Combinaisons linéaires


Contrairement aux sommes infinies de l'analyse, les sommes rencontrées
en algèbre linéaire seront *finies* (on ne dispose pas, à priori, de
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
    \sum_{i \in I} \lambda_i v_{i} = 0_{E} \mathbb{R}ightarrow \forall i \in I,\
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

## Sous-espaces vectoriels {#sec-03-sous-espaces-vectoriels}

Pour nous, les sous espaces vectoriels seront surtout un outil pour comprendre
et définir des applications linéaires, via les notions de *somme directe*.

On commence par quelques rappels de première année.

### Sous espaces vectoriels

::: {#prp-caractérisation}

#### Caractérisation des sous espaces vectoriels

Un sous-ensemble $F$ de $E$ est un sous espace vectoriel de $E$ si $F$ est non
vide et si $F$ est stable par combinaisons linéaires, c-à-d 

$$
    \forall u,v \in F,\ \forall \lambda \in \mathbb{K}, u+\lambda v \in F.
$$

:::

::: {#rem-non-vide}

On montre toujours que $F$ est non vide en montrant que $0_{E}\in F$.

:::

::: {#def-sous-espace-engendre}

#### Sous espace engendré par une partie

Soit $\mathcal{G}$ une partie non vide de $E$. On note
$\mathrm{Vect}(\mathcal{G})$ l'ensemble des combinaisons linéaires de
$\mathcal{G}$. Alors $\mathrm{Vect}(\mathcal{G})$ est un sous espace vectoriel
de $E$, dit **engendré** par $\mathcal{G}$, et $\mathcal{G}$ est une famille
génératrice de $\mathrm{Vect}(\mathcal{G})$.

:::

::: {#tip-sous-espace-engendre .callout-tip}

En pratique, on ne prend jamais la peine de rappeler que $\mathcal{G}$ est une
famille génératrice de $\mathrm{Vect}(\mathcal{G})$ ; c'est implicite dans
cette notation. En particulier, si la famille $\mathcal{G}$ est libre, c'est
automatiquement une base de $F$.

:::

::: {#exm-famille-generatrice-1}

La famille $\{1,X,\dots X^{n}\}$ est une famille génératrice de
$\mathbb{R}_{n}[X]$.

:::

::: {#exm-famille-generatrice-2}

On a 

$$
    F=\left\{ \begin{pmatrix}
        a&b\\b&a
    \end{pmatrix},\ a,b \in \mathbb{R}\right\} = \mathrm{Vect}(I_2,J),
$$
avec $J = \begin{pmatrix}
    0&1\\1&0
\end{pmatrix}$. Donc $F$ est un sous-espace vectoriel de $\mathcal{M}_{2}(\mathbb{R})$.

:::

### Somme de sous espaces vectoriels

Les sous espaces vectoriels sont stables par intersection mais par par réunion
(considérer par exemple la réunion de deux droites dans le plan, qui n'est clairement pas stable par somme). En algèbre linéaire, la
réunion est remplacée par la notion de *somme*. 

::: {#def-somme}

Soient $F_{1},\dots,F_{n}$ des sous espaces vectoriel de $E$. On appelle **somme** des sous espaces $F_1,\dots,F_{n}$ le sous ensemble 

$$
    F = \{v_1 + \cdots + v_{n}, v_{i} \in F_{i},\ i=1,\dots,n\}.
$$

On la note $F_{1}+ \dots + F_{n}$ ou $\displaystyle \sum_{i=1}^{n}F_{i}$. Les
sous espaces vectoriels $F_{1},\dots,F_{n}$ s'appellent les *facteurs* de la
somme. 

:::

::: {#prp-somme}

La somme $F_{1}+\dots +F_{n}$ est un sous espace vectoriel de $E$.

:::

::: {#rem-somme}

La somme $F_{1}+ \dots + F_{n}$ est le plus petit sous espace vectoriel de $E$
(au sens de l'inclusion) contenant $F_{1},\dots,F_{n}$.

:::

Par définition, tout élément de $F_{1}+ \dots + F_{n}$ s'écrit comme
somme d'élément de $F_{1},\dots,F_{n}$. Lorsque cette écriture est unique, on
dit que la somme est *directe*. 

::: {#def-somme-directe}

On dit que la somme $F = F_{1}+ \dots + F_{n}$ est **directe** si tout élément
de $F$ s'écrit *de manière unique* comme somme d'éléments de
$F_{1},\dots,F_{n}$. On note alors $F = F_{1}\oplus \cdots \oplus F_{n}$.

:::

Les sommes directes jouent le même rôle que les familles libres. En
particulier :

::: {#prp-unicite-ecriture-zero}

#### Unicité de l'écriture de zéro

La somme $F = F_{1}+ \dots + F_{n}$ est directe ssi l'écriture de $0_{E}$ dans la
somme $F$ est unique i.e. 

$$
    \forall v_{1} \in F_{1},\dots, v_{n} \in F_{n},\ v_{1}+\dots + v_{n} =
0_{E} \mathbb{R}ightarrow v_{1}= \dots = v_{n}=0_{E}.
$$

:::

Le cas particulier de deux facteurs est très fréquent (projecteur,
symétrie,...). Il est aussi plus simple à traiter. 

::: {#prp-deux-facteurs}

#### Cas de deux facteurs

Soit $F$ et $G$ deux sous espaces vectoriels de $E$. Alors la somme $F + G$ est
directe ssi $F \cap G = \{0_E\}$.

:::

::: {#wrn-deux-facteur .callout-warning}

Cette caractérisation est *fausse* pour trois facteurs ou plus (penser à $3$
droites coplanaires).

:::

::: {#def-supplementaire}

Deux sous espaces vectoriels $F$ et $G$ de $E$ sont **suplémentaires** dans $E$
si $E=F \oplus G$. 

:::

::: {#prp-caracterisation-supplementaire}

#### Caractérisation des supplémentaires 

Soient $F$ et $G$ deux sous espaces vectoriels de $E$. Les propositions
suivantes sont équivalentes :

1. $E=F \oplus G$,
2. $F \cap G =0_{E}$ et $E=F + G$,
3. si $E$ est de dimension finie, $F \cap G = \{0_{E}\}$ et $\dim E = \dim F +
   \dim G$.

:::

### Définir une application linéaire à l'aide d'une somme directe

On sait qu'une application linéaire est entièrement
définie par l'image d'une *base*, résumée par une *matrice* en
dimension finie. 

De même, nous allons voir qu'une application linéaire est entièrement
déterminée par ses *restrictions* aux facteurs d'une somme directe, résumées
par une matrice *par blocs*.

::: {#def-restriction}

Soit $F$ un sous espace vectoriel de $E$ et $f$ une application linéaire de $E$
dans $E'$.  La **restriction** de $f$ à $F$ est l'application linéaire
$f_{|F}:F \to E'$ définie par

$$
\forall v \in F,\ f_{|F}(v) = f(v).
$$

:::

::: {#nte-restriction .callout-note}

Autrement dit, l'*action* de $f_{|F}$ est la même que $f$, mais l'espace de
*départ* change. Or, changer l'espace de départ (ou d'arrivée) d'une fonction,
c'est changer la
fonction. Par exemple, réduire l'espace de départ (on dit *restreindre*) peut
rendre une fonction injective. De même, reduire l'espace d'arrivée (on dit
*corestreindre*) peut rendre une fonction surjective. Dès lors, il est légitime
de distinguer $f$ et $f_{|F}$.

:::

::: {#prp-definition-somme-directe}

#### Définition d'une application linéaire sur une somme directe

Soient $E$ et $E'$ deux $\mathbb{K}$-espaces vectoriels. On suppose que
$E=\bigoplus_{i=1}^{n}F_{i}$. On se donne, pour tout $i \in \{1,\dots,n\}$, une
application linéaire $f_i:F_i \to E'$. Alors il existe une unique application
linéaire $f$ de $E$ dans $E'$ tel que $f_{|F_{i}}=f_i$. 

:::

::: {#nte-definition-somme-directe .callout-note}

Il faut comprendre cette proposition de deux manières :

1. c'est un résultat d'*unicité* ; si deux applications linéaires $f$ et $g$ coincident sur
   chaque facteur d'une somme directe (c.-à.d si $f_{|F_{i}}=g_{|F_{i}}$ pour tout $i$), alors $f=g$,

2. c'est un un résultat d'existence :  pour *définir*  une application linéaire
   de $E$ dans $E'$, il suffit de la définir sur chaque facteur de la somme
directe (ce qui est en général plus simple que de la définir partout). 

:::

::: {#def-base-adapte}

#### Base adaptée

Si $E=\bigoplus_{i=1}^{n} F_{i}$ et si $\mathcal{B}_i$ est une base de $F_{i}$
pour $i=1,\dots,n$, alors la famille
$\mathcal{B}=(\mathcal{B}_{1},\dots,\mathcal{B}_{n})$ obtenue en mettant bout à
bout les bases $B_{1},\dots,\mathcal{B}_{n}$ est une base de $E$, dite
**adaptée** à la somme directe $E=\bigoplus_{i=1}^{n}F_{i}$.

:::

La notion de base adaptée mêne à l'écriture des matrices d'applications
linéaires par *blocs*, ce que nous expliquons maintenant. 

::: {#def-matrice-par-bloc}

#### Matrices par blocs

Une matrice est dite écrite par **blocs** si elle est divisée en *sous matrices* (les blocs) 
figurés à l'aide de lignes horizontales et/ou verticales.

:::

::: {#exm-blocs}

La matrice 

$$
A = \begin{pmatrix}
   1&2&2\\
3 &5&5\\
4 &5&5
\end{pmatrix}
$$

peut s'écrire par blocs 

$$
A = \left(\begin{array}{c|cc}
   1&2&2\\
\hline
3 &5&5\\
4 &5&5
\end{array}\right)
$$

On écrit alors 

$$
    A = \begin{pmatrix}
        \boldsymbol{A}_{11} & \boldsymbol{A}_{12}\\
\boldsymbol{A}_{21} & \boldsymbol{A}_{22}
    \end{pmatrix}
$$

avec $\boldsymbol{A}_{11} = (1)$, $\boldsymbol{A}_{12} = \begin{pmatrix}
    2&2
\end{pmatrix}$, $\boldsymbol{A}_{21} = \begin{pmatrix}
    3\\4
\end{pmatrix}$ et $\boldsymbol{A}_{22} = 5 I_{2}$.

:::

::: {#prp-multiplication}

#### Multiplication des matrices par blocs

Si les tailles des blocs sont compatibles, on peut multiplier les matrices par
blocs comme on multiplie les matrices scalaires. 

:::

::: {#exm-multiplication-par-bloc}

Si  $A = \begin{pmatrix}
        \boldsymbol{A}_{11} & \boldsymbol{A}_{12}\\
\boldsymbol{A}_{21} & \boldsymbol{A}_{22}
    \end{pmatrix}$ et $B =\begin{pmatrix}
        \boldsymbol{B}_{11} & \boldsymbol{B}_{12}\\
\boldsymbol{B}_{21} & \boldsymbol{B}_{22}
    \end{pmatrix}$, et si la taille des blocs est compatible, alors 

$$
AB = \begin{pmatrix}
\boldsymbol{A}_{11}\boldsymbol{B}_{11} + \boldsymbol{A}_{12}\boldsymbol{B}_{21} & \boldsymbol{A}_{11}\boldsymbol{B}_{12}+ \boldsymbol{A}_{21}\boldsymbol{B}_{22}\\
\boldsymbol{A}_{21}\boldsymbol{B}_{11}+\boldsymbol{A}_{22}\boldsymbol{B}_{21} & \boldsymbol{A}_{21}\boldsymbol{B}_{12}+\boldsymbol{A}_{22}\boldsymbol{B}_{22}
\end{pmatrix}.
$$

:::

Si $E = \bigoplus_{i=1}^{n}F_{i}$ et si
$\mathcal{B}=(\mathcal{B}_{1},\dots,\mathcal{B}_{n})$ est une base adaptée à
cette somme directe, la matrice d'un endomorphisme $f$ de $E$ s'écrit
naturellement par blocs :

::: {#prp-matrice-par-bloc}

Soit $\mathcal{B} = (\mathcal{B}_{1},\dots,\mathcal{B}_{n})$ une base adaptée à
la somme  directe $E = \bigoplus_{i=1}^{n} F_{i}$, alors la matrice de $f \in
\mathcal{L}(E)$ dans la base $\mathcal{B}$ s'écrit par blocs

::: {#fig-bloc}

![](./svg/cropped.svg)

:::


:::


### Sous espaces stables par un endomorphisme

::: {#def-sous-espace-stable}

#### Sous espace stable par un endomorphisme

Soit $f \in \mathcal{L}(E)$ et $F$ un sous espace vectoriel de $E$. On dit que
$F$ est **stable** par $f$ si 

$$
    \forall v \in F, f(v) \in F.
$$

::: {#fig-stable}

![](./tikz/svg/03-2.svg)

:::



:::

::: {#exm-derivation}

Le sous espace $\mathbb{R}_{n}[X]$ est stable par dérivation. 

:::

::: {#exm-rotation}

L'axe d'une rotation $r$ de $\mathbb{R}^{3}$ est stable par $r$.

:::

::: {#exm-reflexion}
Le plan d'une réflexion $s$ de $\mathbb{R}^{3}$ est stable par $s$.

:::

::: {#def-endomorphisme-induit}

#### Endomorphisme induit par restriction

Si $F$ est un sous espace vectoriel de $E$ stable par un endomorphisme $f$ de
$E$, alors la restriction de $f$ à $F$ définit un endomorphisme de $F$. On
l'appelle l'endomorphisme **induit par restriction** de $f$ à $F$.

:::

::: {#exm-derivation}

Puisque $\mathbb{R}_{n}[X]$ est stable par dérivation, on peut restreindre la dérivation
à $\mathbb{R}_{n}[X]$. On obtient ainsi un endomorphisme de $\mathbb{R}_{n}[X]$ définit par $P
\mapsto P'$. 

:::

::: {#nte-restriction .callout-note}

Restreindre un endomorphisme peut présenter plusieurs avantages, notamment :

1. l'espace $F$ peut être de dimension *finie*,

2. l'endomorphisme $f_{|F}$ peut-être plus simple que l'endomorphisme $f$.

:::

Lorsque l'on cherche à montrer qu'un sous espace est stable par un
endomorphisme, on peut avantageusement utiliser une famille *génératrice*
(notamment, une *base*) de $F$ : 

::: {#prp-caractérisation-stabilite}

#### Caractérisation de la stabilité à l'aide d'une famille génératrice

Soit $F$ un sous espace vectoriel de $E$ et $f \in \mathcal{L}(E)$. Soit
$\mathcal{G}$ ne famille génératrice de $F$. Alors $F$ est stable par $f$ ssi 

$$
    \forall v \in \mathcal{G}, f(v) \in F.
$$

:::

Visuellement, la stabilité d'un sous espace par un endomorphisme se traduit sur
sa matrice dans une base adaptée par des blocs de $0$. On l'illustre dans le
cas d'une somme directe à *deux* facteurs.

::: {#prp-stabilite-bloc}

On suppose que $E=F \oplus G$. Soit $\mathcal{B}=(\mathcal{B}_{F},\mathcal{B}_{G})$ une base adaptée à cette somme directe et soit $f \in \mathcal{L}(E)$. Alors $F$ est stable par $f$ ssi la matrice par blocs de $f$ dans la base $\mathcal{B}$ est de la forme

$$
    \mathcal{M}_{\mathcal{B}}(f) = \begin{pmatrix}
        \boldsymbol{A}_{11}& \boldsymbol{A}_{12}\\
\boldsymbol{0}& \boldsymbol{A_{22}}
    \end{pmatrix},
$$

et dans ce cas, $\boldsymbol{A}_{11} = \mathcal{M}_{\mathcal{B}_{F}}(f_{|F})$.

:::

::: {#rem-stabilite-bloc}

On a un résultat analogue pour la stabilité de $G$ par $f$.

:::

## Projecteurs et symétries {#sec-03-projecteurs-et-symetries}

On applique les résultats de la section précédente à la définition des
projecteurs et des symétries. Ce sont des endomorphismes de référence qui
interviennent dans de nombreux domaines. 

### Projecteurs

::: {#def-projecteur-sur-F-parallelement-a-G}

On suppose que $E=F \oplus G$. On appelle projecteur sur $F$ parallèlement à $G$ l'endomorphisme $p$ de $E$ défini par $p_{|F}=\mathrm{Id}$ et $p_{|G}=0$.

:::

::: {#nte-projecteur .callout-note}

Concrètement, si $v=v_{F}+v_{G}$ est la décomposition de $v$ dans la somme
directe $E=F \oplus G$, alors 

$$
p(v) = p(v_{F}) + p(v_{G}) = v_{F}
$$

On dit que $v_{F}$ est la *composante suivant $F$* de $v$.

::: {#fig-projecteur-F}

![](./tikz/svg/03-1.svg)

:::

:::

::: {#tip-projecteur-F .callout-tip}

Si $E=F \oplus G$ et si on note $p$ et $q$ les projecteurs sur $F$
parallèlement à $G$ et inversement, alors $p+q=\mathrm{Id}$ ; connaitre un des
deux projecteurs, c'est donc connaitre les deux.

:::

Concrètement, pour calculer la projection d'un vecteur $v$ sur $F$
parallèlement à $F$, on détermine la composante $v_{F}$ de $v$ dans la somme directe $E=F \oplus G$. On utilise pour cela la caractérisation suivante :

::: {#prp-caracterisation-du-projete}

On suppose que $E=F \oplus G$ et on note $p$ le projecteur sur $F$
parallèlement à $G$. Alors pour tout $v \in E$, le projeté $p(v)=u$ de $v$
sur $F$ parallèlement à $G$ est caractérisé par 

$$
    \begin{cases}
        u \in \in F,\\
        v-u \in G.
    \end{cases}
$$

:::

::: {#exm-projection-F-1}

Dans $\mathbb{R}^{3}$, déterminer la projection du vecteur $v=(1,1,1)$ sur le plan $P$ d'équation
$x+2y+z=0$, parallèlement à la droite engendrée par le vecteur $u=(1,1,-1)$.

:::


::: {#tip-caracterisation .callout-tip}

Suivant les cas (notamment si la dimension de $G$ est inférieure à celle de
$F$), il peux être plus simple de calculer $v_G$ et d'utiliser la relation
$v_{F}+v_{G}=v$.

:::

::: {#exm-projecteur-F-2}

Dans l'exemple précédent, on a été amené à résoudre un système $2\times 2$ car
on a projeté sur un espace de dimension $2$ (un plan vectoriel). Il est en fait
plus simple d'utiliser la relation rappelée dans le @tip-caracterisation et de
projeter sur la droite $D$.

:::

Remarquons maintenant que si $E = F \oplus G$ et si $p$ est le projecteur sur
$F$ parallèlement à $G$ alors $p \circ p = p$. En effet, cette égalité est
satisfaite sur $G$ car $p_{|G}=0$ et sur $F$ car $p_{|F}=\mathrm{id}$. Cette
observation suggère la définition suivante : 

::: {#def-projecteur}

Un endomorphisme $p$ de $E$ est un **projecteur** si $p \circ p = p$.

:::

La terminologie est justifiée par le théorème suivant :


::: {#thm-projecteur}

#### Théorème fondamental des projecteurs

Si $p$ est un projecteur de $E$, alors 

$$
    E = \oplus \mathrm{Im}(p) \oplus \ker p
$$

et $p$ est le projecteur sur $\mathrm{Im}(p)$ parallèlement à $\ker p$.

:::

### Symétries

::: {#def-symetrie-F-parallelement-G}

On suppose que $E=F \oplus G$. La symétrie par rapport à $F$ parrallèlement à $G$ et l'endomorphisme $s$ de $E$ défini par
$s_{|F}=\mathrm{id}$ et $s_{|G}=-\mathrm{id}$. 

:::



## Matrices {#sec-03-matrices}

Le but de cette section est d'introduire deux applications linéaires
particulièrement importantes : la *trace* et la *transposition*. Ce sont des
outils que nous utiliserons entre autre dans le cours sur la réduction des
endomorphismes et dans le chapitre sur les espaces préhilbertiens réels. 

### Transposée d'une matrice

::: {#def-transpose}

#### Transposée d'une matrice 

Soit $A \in \mathcal{M}_{n,p}(\mathbb{R})$, $n,p \geqslant 1$. La
**transposée** de $A$ est la matrice $A^{T}\in \mathcal{M}_{p,n}(\mathbb{R})$
obtenue en échangeant les lignes et les colonnes de $A$ i.e. définie par 

$$
\forall i \in \{1,\dots,n\},\ \forall j \in \{1,\dots,p\}, \bigl( A^{T}\bigr)_{ji} = \bigl( A\bigr)_{ij}.
$$

:::

::: {#prp-linearité-transpose}

La transposition est une application linéaire de
$\mathcal{M}_{n,p}(\mathbb{R})$ dans $\mathcal{M}_{p,n}(\mathbb{R})$.

:::

Certaines matrices jouissent de propriétés de symétries remarquables
vis à vis de la
transposition. Elles interviendront notamment dans l'énoncé du théorème
spectral dans le cours sur les espaces préhilbertiens réels.  

::: {#def-matrice-symetrique-antisymetrique}

#### Matrices symétriques et anti symétriques

Une matrice $A\in\mathcal{M}_n(\mathbb{R})$ est dite \textbf{symétrique} si $A^T=A$ et \textbf{anti symétrique} si $A^T=-A$. On note $\mathcal{S}_n(\mathbb{R})$ (resp. $\mathcal{A}_n(\mathbb{R})$) l'ensemble des matrices symétriques (resp. anti symétriques) de $\mathcal{M}_n(\mathbb{R})$.

:::


::: {#prp-matrice-symetrique-antisymetrique}

#### Somme directe de $\mathcal{S}_{n}(\mathbb{R})$ et $\mathcal{A}_{n}(\mathbb{R})$

Les sous-ensembles $\mathcal{S}_n(\mathbb{R})$ et $\mathcal{A}_n(\mathbb{R})$ sont des sous-espaces vectoriels de $\mathcal{M}_n(\mathbb{R})$, de dimension respective $\frac{n(n+1)}{2}$ et $\frac{n(n-1)}{2}$, et on a 

$$
\mathcal{M}_n(\mathbb{R}) = \mathcal{S}_n(\mathbb{R})\oplus \mathcal{A}_n(\mathbb{R}).
$$

:::

::: {#nte-projete .callout-note}

Il est bon de connaitre la décomposition d'une matrice quelconque comme
somme (unique) d'une matrice symétrique et anti symétrique :

$$
    \forall A \in \mathcal{M}_{n}(\mathbb{R}),\ A = \frac{A+A^{T}}{2} +
\frac{A-A^{T}}{2}.
$$

:::


### Trace d'une matrice carrée, d'un endomorphisme

::: {#def-trace}

#### Trace d'une matrice carrée

Soit $A = (a_{ij})_{1 \leqslant i,j \leqslant n}\in \mathcal{M}_{n}(\mathbb{K})$. La **trace** de $A$ est le scalaire 

$$
    \mathrm{Tr}(A) = \sum_{i=1}^{n} a_{ii}.
$$

:::

::: {#prp-trace}

La trace est une application linéaire de $\mathcal{M}_{n}(\mathbb{K})$ dans $\mathbb{K}$.

:::

::: {#nte-forme .callout-note}

Si $E$ est un $\mathbb{K}$-espace vectoriel, une application linéraie de $E$
dans $\mathbb{K}$ s'appelle une *forme linéaire* sur $E$. L'ensemble des formes
linéaires sur $E$ (c'est à dire l'ensemble $\mathcal{L}(E,\mathbb{K})$) s'appelle le *dual* de $E$.

:::

::: {#prp-trace-transpose}

#### Trace d'une transposée

Une matrice (carrée) et sa transposée on même trace.

:::

Enfin, la trace ne fait pas la différence entreles produits $AB$ et $BA$ :

::: {#prp-trace-produit}

Pour toute matrice $A,B \in \mathcal{M}_{n}(\mathbb{K})$, on a 

$$
    \mathrm{Tr}(AB) = \mathrm{Tr}(BA).
$$

:::

On déduit de cette propriété que la trace est un *invariant de similitude*,
c'est à dire que deux matrices semblables ont même trace. 

::: {#prp-matrice-semblbable}

Deux matrices semblables ont même trace.

:::

Puisque les matrices d'un endomorphisme dans différentes bases sont toutes
*semblables*, cette propriété permet donc (au moins en dimension finie), de
définir la trace d'un *endomorphisme* comme la trace de n'importe quelle
matrice le représentant.

::: {#def-trace-endo}

Si $E$ est de dimension finie et si $f \in \mathcal{L}(E)$, la **trace** de $f$
est par définition égale à la trace de n'importe quelle matrice représentant $f$.

:::

\newpage

## Exercices {.unnumbered}

{{< include ./td/03.md >}}






