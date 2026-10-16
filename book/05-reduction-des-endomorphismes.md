# Réduction des endomorphismes


Dans ce chapitre, $E$ désigne un $\mathbb{K}$-espace vectoriel de dimension
finie.

## Introduction {.unnumbered}

L'idée générale de la réduction d'un endomorphisme $f \in \mathcal{L}(E)$
consiste à chercher une décomposition en somme directe $E =
\bigoplus_{i=1}^{n}F_{i}$ telle que la restriction de $f$ à chacun des $F_i$
soit la plus simple possible -- idéalement un multiple de l'identité. 

On est donc naturellement amené à rechercher des sous espaces sur lesquels $f$
se comporte comme un multiple de l'identité ; c'est l'origine des notions de
vecteurs propres, de valeurs propres et de sous espaces propres. 

Lorsqu'une telle décomposition est possible (on dira que l'endomorphisme est
*diagonalisable*), de nombreux problèmes initialement difficiles (comme le
calcul des puissances $n$ ème d'une matrice représentant $f$) deviennent presque
immédiats. 

Les deux prototypes d'endomorphismes pour lesquels une telle réduction est
possible sont les symétries et les projecteurs. Les endomorphismes
diagonalisables, en un sens, généraliserons cette situation. 

Lorsqu'une telle décomposition s'avère impossible, on peut à défaut chercher
une base dans laquelle la matrice de l'endomorphisme est la plus simple
chapitre. 

## Rappels d'algèbre linéaire {#sec-05-rappels}

::: {#def-matrice}

#### Matrice dans une base

Soit $\mathcal{B}=(e_{1},\dots,e_{n})$ une base de $E$ et $f \in
\mathcal{L}(E)$. La **matrice de $f$ dans la base $\mathcal{B}$** est la
matrice dont les colonnes sont constituées de *coordonnées* des images
$f(e_{1}),\dots,f(e_{n})$ dans la base $\mathcal{B}$.


$$
\mathcal{M}_{\mathcal{B}}(f) = \begin{array}{cccc}
  f(e_{1}) & \dots & f(e_{n}) & \\
  \left( \begin{array}{c} * \\ \vdots \\ * \end{array} \right. &
  \begin{array}{c} \ldots \\ \\ \ldots \end{array} &
  \left. \begin{array}{c} * \\ \vdots \\ * \end{array} \right) &
  \begin{array}{c} e_{1} \\ \vdots \\ e_{n} \end{array}
\end{array}
$$

:::

::: {#def-matrice-passage}

#### Matrice de passage

Soit $\mathcal{B}=(e_1,\dots,e_n)$ et
$\mathcal{B}'=(\varepsilon_1,\dots,\varepsilon_n)$ deux bases de $E$. La
**matrice de passage** de $\mathcal{B}$ à $\mathcal{B}'$ est la matrice
$P_{\mathcal{B}\to \mathcal{B}'}$ dont les colonnes sont constituées des
coordonnées des *nouveaux* vecteurs $(\varepsilon_1',\dots,\varepsilon_n')$
dans l'*ancienne* base $(e_1,\dots,e_n)$.

$$
    P_{\mathcal{B}\to \mathcal{B}'} = 
 \begin{array}{cccc}
  \varepsilon_{1} & \dots & \varepsilon_{n} & \\
  \left( \begin{array}{c} * \\ \vdots \\ * \end{array} \right. &
  \begin{array}{c} \ldots \\ \\ \ldots \end{array} &
  \left. \begin{array}{c} * \\ \vdots \\ * \end{array} \right) &
  \begin{array}{c} e_{1} \\ \vdots \\ e_{n} \end{array}
\end{array}
$$

:::

::: {#tip-matrice-passage .callout-tip}

Coordonnées des *nouveaux* dans l'*ancien*.

:::

::: {#prp-changement-base}

Soit $f \in \mathcal{L}(E)$ et soient $\mathcal{B}$ et $\mathcal{B}'$ deux base
de $E$. Alors

$$
    \mathcal{M}_{\mathcal{B}'}(f) = P^{-1}\mathcal{M}_{\mathcal{B}}(f)P
$$

où $P = P_{\mathcal{B} \to \mathcal{B}'}$.

:::


Pour retenir la formule de changement de base (qu'il faut absolument
connaitre), on peut utiliser un moyen mnémotechnique "chronologique" :

::: {#tip-changement-base .callout-tip}

La matrice de $f$ dans la *nouvelle* base, c'est $P^{-1}$ fois la matrice dans
l'*ancienne* base fois $P$ où $P$ est la matrice de passage de l'*ancienne* base à
la *nouvelle*.

:::

La relation apparaissant entre les matrices $\mathcal{M}_{\mathcal{B}}(f)$ et
$\mathcal{M}_{\mathcal{B}'}(f)$ motive la définition suivante :

::: {#def-matrice-semblable}

#### Matrices semblables

Deux matrices $A,B \in \mathcal{M}_{n}(\mathbb{K})$ sont dites **semblables**
s'il existe une matrice inversible $P \in \operatorname{GL}_{n}(\mathbb{K})$
telle que 

$$
    B =P^{-1}AP.
$$

:::

::: {#nte-matrice-semblable .callout-note}

Des matrices semblables sont donc des matrices représentant le *même*
endomorphisme, dans des bases *différentes*. Elle hériterons de toutes les
propriétés communes à l'*endomorphisme* sous jacent
(rang,trace,déterminant,...).

:::

::: {#prp-relation-equivalence}

La relation d'équivalence est 

1. *réflexive* ; $A$ est semblable à elle même,

2. *symétrique* ; si $A$ est semblable à $B$, alors $B$ est semblable à $A$ et
   réciproquement,

3. *transitive* ; si $A$ est semblable à $B$ est si $B$ est semblable à $C$,
   alos $A$ semblable à $C$.

:::

Etant donnée une matrice $A \in \mathcal{M}_{n}(\mathbb{K})$, on peut
réciproquement se poser la question suivante : existe t'il un endomorphisme
*naturel* dont la matrice serait $A$ ? La réponse est positive, et d'usage constant :

::: {#def-endomorphisme-canoniquement-associe}

#### Endomorphisme canoniquement associé à $A$

Soit $A \in \mathcal{M}_{n}(\mathbb{K})$. L'endomorphisme **canoniquement
associé à $A$** est l'endomorphisme

$$
\begin{array}{cccc}
f_A : &\mathcal{M}_{n,1}(\mathbb{K})&\to&\mathcal{M}_{n,1}(\mathbb{K})\\
&X &\mapsto & AX
\end{array}
$$

:::

::: {#nte-endomorphisme-canoniquement-associe .callout-note}

Autrement dit, l'endomorphisme canoniquement associé à $A$ est la
*multiplication* par $A$. C'est un endomorphisme de
$\mathcal{M}_{n,1}(\mathbb{K})$ si $A \in \mathcal{M}_{n}(\mathbb{K})$.

:::

::: {#prp-matrice-f_A}

#### Matrice dans la base canonique de $f_{A}$

La matrice dans la base canonique de $\mathcal{M}_{n,1}(\mathbb{K})$ de $f_A$ est
$A$.

:::


<!-- ::: {#def-polynome} -->
<!---->
<!-- #### Polynômes de matrices  -->
<!---->
<!-- Pour tout polynôme $P= \sum_{k=0}^{n}a_{k}X^{k}$ et toute matrice $A \in \mathcal{M}_{n}(\mathbb{K})$, on pose  -->
<!---->
<!-- $$ -->
<!--     P(A)= \sum_{k=0}^{n} a_{k}A^{k} -->
<!-- $$ -->
<!---->
<!-- où, par convention, $A^{0}=\operatorname{I}_{n}$. On dit que la matrice $P(A)$ -->
<!-- est un **polynôme en $A$**. -->
<!---->
<!-- ::: -->
<!---->
<!-- ::: {#prp-polynome} -->
<!---->
<!-- Pour tout polyôme $P,Q \in \mathbb{R}[X]$, toute matrice $A \in \mathcal{M}_{n}(\mathbb{K})$, et tout $\lambda \in \mathbb{K}$, on a  -->
<!---->
<!-- 1. $(P+\lambda Q)(A)= P(A) + \lambda Q(A)$, -->
<!---->
<!-- 2. $(PQ)(A)= P(A)Q(A)$. -->
<!---->
<!-- ::: -->



## Eléments propres d'un endomorphisme {#sec-05-elements-propres}

### Valeurs propres, vecteurs propres, sous espaces propres

::: {#def-valeur-propre}

#### Valeurs propres

Soit $f \in \mathcal{L}(E)$ et $\lambda \in \mathbb{K}$. On dit que $\lambda$
est une **valeur propre** de $f$ s'il existe un vecteur *non nul* v de $E$ tel
que $f(v) = \lambda v$.

:::

::: {#nte-non-null .callout-note}

La *non nullité* de $v$ est
*essentielle* sinon tout scalaire $\lambda \in \mathbb{K}$ serait valeur propre
de $f$ puisque $f(0_{E}) = \lambda \cdot 0_{E}$. La valeur propre $\lambda$,
elle, peut tout à fait être nulle. 

:::

::: {#def-vecteur-propre}

#### Vecteurs propres

Soit $f \in \mathcal{L}(E)$. On dit que $v$ est un **vecteur propre** de $f$
*associé* à la valeur propre $\lambda \in \mathbb{K}$ si 

1. $v \neq 0_{E}$,

2. $f(v) = \lambda v$.

:::

::: {#def-spectre}

#### Spectre

Le **spectre** d'un endomorphisme $f \in \mathcal{L}(E)$ est l'ensemble de ses
valeurs propres. On ne note $\operatorname{Sp}f$.

:::

::: {#def-sous-espace-propre}

#### Sous espaces propres

Soit $f \in \mathcal{L}(E)$ et $\lambda \in \operatorname{Sp}(f)$. Le **sous
espace propre** associé à la valeur propre $\lambda$ est l'ensemble

$$
    E_{\lambda}(f) = \{v \in E,\ f(v) = \lambda v\} = \ker (f- \lambda
\operatorname{Id}_E).
$$

:::

::: {#nte-sous-espace-propre .callout-note}
L'ensemble $E_{\lambda}(f)$ contient le vecteur nul (qui n'est pas un vecteur
propre), mais il
n'est pas *réduit* au vecteur nul (par définition d'une valeur propre), et tout
élement *non nul* de $E_{\lambda}(f)$ est un vecteur propre de $f$. Puisque
c'est un sous espace vectoriel, il contient donc une *infinité* de vecteurs
propres de $f$, associés à la même valeur propre $\lambda$. 

:::

::: {#prp-stabilite}

#### Stabilité 

Si $\lambda \in \mathbb{K}$ est une valeur propre de $f$, alors le sous-espace
propre associé à la valeur propre $\lambda$ est *stable* par $f$ et 
$$
    f_{|E_{\lambda}(f)} = \lambda \operatorname{Id}_{E_{\lambda}(f)}.
$$

:::

Autremenent dit, chacun des sous espace propres de $f$ est stable par $f$, et
$f$ s'y restreint en un multiple de l'identité
; c'est le premier pas en direction de la *réduction* de l'endomorphisme $f$.

::: {#exm-projecteur}

#### Les projecteurs

Soit $p$ le projecteur sur $F$ parallèlement
à $G$ où $F$ et $G$ sont deux sous espaces vectoriels non triviaux
supplémentaires dans $E$. Alors $0$ et $1$ sont valeurs propres de $p$ et 

$$
    \begin{cases}
        E_{0}(p) = \ker (p - 0 \cdot \operatorname{Id}_E) = \ker p = G,\\
        E_{1}(p) = \{v \in E,\ p(v)  = v\} = F.
    \end{cases}
$$

Les scalaires $0$ et $1$ sont bien des valeurs propres de $p$ car $F$ et $G$
sont on triviaux, donc ils contiennent des éléments *non nuls*.

:::

::: {#exm-symetrie}

#### Les symétries

Soit $s$ la symétrie par rapport à $F$
parallèllement à $G$ où à nouveau $F$ et $G$ sont des sous espaces vectoriel
supplémentaires de $E$, non triviaux. Alors $1$ et $-1$ sont deux valeurs
propres de $s$ et 

$$
    \begin{cases}
        E_{1}(s) = \ker (s- \operatorname{Id}_{E}) = F\\
        E_{-1}(s) = \ker (s+ \operatorname{Id}_{E}) = G.
    \end{cases}
$$

:::

::: {#exm-derivation}

La fonction $\operatorname{exp}: x \mapsto e^{x}$ est un vecteur propre de
l'endomorphisme $D: C^{\infty}(\mathbb{R}) \to C^{\infty}(\mathbb{R})$ qui à une fonction $f$ associe
sa dérivée $f'$. En effet, la fonction $\operatorname{exp}$ n'est pas la
fonction nulle, et 

$$
    D(\operatorname{exp}) = \operatorname{exp} = 1 \cdot
\operatorname{exp}.
$$

Plus généralement, si $\lambda \in \mathbb{R}$, la fonction $x \mapsto
\operatorname{exp}(\lambda x)$ est un vecteur propre de la dérivation, associé
à la valeur propre $\lambda$. Donc $\operatorname{Sp}(D) = \mathbb{R}$.

:::

::: {#nte-matrice .callout-note}

#### Le cas des matrices

Quand ces notions sont appliquées à l'endomorphisme $f_A$
canoniquement associé à $A$, on remplace par abus de langage l'endomorphisme
$f_A$ par $A$. Ainsi :

- une valeur propre de $f_{A}$, c'est à dire un scalaire $\lambda \in \mathbb{K}$ pour lequel il existe un vecteur colonne non nul $X \in
\mathcal{M}_{n,1}(\mathbb{K})$ tel que $f_{A}(X) = AX = \lambda X$, s'appelle
simplement une *valeur propre de $A$*,

- un vecteur propre de $f_{A}$, c'est à dire une colonne non nulle $X \in \mathcal{M}_{n,1}(\mathbb{K})$ pour laquelle il existe $\lambda \in \mathbb{K}$ tel que 

$$
    f_A(X) = AX = \lambda X,
$$

s'appelle simplement un *vecteur propre de $A$*.

- le spectre de $f_A$ s'appelle simplement le *spectre de $A$*,

- le sous espace propre $E_{\lambda}(f_{A})$, c'est à dire 

$$
    E_{\lambda}(f_A) =\{X \in \mathcal{M}_{n,1}(\mathbb{K}),\ AX = \lambda
X\} = \ker (A - \lambda \operatorname{I}_{n}),
$$

se note simplement $E_{\lambda}(A)$ et s'appelle le *sous espace propre de
$A$* associé à la valeur propre $\lambda$.

:::

::: {#exm-matrice-A}

Considérons la matrice $A = \begin{pmatrix}
    1&6\\
1&2
\end{pmatrix}$.

On a 

$$
    A \begin{pmatrix}
        -3\\1
    \end{pmatrix} = \begin{pmatrix}
        3\\-1
    \end{pmatrix} = (-1)\cdot \begin{pmatrix}
        -3\\1
    \end{pmatrix}.
$$

De plus, le vecteur $\begin{pmatrix}
    -3\\1
\end{pmatrix}$ est non nul. Donc $\begin{pmatrix}
    -3\\1
\end{pmatrix}$ est un vecteur propre de $A$, associé à la valeur propre $-1$.
De même, le vecteur $\begin{pmatrix}
    2\\1
\end{pmatrix}$ est un vecteur propre de $A$, associé à la valeur propre $4$ car
ce vecteur est non nul et 

$$
    A \begin{pmatrix}
        2\\1
    \end{pmatrix} = \begin{pmatrix}
        8\\4
    \end{pmatrix} = 4 \begin{pmatrix}
        2\\1
    \end{pmatrix}.
$$

Donc $\{-1,4\} \subset \operatorname{Sp}A$.

Calculons maintenant les sous espaces propres associés. Par définition

$$
    E_{4}(A) = \ker (A - 4 \operatorname{I}_{2}).
$$

On a 

$$
    A - 4 \operatorname{I}_{2} = \begin{pmatrix}
        -3&6\\
        1&-2
    \end{pmatrix}.
$$

Soit $X = \begin{pmatrix}
    x\\y
\end{pmatrix}\in \mathcal{M}_{2,1}(\mathbb{R})$. On a donc

$$
\begin{aligned}
    X \in E_{4}(A) &\Longleftrightarrow \begin{cases}
        -3x + 6y = 0\\
x -2y = 0
    \end{cases}\\
& \Longleftrightarrow x=2y\\
& \Longleftrightarrow X  = \begin{pmatrix}
    2y\\y
\end{pmatrix} \in \operatorname{Vect}\begin{pmatrix}
    2\\1
\end{pmatrix}
\end{aligned}
$$

Donc $E_{4}(A) = \operatorname{Vect}\begin{pmatrix}
    2\\1
\end{pmatrix}$.

De même, on obtient $E_{-1}(A) = \operatorname{Vect}\begin{pmatrix}
   -3\\1 
\end{pmatrix}$.

:::

::: {#rem-matrice-A}

On retrouve en particulier le vecteur $\begin{pmatrix}
    2\\1
\end{pmatrix}$, mais également tous les *multiples* de ce vecteur (cf @nte-sous-espace-propre ). 
:::


On continue maintenant à avancer dans la réduction de l'endomorphisme $f$ en
montrant l'aspect *directe* d'une somme de sous espaces propres.

::: {#prp-somme-directe}

#### Somme directe des sous espaces propres

Toute somme de sous espace propres de $f$ associés à des valeurs propres deux à deux distinctes est *directe*.

:::

::: {#cor-liberte}

#### Liberté d'une famille de vecteurs propres

Toute famille de vecteurs associés à des valeurs propres deux à deux distinctes de $f$ est *libre*.

:::

::: {#cor-cardinal-spectre} 

#### Cardinalité maximal du spectre

Si $E$ est dimension finie, tout endormophisme $f$ de $E$ possède au
maximum $\dim E$ valeurs propres distinctes.

:::

::: {#nte-cardinal-spectre .callout-note}

En particulier, toute matrice $A \in \mathcal{M}_{n}(\mathbb{K})$ possède au
plus $n$ valeurs propres distinctes car l'endomorphisme $f_A$ canoniquement
associé à $A$ est un endomorphisme de $\mathcal{M}_{n,1}(\mathbb{K})$, qui est
de dimension $n$.

:::

::: {#exm-matrice-A-sp}

On a vu dans l'@exm-matrice-A que $-1$ et $4$ étaient valeur propre de la matrice $A = \begin{pmatrix}
    1&6\\
1&2
\end{pmatrix}$. Donc $\operatorname{Sp} A =\{-1,4\}$ ; il n'y a pas d'autres
valeurs propres possibles !

:::

::: {#rem-cardinal-spectre}

Si $E$ est de dimension infinie, un endomorphisme peut tout à fait avoir une
infinité de valeurs propres ; un exemple a été vu dans l'@exm-derivation.

:::

### Polynôme caractéristique

Une question demeure ; comment trouver les valeurs propres d'un endomorphisme ?
En dimension finie, une réponse est apportée par le *polynôme caractéristique*.
Elle n'est pas miraculeuse car elle revient à chercher les racines d'un
polynôme de degré $\dim E$ ; au dela du degré $4$ inclu, il n'existe
malheureusement plus de formule par radicaux permettant de calculer
systématiquement les racines d'un polynôme^[C'est un théorème du au
mathématicien norvégien Niels Henrik Abel, en 1824]. 


::: {#def-polynome-caracteristique-matrice}

#### Polynôme caractéristique

Soit $A \in \mathcal{M}_{n}(\mathbb{K})$. Le **polynôme caractéristique** de
$A$ est le polynôme

$$
    P_{A}(X) = \det(X \operatorname{I}_{n}-A).
$$

:::

::: {#exm-polynome-caracteristique-1}

Le polynôme caractéristique de la matrice $A = \begin{pmatrix}
    1&6\\1&2
\end{pmatrix}$ est 

$$
P_{A}(X) = \left|\begin{matrix}X-1&-6\\ -1 & X-2\end{matrix}\right| = X^{2} - 3X -4
$$

On remarque que le polynôme caractéristique de $A$ est :

- unitaire,
- de degré $2$.

:::

L'exemple précédent se généralise en fait à toute matrice $A \in
\mathcal{M}_{n}(\mathbb{K})$ : 

::: {#prp-degre}

Le polynôme caractéristique d'une matrice $A \in \mathcal{M}_{n}(\mathbb{K})$
est un polynôme *unitaire*, de degré $n$.

:::

::: {#tip-verification .callout-tip}

Ce résultat permet de vérifier que ses calculs ne sont pas grossièrement
faux !

:::



Le lien avec les valeurs propres de $A$ s'effectue via la caractérisation de
l'inversibilité à l'aide du déterminant, et de la proposition suivante :

::: {#prp-caracterisation-rang}

#### Caractérisation à l'aide du rang

Soit $A \in \mathcal{M}_{n}(\mathbb{K})$ et $\lambda\in\mathbb{K}$. Alors $\lambda$ est valeur
propre de $A$ ssi $A-\lambda \operatorname{I}_n$ n'est pas inversible i.e.
n'est de rang maximal. Dans ce cas, on a  

$$
\dim(E_{\lambda}(A))=n - \mathrm{rg}(A-\lambda \operatorname{I}_{n}).
$$

:::

::: {#cor-racine}

#### Spectre et racines du polynôme caractéristique

Les valeurs propres d'une matrice $A \in \mathcal{M}_{n}(\mathbb{K})$ sont
exactement les racines de son polynôme caractéristique.

:::

::: {#exm-matrice-A}

Puisque $X^{2} - 3X -4 = (X+1)(X-4)$, les valeurs propres de $A =
\begin{pmatrix} 1&6\\1&2 \end{pmatrix}$ sont $-1$ et $4$.

:::

::: {#nte-spectre-corps .callout-note} 

Puisque les racines d'un polynôme dépendent du corps considéré ($\mathbb{R}$ ou
$\mathbb{C}$), le spectre d'un endomorphisme (ou d'une matrice) dépend du
*corps* $\mathbb{K}$ sur lequel on se place. Par exemple, la matrice $B =
\begin{pmatrix} 0&1\\ -1&0 \end{pmatrix}$ n'a pas de valeur propre réelle, mais
vue comme elément de $\mathcal{M}_{2}(\mathbb{C})$, elle a deux valeurs propres
complexes (conjuguées) : 

$$
    P_{B}(X) = X^{2}+1 =(X-i)(X+i).
$$

:::
Le polynôme caractéristique hérite du déterminant l'invariance par similitude,
ce qui permet de l'étendre aux endomorphismes (en dimension finie).

::: {#prp-invariant-similitude}

#### Invariance par similitude

Deux matrices semblables ont même polynôme caractéristique.

:::

::: {#def-polynome-caractéristique-endomorphisme}

#### Polynôme caractéristique d'un endomorphisme

Le **polynôme caractéristique** d'un *endomorphisme* $f \in \mathcal{L}(E)$ est
le polynôme caractéristique de n'importe quelle matrice représentant $f$ dans
une base $\mathcal{B}$ de $E$. On le note $P_{f}(X)$.

:::

::: {#prp-racine-endo}

Les valeurs propres d'un endomorphisme $f \in \mathcal{L}(E)$ sont exactement les
racines de son polynôme caractéristique.

:::

::: {#rem-lien-matrice}

En particulier : 

- les valeurs propres d'un endomorphisme $f$ coincident avec les valeurs
  propres de n'importe quelle *matrice* représentant $f$.
- pour tout $A \in \mathcal{M}_{n}(\mathbb{K})$, $P_{f_A}(X) = P_{A}(X)$,

:::

::: {#exm-polynome-caractéristique-projecteur}

#### Polynôme caractéristique d'un projecteur

On suppose que $F$ et $G$ sont deux espaces supplémentaires non triviaux de
$E$. Si $p$ est le projecteur sur $F$ parallèlement à $G$, la matrice de $p$
dans une base adaptée à la somme directe est 

$$
M = \begin{pmatrix}
    \boldsymbol{\operatorname{I_r}}&\boldsymbol{0}\\
\boldsymbol{0}&\boldsymbol{0}
\end{pmatrix}
$$

avec $r = \dim F$. Le polynôme caractéristique de $p$ est dont celui de $M$
i.e. (déterminant diagonal)

$$
    P_{p}(X)=(X-1)^{r}X^{n-r}=(X-1)^{\dim F}X^{\dim G}.
$$

Les seules valeurs propres d'un projecteur sont donc $1$ et
$0$.

:::



::: {#def-multiplicite}

#### Multiplicite algebrique d'une valeur propre

Si $\lambda\in \operatorname{Sp}f$, l'**ordre de multiplicité** de $\lambda$
est l'ordre de multiplicité de $\lambda$ en tant que racine de $P_{f}(X)$ i.e.
le plus grand entier $k\in\mathbb{N}^*$ tel que $(X-\lambda)^k$ divise $P_{f}(X)$. On
le note $m(\lambda)$.

:::

::: {#exm-multiplicite-projecteur}

Si $p$ est le projecteur sur $F$ parallèlement à $G$, alors $0$ est valeur
propre d'ordre $\dim G$, et $1$ est valeur propre d'ordre $\dim F$. 

:::

::: {#exm-multiplicite-matrice}

Les valeurs propres de $A = \begin{pmatrix}
    1&6\\1&2
\end{pmatrix}$ sont $-1$ et $4$, toute d'eux d'ordre $1$. On dit que ce sont
des valeurs propres **simples**. 

:::

::: {#exm-matrice-3}

Spectre de la matrice $A = \begin{pmatrix}
        -1 & 3 & -3 \\
        -3 & 5 & -3 \\
        -3 & 3 & -1
      \end{pmatrix}.$

::: {.details}

Par définition, 

$P_{A}(X) = \left|\begin{matrix}
        X+1 & -3 & 3 \\
        3 & X-5 & 3 \\
        3 & -3 & X+1
\end{matrix}\right|$

Ici, il serai *catastrophique* de développer ce déterminant sans faire
apparaitre préalablement des $0$ : le polynôme (que l'on cherche à
*factoriser*) apparaitrait alors sous forme développée, et les nombreuses
manipulations de signes apporteraient inévitablement des erreurs de calcul. On
effectue donc des opérations élémentaires sur les lignes et les colones :

$$
\begin{aligned}
    P_{A}(X)&= \left|\begin{matrix}
        X+1 & -3 & 3 \\
        3 & X-5 & 3 \\
        3 & -3 & X+1
\end{matrix}\right| \quad C_{2}\gets C_{2}+C_{3}\\
&= \left|\begin{matrix}
        X+1 & 0 & 3 \\
        3 & X-2& 3 \\
        3 & X-2 & X+1
\end{matrix}\right|
\end{aligned}
$$

On voit ici tout l'intérêt de faire des opérations sur les lignes et les
colonnes : on vient de trouver une racine de $P_A$ dans la deuxième colonne !

$$
\begin{aligned}
    P_{A}(X) &= (X-2)\left|\begin{matrix}
        X+1 & 0 & 3 \\
        3 & 1& 3 \\
        3 & 1 & X+1
\end{matrix}\right| \quad L_{2} \gets L_{2}-L_{3}\\
&= (X-2)\left|\begin{matrix}
        X+1 & 0 & 3 \\
        0 & 0& 2-X \\
        3 & 1 & X+1
\end{matrix}\right|
\end{aligned}
$$

En développant par rapport à la deuxième ligne, on obtient donc ^[Ce polynôme
est directement factorisé : c'est le cas le plus favorable. Quand il reste un
facteur de degré $2$, on peut toujours utiliser les formules donnant les
racines d'un polynôme de degré $2$, ou chercher des racines simples (à vue).]

$$
    P_{A}(X)= (X-2)^{2}(X+1).
$$

Les valeurs propres de $A$ sont $2$, d'ordre $2$ (on dit que $2$ est une valeur
propre *double*), et $1$ d'ordre $1$ (valeur propre *simple*).

:::

:::

Pour les matrices triangulaires, la situation est particulièrement simple :

::: {#prp-matrice-triangulaire}

#### Cas des matrices triangulaires

Si 
$$
T = \begin{pmatrix}
\lambda_{1}& *& \ldots&*\\
0 &\ddots&\ddots&\vdots\\
\vdots&\ddots&\ddots&*\\
0&\ldots&0&\lambda_{n}
\end{pmatrix} \in \mathcal{M}_{n}(\mathbb{K}),
$$

alors les valeurs propres de $T$ sont $\lambda_{1},\dots,\lambda_{n}$.

:::

::: {#tip-triangulaire .callout-tip}

Pour une matrice *triangulaire*, on lit les valeurs propres, ainsi que leur
ordre de multiplicité, sur la diagonale.

:::

::: {#exm-triangulaire}

Les valeurs propres de la matrice 

$$
    \begin{pmatrix}
        1&-1&2\\
        0&3&5\\
        0&0&3
    \end{pmatrix}
$$

sont $1$ d'ordre $1$ et $3$ d'ordre $2$. En particulier, son polynôme
caractéristique est $(X-1)(X-3)^{2}$.

:::

<!-- encadrement multiplicité géom et alg. -->
<!---->
<!-- Cas particulier des valeurs propres simples. -->
<!---->
<!---->
<!-- Polynôme en $A$ est spectre.  -->
<!---->
<!-- ## Endomorphismes et matrices diagonalisables {#sec-05-diagonalisation} -->
<!---->
<!-- ## Trigonalisation {#sec-05-trigonalisation}  -->
<!---->
<!-- ## Application de la réduction {#sec-05-applications} -->


\newpage

## Exercices {.unnumbered}

{{< include ./td/05.md >}}

