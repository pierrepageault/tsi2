# Déterminants

Dans ce chapitre, une matrice $A \in \mathcal{M}_{n}(\mathbb{K})$ est
représentée par ses colonnes $(C_{1},\dots,C_{n})$.

## Introduction {.unnumbered}

Le déterminant est un outil permettant d'étudier les matrices, notamment leur
inversibilité. Malheureusement, les démonstrations de son existence et de ses
propriétés nécessitent quelques notions de théorie des groupes qui dépassent le
cadre de ce cours. Seul le cas $n=2$, accessible "à la main", sera traité
entièrement ; il contient déja beaucoup d'idées intéressantes.

Dans ce cours, le déterminant est défini à l'aide de ses *propriétés* vis à vis
des lignes et des colonnes. Ainsi, même sans disposer d'une
formule générale, on sera en mesure de *calculer* des déterminants, ce qui est
l'objectif en TSI.


## Déterminant d'une matrice carrée {#sec-04-determinant}

### Définition

::: {#def-determinant}

#### Déterminant d'une matrice carrée

Il existe une unique application $\det :\mathcal{M}_{n}(\mathbb{K}) \to
\mathbb{K}$, appelée **déterminant**, telle que :

1. le déterminant est linéaire par rapport à chaque colonne i.e. pour tout $i
   \in \{1,\dots,n\}$, l'application $C_{i} \mapsto
   \det(C_{1},\dots,C_i,\dots,C_{n})$ est linéaire,

2. échanger deux colonnes multiplie le déterminant par $-1$ i.e. pour tout $i
   <j$, 
   
   $$
    \det(C_{1},\dots,C_{i},\dots,C_{j},\dots,C_{n}) = - \det(C_{1},\dots,C_{j},\dots,C_{i},\dots,C_{n}),
   $$

3. $\det(I_{n})=1$.

Le déterminant d'une matrice $A = (a_{ij})_{1 \leqslant i,j \leqslant n}$ est
aussi noté à l'aide de barres verticales 

$$
\det A = \left|\begin{matrix}
a_{11}& \dots & a_{1n}\\
\vdots&&\vdots\\
a_{n1}& \dots &a_{nn}
\end{matrix}\right|
$$

:::

::: {#nte-det .callout-note}

Si deux colonnes de $A$ sont égales, la deuxième propriété montre que le
déterminant est nul, car égal à son opposé. 

Plus généralement, si par exemple
$C_{1}$ est combinaison linéaire de $C_{2}, \dots, C_{n}$, alors $\det A = 0$.
En effet, en écrivant 

$$
    C_{1} = \lambda_{2} C_{2} + \dots + \lambda_{n} C_{n}
$$

on obtient par linéarité par rapport à la première colonne

$$
    \det A = \sum_{i=2}^{n} \lambda_{i}\det (C_{i},C_{2},\dots,C_{n}),
$$

mais chacun des déterminants de cette somme est nul car deux colonnes sont
identiques. 

Le déterminant d'une matrice de rang non maximal est donc
nécessairement nul. On verra que la réciproque est vraie, de sorte que le
déterminant permet exactement de tester l'inversibilité d'une matrice. 

:::

Il est important de noter que le déterminant n'est *pas* une application
*linéaire* (on dit que c'est une application *multilinéaire*). Par exemple, la multilinéarité (par rapport à
chaque colonnes) donne :

$$
    \forall A \in \mathcal{M}_{n}(\mathbb{K}),\ \forall \lambda \in
\mathbb{K},\ \det (\lambda A) = \lambda^{n}\det A.
$$

Dans le même ordre d'idée, il n'existe pas de formule simple donnant $\det
(A+B)$ en fonction de $\det A$ et $\det B$...


### Propriétés 

On liste maintenant les propriété fondamentales du déterminant.

::: {#prp-determinant-matrice-taille-2}

#### Déterminant d'une matrice de taille $2$

Si $A = \begin{pmatrix}
    a&b\\c&d
\end{pmatrix} \in \mathcal{M}_{2}(\mathbb{K})$, alors 

$$
    \det A = ad-bc.
$$

:::


Pour une matrice carrée de taille $2$, la formule précédente permet de vérifier
facilement que le déterminant de $A$ est égal au déterminant de $A^{T}$. C'est
un fait général :

::: {#prp-transpose}

#### Déterminant et transposition

Pour tout $A \in \mathcal{M}_{n}(\mathbb{K})$, $\det A = \det A^{T}$

:::


::: {#tip-transpose .callout-tip}

Le déterminant jouit des mêmes propriétés vis à vis des *lignes* que des
*colonnes* ; échanger deux lignes change le déterminant en son opposé, etc. 

:::

::: {#prp-produit}

#### Déterminant d'un produit

Pour tout $A,B \in \mathcal{M}_{n}(\mathbb{K})$, $\det(AB) = \det A \det B$.

:::

::: {#prp-inversibilite}

#### Determinant et inversibilité

Une matrice $A \in \mathcal{M}_{n}(\mathbb{K})$ est inversible ssi $\det A \neq
0$.

:::

### Calcul pratique d'un déterminant

Il existe une formule explicite pour le déterminant d'une matrice carrée de
taille quelconque qui généralise celle donnée pour une matrice de taille $2$.
Si cette formule a un intérêt théorique, elle est en revanche inutile lorsqu'il
s'agit de *calculer* un déterminant.

En pratique, on utilise le développement par rapport à une ligne ou une
colonne, précédé d'opérations sur les lignes et les colonnes bien choisies.

::: {#prp-developpement}

#### Développement par rapport à une ligne ou une colonne

Soit $A = (a_{ij})_{1\leqslant i,j\leqslant n}\in \mathcal{M}_{n}(\mathbb{K})$
avec $n\geqslant 2$. Pour tout $i,j\in\{1,\dots,n\}$, on note $\Delta_{ij}$ le
déterminant de la matrice obtenue à partir de $A$ en rayant la ligne $i$ et la
colonne $j$. Alors, pour tout $i\in\{1,\dots,n\}$, 

$$ 
\det A  = \sum_{j=1}^n(-1)^{i+j}a_{ij}\Delta_{ij} \quad \text{(développement
par rapport à la ligne $i$)} 
$$    

et, pour tout $j \in \{1,\dots,n\}$,

$$
   \det A = \sum_{i=1}^{n}(-1)^{i+j} a_{ij}\Delta_{ij} \quad \text{(développement
par rapport à la colonne $j$.)} 
$$

:::

::: {#nte-developpement .callout-note}


Une utilisation naive de ce résultat permet de calculer de proche en proche des
déterminants de matrices de taille quelconque à partir de la formule pour une
matrice de taille $2$. La figure suivante illustre un développement suivant la
première colonne pour une matrice de taille $3$.

::: {#fig-developpement}

![](./tikz/svg/04-1.svg)

Développement par rapport à la première colonne d'une matrice de taille $3$.

:::

:::

::: {#exm-calcul-det-1}

Calcul du déterminant de la matrice $A = \begin{pmatrix}
    -2&2&-3\\
-1&1&3\\
4&0&-1
\end{pmatrix}$.

::: {.details}

En développant par rapport à la première colonne, on obtient

$$
\begin{aligned}
    \det A &= (-2)\left|\begin{matrix}1&3\\0&-1\end{matrix}\right| - (-1)\left|\begin{matrix}2&-3\\0&1\end{matrix}\right| + 4 \left|\begin{matrix}2&-3\\1&3\end{matrix}\right|\\
&= (-2)\cdot(-1) + (-2) + 4 \cdot 9\\
&= 36.
\end{aligned}
$$

Noter que le développement par rapport à la deuxième colonne est bien plus
judicieux car il y a un zéro sur cette colonne. On obtient

$$
\begin{aligned}
\det A &= -2 \left|\begin{matrix}-1&3\\4&-1\end{matrix}\right| + 1
\left|\begin{matrix}-2&-3\\4&-1\end{matrix}\right|\\
&= -2 \cdot (-11) + (2+12)\\
&= 36.
\end{aligned}
$$

:::

:::

Le calcul précédent montre que l'on a tout intérêt à utiliser une ligne ou une
colonne avec beaucoup de $0$ lors du calcul d'un déterminant. Si ce n'est pas
le cas, on peut toujours en faire apparaitre à l'aide de la proposition
suivante :

::: {#prp-operation-elementaire}

#### Déterminants et opérations élémentaires

Il y a trois opérations élémentaires sur les lignes et les colonnes d'une
matrice (données ici dans le cas des colonnes) :

| Opérations                                                                     | Effet sur le déterminant       |
| ------------------------------------------------------------------------------ | ------------------------------ |
| $C_i \leftrightarrow  C_j\quad (i\neq j)$                                      | Multiplié par $-1$             |
| $C_{i} \gets C_i + \lambda C_{j}, \quad i \neq j,\quad \lambda \in \mathbb{K}$ | Inchangé                       |
| $C_{i} \gets \lambda C_{i},\quad \lambda \neq 0$                               | Multiplié par $\lambda \neq 0$ |

:::

On notera le corollaire suivant :

::: {#tip-combinaison-lineaire .callout-tip}

On ne change pas un déterminant en ajoutant à une ligne (ou une colonne) une
combinaison linéaire des *autres* lignes (ou colonnes).

:::

::: {#exm-operation}

On revient sur l'exemple de la matrice $A = \begin{pmatrix}
    -2&2&-3\\
-1&1&3\\
4&0&-1
\end{pmatrix}$. En effectuant l'opération élémentaire $L_1 \gets L_1 - 2L_{2}$,
on a 

$$
\det A = \left|\begin{matrix}0&0&-9\\-1&1&3\\4&0&-1\end{matrix}\right|
$$

En développant par rapport à la première ligne, on obtient alors 

$$
    \det A = -9 \left|\begin{matrix}-1&1\\4&0\end{matrix}\right| = 36.
$$

:::

::: {#tip-developper .callout-tip}

Pour minimiser les erreurs de calcul, on aura toujours intérêt à faire
apparaitre le plus de $0$ possible sur une ligne (ou une colonne) avant de
développer par rapport à cette ligne (ou cette colonne). 

:::

Le développement par rapport à une ligne (ou une colonne) est aussi un outil très
puissant pour établir des *relations de récurrence* entre déterminants.

A titre d'exemple, on calcul le déterminants des matrices
*triangulaires* (qui incluent les matrices *diagonales*) :

::: {#prp-triangulaire}

#### Déterminant d'une matrice triangulaire

Si $A$ est une matrice triangulaire (inférieure ou supérieure), alors son
déterminant est égal au produit de ses termes diagonaux.

:::

On a un résultat analogue pour les matrices triangulaires *par blocs* :

::: {#prp-triangulaire-bloc}

#### Déterminant d'une matrice triangulaire par blocs

Si $A$ est une matrice triangulaire par blocs, alors le déterminant de $A$ est
égal au produit des déterminants des blocs diagonaux de $A$.

:::

::: {#exm-triangulaire-bloc}

Si $A = \begin{pmatrix}
    \boldsymbol{A_{11}}&\boldsymbol{A_{12}}\\
\boldsymbol{0}&\boldsymbol{A_{22}}
\end{pmatrix}$ alors $\det A = \det \boldsymbol{A_{11}} \det \boldsymbol{A_{22}}$.

:::

Une autre stratégie pour calculer un déterminant est donc de se ramener par
opérations élémentaires à une matrice triangulaire (algorithme de Gauss), puis
d'utiliser le résultat précédent. C'est cette approche qui est utilisée
en pratique pour calculer numériquement les déterminants.

::: {#nte-factorielle .callout-note}

On ne peut pas développer naivement un déterminant de taille $n$ de
proche en proche. En effet, le premier développement fait apparaitre $n$
déterminants de taille $n-1$, qui font eux même apparaitre $n-1$
déterminants de taille $n-2$ etc. menant à une complexité *fatorielle* qui
dépasse les capacités de n'importe quel ordinateur, même pour de "petites"
valeurs de $n$.

:::

## Déterminant d'une famille de vecteurs, d'un endomorphisme

### Déterminant d'un endomorphisme

Tout comme la trace, le déterminant est un invariant de similitude. Cette
notion remonte donc aux endomorphismes. 

::: {#prp-matrice-semblables}

Deux matrices semblables ont même déterminant. 

:::

::: {#def-determinant-endomorphisme}

#### Déterminant d'un endomorphisme

Soit $E$ un espace vectoriel de dimension finie et $f \in \mathcal{L}(E)$. Le
**déterminant** de $f$, noté $\det f$, est le déterminant de n'importe quelle
matrice représentant $f$ dans une base $\mathcal{B}ns$ de $E$.

:::

::: {#cor-inversible}

#### Déterminant et inversibilité

Si $f\in \mathcal{L}(E)$, alors $f \in \operatorname{GL}(E)$ ssi $\det f
\neq 0$. 

:::

::: {#cor-compo}

#### Déterminant d'une composition

Pour tout $f,g \in \mathcal{L}(E)$, $\det f \circ g = \det f \cdot \det g$.

:::

### Déterminant d'une famille de vecteurs

Dans un espace vectoriel de dimension finie, la notion de *coordonnées* dans une
base permet de se ramener à des tableaux de nombres (des matrices). On
l'utilise pour définir le déterminant d'une famille de vecteurs. 

::: {#def-famille}

#### Déterminant d'une famille de vecteurs dans une base

Soit $E$ un $\mathbb{K}$-espace vectoriel de dimension finie $n$ et
$\mathcal{B}$ une base de $E$. Soient $(v_{1},\dots,v_{n})$ une famille de $n$
vecteurs de $E$. Le **déterminant dans la base $\mathcal{B}$** des vecteurs
$v_{1},\dots,v_{n}$ est le déterminant de la matrice $(V_{1},\dots,V_{n})$ des
*coordonnées* des vecteurs $v_{i}$ dans la base $\mathcal{B}$. On le note
$\det_{\mathcal{B}}(v_{1},\dots,v_{n})$.

:::

::: {#exm-R3}

On considère les vecteurs $u=(1,1,0)$, $v = (0,1,1)$ et $w = (1,1,1)$ de
$\mathbb{R}^{3}$. Puisque $u = 1 \cdot e_{1}+1 \cdot e_{2}$, les coordonnées de
$u$ dans la base canonique de $\mathbb{R}^{3}$ sont $u^{T}=\begin{pmatrix}
    1\\1\\0
\end{pmatrix}$, de même pour $v$
et $w$. Donc 

$$
\begin{aligned}
\det_{\mathcal{B}_{\operatorname{can}}}(u,v,w) &= \left|\begin{matrix}1&0&1\\1&1&1\\0&1&1\end{matrix}\right|\quad L_{2}\gets L_{2}-L_{3}\\
&= \left|\begin{matrix}1&0&1\\1&0&0\\0&1&1\end{matrix}\right|\quad \text{ligne
$2$}\\
&= -(-1)=1.
\end{aligned}
$$

:::

::: {#exm-polynome}

On considère les polynômes $P=X(X-1)$, $Q=(X-1)(X-2)$ et $R=X(X-2)$. Puisque $P
= X^{2}-X$, les coordonnées de $P$ dans la base canonique $\mathcal{B}_{\operatorname{can}} = (1,X,X^{2})$ de $\mathbb{R}_{2}[X]$ sont $\begin{pmatrix}
    0\\-1\\1
\end{pmatrix}$. On obtient de même

$$
    \det_{\mathcal{B}_{\operatorname{can}}}(P,Q,R) = \left|\begin{matrix}0&2&0\\-1&-3&-2\\1&1&1\end{matrix}\right| = -2 \quad \text{(première ligne).}
$$

:::

::: {#prp-base}

#### Caractérisation des bases à l'aide du déterminant

On suppose que $E$ est de dimension finie $n$. Alors une famille $(v_{1},\dots,v_{n})$ de $E$ est une *base* de $E$ ssi son déterminant dans n'importe quelle base de $E$ est *non nul*.

:::

::: {#exm-retour} 

Les familles $(u,v,w)$ et $(P,Q,R)$ des deux exemples précédents sont des bases
respectives de $\mathbb{R}^{3}$ et $\mathbb{R}^{2}[X]$.

:::

::: {#exm-base}

Si $E$ est un espace vectoriel de dimension $n$, et si $(v_{1},\dots,v_{n})$
est une base de $E$, alors $(v_{1}+v_{2},\dots,v_{n-1}+ v_{n}, v_{n})$ est
encore une base de $E$. En effet, la matrice de cette famille dans la *base*
$(v_{1},\dots,v_{n})$ est triangulaire (inférieure):

$$
M=\begin{pmatrix}
    1&0&\ldots&\ldots&0\\
    1&1&\ddots&&\vdots\\
0&1&\ddots&\ddots&\vdots\\
\vdots&\ddots&\ddots&1&0\\
0&\ldots&0&1&1
\end{pmatrix}.
$$

donc sont déterminant vaut $1 \cdots 1 = 1$.

:::

::: {#nte-liaison .callout-note}

On utilise également la proposition précédente pour traduire la *liason* d'une
famille de vecteurs. Des exemples seront vus en TD.

:::







\newpage

## Exercices {.unnumbered}

{{< include ./td/04.md >}}
