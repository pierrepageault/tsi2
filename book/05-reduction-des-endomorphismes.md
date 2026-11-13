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
diagonalisables, en un sens, généraliseront cette situation. 

Lorsqu'une telle décomposition s'avère impossible, on peut à défaut chercher
une base dans laquelle la matrice de l'endomorphisme est la plus simple
possible. 

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
connaître), on peut utiliser un moyen mnémotechnique "chronologique" :

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
endomorphisme, dans des bases *différentes*. Elles hériteront de toutes les
propriétés communes à l'*endomorphisme* sous-jacent
(rang,trace,déterminant,...).

:::

::: {#prp-relation-equivalence}

La relation d'équivalence est 

1. *réflexive* ; $A$ est semblable à elle même,

2. *symétrique* ; si $A$ est semblable à $B$, alors $B$ est semblable à $A$ et
   réciproquement,

3. *transitive* ; si $A$ est semblable à $B$ est si $B$ est semblable à $C$,
   alors $A$ est semblable à $C$.

:::

Etant donnée une matrice $A \in \mathcal{M}_{n}(\mathbb{K})$, on peut
réciproquement se poser la question suivante : existe-t-il un endomorphisme
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
élément *non nul* de $E_{\lambda}(f)$ est un vecteur propre de $f$. Puisque
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

Autrement dit, chacun des sous-espaces propres de $f$ est stable par $f$, et
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
sont non triviaux, donc ils contiennent des éléments *non nuls*.

:::

::: {#exm-symetrie}

#### Les symétries

Soit $s$ la symétrie par rapport à $F$
parallèlement à $G$ où à nouveau $F$ et $G$ sont des sous-espaces vectoriels
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

#### Cardinalité maximale du spectre

Si $E$ est dimension finie, tout endomorphisme $f$ de $E$ possède au
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
vue comme élément de $\mathcal{M}_{2}(\mathbb{C})$, elle a deux valeurs propres
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

- les valeurs propres d'un endomorphisme $f$ coïncident avec les valeurs
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

Ici, il serait *catastrophique* de développer ce déterminant sans faire
apparaitre préalablement des $0$ : le polynôme (que l'on cherche à
*factoriser*) apparaitrait alors sous forme développée, et les nombreuses
manipulations de signes apporteraient inévitablement des erreurs de calcul. On
effectue donc des opérations élémentaires sur les lignes et les colonnes :

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

La multiplicité d'une valeur propre est de nature *algébrique* -- elle est
définie à l'aide d'un polynôme. On peut aussi lui associer une multiplicité
*géométrique* égale à la dimension du sous-espace propre associé. La
proposition suivante stipule que la multiplicité géométrique est toujours
inférieure à la multiplicité algébrique. Le cas d'égalité sera étudié en détail
dans la section suivante.

::: {#prp-multiplicites-alg-geom}

Soit $f \in \mathcal{L}(E)$ et $\lambda \in \operatorname{Sp}f$. Alors 
$$
    1 \leqslant \dim E_{\lambda}(f) \leqslant m(\lambda).
$$

:::

::: {#exm-valeur-propre-simple}

#### Cas des valeurs propres simples

Si $\lambda$ est une valeur propre simple de $f$, alors $E_{\lambda}(f)$ est
une *droite vectorielle*.

:::




## Endomorphismes et matrices diagonalisables {#sec-05-diagonalisation}

### Le cas des endomorphismes

::: {#def-endomorphisme-diag}

#### Endomorphisme diagonalisable

Un endomorphisme $f \in \mathcal{L}(E)$ est **diagonalisable** s'il existe une
base $\mathcal{B}$ de $E$ dans laquelle la matrice de $f$ est diagonale. Une
telle base s'appelle alors une **base de diagonalisation** de $f$.

:::

::: {#nte-endo-diag .callout-note}

Par définition de la matrice d'un endomorphisme dans une base, la matrice de
$f$ dans la base $\mathcal{B}$ est diagonale ssi $\mathcal{B}$ est constituée
de *vecteurs propres* de $f$. 

:::

::: {#exm-projecteurs}

#### Projecteurs et symétrie

Si $p$ est le projecteur sur $F$ parallèlement à $G$, la matrice de $p$ dans
toute base adaptée à la somme directe $E= F \oplus G$ est diagonale. Un
projecteur est donc par définition diagonalisable. De même, toute symétrie est
diagonalisable.

:::

On énonce maintenant les deux résultats principaux concernant la
diagonalisation des endomorphismes ; une condition nécessaire et une condition
nécessaire et suffisante. C'est pour énoncer cette dernière que nous avons
défini la somme d'un nombre quelconque de sous espaces vectoriels. 

::: {#thm-cs}

#### Condition suffisante de diagonalisation

Si $f \in \mathcal{L}(E)$ possède $\dim E$ valeurs propres *distinctes*, alors
$f$ est diagonalisable.

:::

::: {#thm-cns}

#### Condition nécessaire et suffisante de diagonalisation

Soit $f \in \mathcal{L}(E)$. Les propriétés suivantes sont équivalentes :

1. $f$ est diagonalisable,

2. le polynôme caractéristique de $f$ est scindé sur $\mathbb{K}$, et 
$$
    \forall \lambda \in \operatorname{Sp}(f),\ \dim E_{\lambda}(f) =
    m(\lambda),
$$

3. l'espace $E$ est la somme directe des sous espaces propres de $f$ : 
$$
    E = \bigoplus_{\lambda \in \operatorname{Sp}(f)} E_{\lambda}(f).
$$

:::

::: {#rem-philo}

En substance, le deuxième point signifie que $f$ possède *autant de valeurs
propres que possible* (polynôme caractéristique scindé), et que ses sous espaces
propres sont de *dimension maximale*.

:::

::: {#nte-base-diag .callout-note}

Concrètement, on obtient une base de diagonalisation de $f$ en *mettant bout à
bout* des bases de chacun des sous espaces propres de $f$ i.e. en considérant
une base *adaptée* à la somme directe $E = \bigoplus_{\lambda \in
\operatorname{Sp}(f)} E_{\lambda}(f)$.

:::

::: {#exm-proj-sym}

#### Projecteurs et symétries

Si $p$ est un projecteur de $E$, l'égalité

$$
    E = \ker p \oplus \operatorname{Im}p
$$

se lit dorénavant

$$
    E = E_{0}(p)\oplus E_{1}(p),
$$

et traduit le fait qu'un projecteur est diagonalisable !

De même, si $s$ est une symétrie de $E$, l'égalité un peu mystérieuse

$$
    E = \ker (s- \operatorname{Id}_{E})\oplus \ker(s+\operatorname{Id}_{E})
$$

se lit simplement

$$
    E = E_{1}(s)\oplus E_{-1}(s),
$$

et traduit la diagonalisabilité de $s$.

:::



### Le cas des matrices

On commence par donner la définition d'une matrice diagonalisable sans faire
référence à l'endomorphisme canoniquement associé. On effectue ensuite le lien
entre matrices et endomorphismes (via la formule de changement de base.)

::: {#def-matrice-diag}

#### Matrice diagonalisable

Une matrice $A \in \mathcal{M}_{n}(\mathbb{K})$ est **diagonalisable** si $A$ est
semblable à une matrice diagonale.

:::

::: {#exm-matrice-diag}

Une matrice diagonale est diagonalisable ; elle est semblable à elle-même !

:::



::: {#prp-lien-endomorphisme}

#### Lien matrices & endomorphismes

Soit $f \in \mathcal{L}(E)$ et $\mathcal{B}$ une base de $E$. Alors $f$ est
diagonalisable ssi $\mathcal{M}_{\mathcal{B}}(f)$ est diagonalisable.  

:::

::: {#rem-matrice-diag}

En particulier, une matrice $A$ est diagonalisable ssi l'endomorphisme
$f_{A}$ canoniquement associé à $A$ est diagonalisable (cette équivalence
aurait pu servir de définition à la diagonalisabilité de $A$).

:::

On déduit de la proposition précédente les versions matricielles des 
@thm-cs et @thm-cns :

::: {#thm-cs-A}

#### Condition suffisante de diagonalisation

Si une matrice $A \in \mathcal{M}_{n}(\mathbb{K})$ possède $n$ valeurs propres
distinctes dans $\mathbb{K}$, alors elle est diagonalisable.

:::

::: {#thm-cns-A}

#### Condition nécessaire et suffisante de diagonalisation

Soit $A \in \mathcal{M}_{n}(\mathbb{K})$. Les propositions suivantes sont
équivalentes :

1. $A$ est diagonalisable, 

2. le polynôme caractéristique de $A$ est scindé sur $\mathbb{K}$, et 

$$
\forall \lambda \in \operatorname{Sp}(A),\ \dim E_{\lambda}(A)=m(\lambda),    
$$

3. on a 

$$
\mathcal{M}_{n,1}(\mathbb{K})= \bigoplus_{\lambda \in \mathbb{K}}
E_{\lambda}(A).    
$$

:::

::: {#nte-base-diag .callout-note}

On obtient une base de diagonalisation $\mathcal{B}=(u_{1},\dots,u_{n})$ de
$f_{A}$ en mettant bout à bout des bases des sous espaces propres de $A$. En
notant $P$ la matrice de passage de la base canonique de
$\mathcal{M}_{n,1}(\mathbb{K})$ à $\mathcal{B}$ (c'est à dire la matrice dont
les colonnes sont $u_1,\dots,u_{n}$), la formule de changement de
base donne alors :

$$
    P^{-1}AP = P^{-1}\mathcal{M}_{\mathcal{B}_{\text{can}}}(f_{A})P = \mathcal{M}_{\mathcal{B}}(f)= 
 \begin{array}{cccc}
  Au_{1} & \dots & Au_{n} & \\
  \left( \begin{array}{c} \lambda_{1} \\ \vdots \\ 0 \end{array} \right. &
  \begin{array}{c} \ldots \\ \ddots \\ \ldots \end{array} &
  \left. \begin{array}{c} 0 \\ \vdots \\ \lambda_{n} \end{array} \right) &
  \begin{array}{c} u_{1} \\ \vdots \\ u_{n} \end{array}
\end{array}
$$

On dit que la matrice $P$ **diagonalise** $A$.

:::

::: {#exm-diagonalisation-A}

#### Diagonalisation de la matrice $A = \begin{pmatrix}1&6\\1&2\end{pmatrix}$

Les valeurs propres de $A$ sont $4$ et $-1$ ; la matrice $A$ est diagonalisable
par condition *suffisante* (deux valeurs propres distinctes). De plus
$E_{-1}(A)= \operatorname{Vect}(U)$ avec $U = \begin{pmatrix}
    2\\1
\end{pmatrix}$ et $E_{4}(A)=\operatorname{Vect}(V)$ avec $V=\begin{pmatrix}
    2\\1
\end{pmatrix}$. Une base de diagonalisation de $A$ est $\mathcal{B}=(U,V)$. Ainsi, en posant 

$$
P = \begin{array}{ccc}
    U&V&\\
    \left(\begin{array}{c}
       -3\\1 
    \end{array}\right. &
    \left.\begin{array}{c}
       2\\1 
    \end{array}\right) &
    \begin{array}{c}
       e_1\\e_2 
    \end{array}
\end{array}
$$

on a 

$$
    P^{-1}AP = \begin{array}{ccc}
    AU&AV&\\
    \left(\begin{array}{c}
       -1\\0 
    \end{array}\right. &
    \left.\begin{array}{c}
       0\\4 
    \end{array}\right) &
    \begin{array}{c}
       U\\V 
    \end{array}
\end{array}
$$

:::

::: {#nte-diagonaliser-A .callout-note}

*Diagonaliser* une matrice $A$, c'est trouver un couple $(P,D)$ tel que
$P^{-1}AP = D$.

:::

::: {#wrn-cs .callout-warning}

La condition suffisante n'est pas une condition nécessaire ! Pa exemple, la
matrice $I_{n}$ est diagonalisable car diagonale, bien qu'elle ne possède pas
$n$ valeurs propres distinctes (bien au contraire !).

:::

## Trigonalisation {#sec-05-trigonalisation}

Lorsqu'un endomorphisme $f$ n'est pas diagonalisable, on peut tout de même
essayer de trouver une base dans laquelle la matrice de $f$ est simple
, par exemple triangulaire. Lorsque cela est possible, on dira que l'
endomorphisme est *trigonalisable*. Cette notion est moins forte que la
diagonalisabilité, mais elle sera plus souvent satisfaite ! Elle permet
notamment de relier la trace et le déterminant d'une matrice à son spectre
*complexe*, ce qui permet souvent de simplifier les calculs. 

### Endomorphismes trigonalisables

::: {#def-endo-trig}

#### Endomorphismes trigonalisables

Un endomorphisme $f \in \mathcal{L}(E)$ est dit **trigonalisable** s'il existe
une base $\mathcal{B}$ de $E$ dans laquelle la matrice de $f$ est triangulaire
(supérieure). Une telle base s'appelle une **base de trigonalisation** de $f$.

:::

::: {#prp-base-trig}

Une base $\mathcal{B}=(u_1,\dots,u_{n})$ est une base de trigonalisation de $f
\in \mathcal{L}(E)$ ssi 

$$
    \forall k \in \{1,\dots,n\},\ f(u_{k})\in
    \operatorname{Vect}(u_{1},\dots,u_{k}).
$$

:::

::: {#thm-cns-trig}

#### Condition nécessaire et suffisante de trigonalisation

Un endomorphisme $f \in \mathcal{L}(E)$ est trigonalisable ssi son polynôme
caractéristique est scindé sur $\mathbb{K}$.

:::

### Matrices trigonalisables

::: {#def-matrice-trig}

#### Matrices trigonalisables

Une matrice $A \in \mathcal{M}_{n}(\mathbb{K})$ est trigonalisable si elle est
semblable à une matrice triangulaire. 

:::

::: {#prp-lien-matrice-endo-trig}

Soit $f \in \mathcal{L}(E)$ et $\mathcal{B}$ une base de $E$. Alors $f$ est
trigonalisable ssi $\mathcal{M}_{\mathcal{B}}(f)$ est trigonalisable. 

:::

::: {#rem-A-trig}

En particulier, une matrice $A$ est trigonalisable ssi l'endomorphisme $f_{A}$
canoniquement associé à $A$ est trigonalisable.

:::

::: {#thm-cns-trig-A}

#### Condition nécessaire et suffisante de trigonalisation

Une matrice $A \in \mathcal{M}_{n}(\mathbb{K})$ est trigonalisable ssi son
polynôme caractéristique est scindé sur $K$

:::

::: {#cor-trig-C}

Toute matrice carrée est trigonalisable sur $\mathbb{C}$.

:::

::: {#cor-trace-det}

#### Trace, déterminant et spectre

Soit $A \in \mathcal{M}_{n}(\mathbb{K})$. On note $\lambda_{1},\dots,\lambda_{n}$ les valeurs propres, éventuellement complexes, de $A$. Alors

$$
    \begin{cases}
        \operatorname{Tr}A = \sum_{i=1}^{n}\lambda_{i},\\
        \det A = \prod_{i=1}^{n}\lambda_i.
    \end{cases}
$$

:::

::: {#tip-derniere .callout-tip}

Ce résultat est très efficace pour trouver la dernière valeur propre d'une
matrice ; il suffit de calculer sa trace ! Il permet aussi de vérifier son
spectre.

:::

## Applications de la réduction {#sec-05-applications}

### Polynômes de matrices

::: {#def-polynome}

#### Polynômes de matrices 

Pour tout polynôme $P= \sum_{k=0}^{n}a_{k}X^{k}\in \mathbb{K}[X]$, et toute matrice $A \in
\mathcal{M}_{n}(\mathbb{K})$, on pose 

$$
    P(A)= \sum_{k=0}^{n} a_{k}A^{k}
$$

où, par convention, $A^{0}=\operatorname{I}_{n}$. On dit que la matrice $P(A)$
est un **polynôme en $A$**.

:::

::: {#prp-polynome}

Pour tout polyôme $P,Q \in \mathbb{R}[X]$, pour toute matrice $A \in \mathcal{M}_{n}(\mathbb{K})$, et pour tout $\lambda \in \mathbb{K}$, on a 

1. $(P+\lambda Q)(A)= P(A) + \lambda Q(A)$,

2. $(PQ)(A)= P(A)Q(A)$.

:::

::: {#def-annulateur}

#### Polynôme annulateur

On dit que $P \in \mathbb{K}[X]$ est un **polynome annulateur** de $A \in
\mathcal{M}_{n}(\mathbb{K})$ si $P(A)=0_{\mathcal{M}_{n}(\mathbb{K})}$.

:::




::: {#prp-localisation-spectre}

#### Spectre et polynôme annulateur

Si $P$ est un polynôme annulateur de $A$, alors les valeurs propres de $A$ sont
incluses dans les racines de $P$.

:::

::: {#rem-inclusion}

Le résultat précédent fournit seulement une *inclusion* i.e. des *candidats*
pour les valeurs propres de $A$ ; toutes les racines de $P$ ne sont pas
nécessairement valeurs propres de $A$.

:::

::: {#exm-projeteur}

Si $A$ est la matrice d'un projecteur $p$, alors $A^{2}-A=0$ donc $X^{2}-X =
X(X-1)$ est un polynôme annulateur de $A$. On retrouve le fait que les valeurs
propres d'un projecteur sont incluses dans $\{0,1\}$. Ce n'est pas toujours une égalité (par exemple si
$p$ est le projecteur nul).

:::


::: {#exm-nilpotente}

#### Matrices nilpotentes

S'il existe $k \in \mathbb{N}^{*}$ tel que $A^{k} = 0$, alors la seule valeur
propre possible de $A$ est $0$ (une telle matrice est dite *nilpotente*).

:::

::: {#exm-unipotente}

#### Matrice unipotente

S'il existe $k \in \mathbb{N}^{*}$ tel que $A^{k}=\operatorname{I}_{n}$, les
valeurs propres de $A$ sont parmi les racines $k$-ème de l'unité. Une telle
matrice est dite *unipotente*. 

Par exemple, une matrice de symétrie est
unipotente car $A^{2} = \operatorname{I}_{n}$ ; on retrouve le fait que les
valeurs propres d'une symétries sont incluses dans $\{-1,1\}$.

:::

::: {#nte-division-euclidienne .callout-note}

#### Rappel : division euclidienne

Pour tout $P \in \mathbb{K}[X]$, et pour tout $S \in \mathbb{K}[X]\{0\}$, il
existe un unique couple $(Q,R)\in \mathbb{K}[X]^{2}$ tel que 

$$
    \begin{cases}
        P = QS +R,\\
        \deg R < \deg S.
    \end{cases}
$$

:::

::: {#rem-div-euc}

On utilise typiquement ce résultat en divisant $X^{n}$ par un *polynôme
annulateur* de $A$, de petit degré (typiquement $2$). On obtient alors une
expression de $A^{n}$ comme combinaison linéaire des premières puissances de
$A$ (cf TD). 

:::



### Puissances de matrices

On rencontre fréquemment dans les applications des suites géométriques
*matricielle*, qui conduisent à calculer les puissances successives d'une
matrice donnée. Ce calcul est immédiat pour une matrice diagonale, et très
simple pour une matrice *diagonalisable*. C'est une première application très
importante de la diagonalisation.

::: {#prp-puissance-diag}

#### Puissance d'une matrice diagonale 

Si $D=\mathrm{diag}(\lambda_1,\dots,\lambda_n)$ alors $D^k = \mathrm{diag}(\lambda_1^k,\dots,\lambda_n^k)$.

:::

Associé au résultat suivant, il permet de calculer très facilement les
puissances successives d'une matrice diagonalisable. 

::: {#prp-puissance-semblable}

#### Puissances de matrices semblables

Pour tout $A\in\mathcal{M}_n(\mathbb{K})$, $P\in GL_n(\mathbb{K})$ et $k\in\mathbb{N}^*$, on a 
\[
(P^{-1}AP)^k = P^{-1}A^kP.
\]

:::

::: {#prp-suite-geometrique-matricielle}

Si $(X_k)_{k\in\mathbb{N}}$ est une suite de $\mathcal{M}_{n,1}(\mathbb{K})$ telle que $X_{k+1}=AX_k$ pour tout $k\in\mathbb{N}$, avec $A\in\mathcal{M}_n(\mathbb{K})$, alors $X_k = A^kX_0$.

:::

::: {#nte-cas-diag .callout-note}

#### Cas d'une matrice diagonalisable

Si $P^{-1}AP=D$, on a alors 

$$
  X_{n}=PD^{n}P^{-1}X_{0}.
$$

Le calcul de $X_{n}$ est immédiat (complexité linéaire versus complexité cubique).

:::

### Suites récurrentes linéaires d'ordre $2$ à coefficients constantes

On donne dans cette sous section un exemple d'application des suites
géométriques matricielles, très fréquent en pratique : les suites récurrentes
linéaires d'ordre $2$ à coefficients constant.

::: {#thm-complexe}

### Cas complexe

Soient $a,b \in \mathbb{C}$. L'ensemble $\mathcal{F}$ des suites $(u_{n})_{n
\in \mathbb{N}} \in \mathbb{C}^{\mathbb{N}}$ vérifiant la relation de récurrence

$$
    \forall n \in \mathbb{N},\ u_{n+2} + au_{n+1} + bu_{n}=0
$$

et un $\mathbb{C}$-espace vectoriel de dimension $2$. 

De plus, si $b \neq 0$, en notant $(e)$ l'*équation caractéristique*

$$
    X^{2}+aX+b = 0
$$

alors :

1. si $(e)$ possède deux racines distinctes $\lambda_{1},\lambda_{2}\in \mathbb{C}$, on a 
   $$
    \mathcal{F} = \operatorname{Vect}(\lambda_{1}^{n},\lambda_{2}^{n}),
   $$
2. si $(e)$ possède une racine double $\lambda \in \mathbb{C}$, on a 
$$
    \mathcal{F} = \operatorname{Vect}(\lambda^{n},n \lambda^{n}).
$$
:::

::: {#nte-ci .callout-note}

Concrètement, dans le premier cas, il existe deux constantes $\alpha,\beta \in
\mathbb{C}$ telles que 

$$
    \forall n \in \mathbb{N},\ u_{n} = \alpha \lambda_{1}^{n}+ \beta
\lambda_{2}^{n}.
$$

Les constantes $\alpha$ et $\beta$ sont déterminées à l'aide des *conditions initiales* $u_{0}$ et $u_{1}$.

Le deuxième cas est similaire.

:::

Dans le cas réel (le plus fréquent en pratique), on raffine le résultat précédent en distinguant un troisième cas. 

::: {#thm-reel}

#### Cas réel

Soient $a,b \in \mathbb{R}$. L'ensemble $\mathcal{G}$ des suites $(u_{n})_{n
\in \mathbb{N}}\in \mathbb{R}^{\mathbb{N}}$ vérifiant la relation de récurrence 

$$
    \forall n \in \mathbb{N},\ u_{n+2} + au_{n+1}+ bu_{n}=0
$$

est un $\mathbb{R}$-espace vectoriel de dimension $2$. 

De plus, si $b \neq 0$, en notant $(e)$ l'*équation caractéristique 

$$
    X^{2}+aX+b=0,
$$

alors :

1. si $(e)$ possède deux racines réelles distinctes $\lambda_{1}$ et $\lambda_{2}$, on a 

$$
    \mathcal{G} = \operatorname{Vect}(\lambda_{1}^{n},\lambda_{2}^{n}),
$$

2. si $(e)$ possède une racine réelle double $\lambda$, on a 

$$
    \mathcal{G} = \operatorname{Vect}(\lambda^{n},n \lambda^{n}),
$$

3. si $(e)$ possède deux racines complexes conjuguées $\lambda = \rho e^{i
   \theta}$ et $\bar{\lambda} = \rho e^{-i \theta}$, alors

$$
    \mathcal{G} = \operatorname{Vect}(\rho^{n} \cos(n \theta),\rho^{n}
\sin(n \theta)).
$$

:::

::: {#exm-reel}

Déterminer l'expression du terme général de la suite $(u_{n})_{n \in
\mathbb{N}}$ définie par $u_{0} = 1$, $u_{1}=0$ et 

$$
    \forall n \in \mathbb{N},\ u_{n+2} = -u_{n+1}-u_{n}.
$$

::: {.details}

L'équation caractéristique de cette suite récurrente linéaire est 

$$
    X^{2}+X+1.
$$

Elle possède deux racines complexes conjuguées qui sont $j=e^{2i\pi/3}$ et
$\bar{j}$. Il existe donc $\alpha,\beta\in \mathbb{R}$ tels que 

$$
    \forall n \in \mathbb{N},\ u_{n} = \alpha \cos(2 n\pi/3) + \beta
\sin(2n \pi/3).
$$

Les conditions initiales donnent 

$$
    \begin{cases}
        \alpha = 1,\\
        -\frac{1}{2}\alpha + \beta \frac{\sqrt{3}}{2} = 0
    \end{cases}
$$

i.e.

$$
    \begin{cases}
        \alpha=1,\\
        \beta = \frac{1}{\sqrt{3}}
    \end{cases}
$$

donc

$$
    \forall n \in \mathbb{N},\ u_{n} = \cos(2 n \pi/3) +
\frac{1}{\sqrt{3}}\sin(2 n\pi/3 ).
$$
:::

:::

::: {#nte-dem .callout-note}

La technique utilisée dans la démonstration (mise sous forme matricielle et
réduction) permet d'étudier des suites récurrentes linéaires d'ordre
quelconque. Des exemples seront vus en TD.

:::



\newpage

## Exercices {.unnumbered}

{{< include ./td/05.md >}}

