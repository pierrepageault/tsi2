# Réduction des endomorphismes

Dans ce chapitre, $E$ désigne un $\mathbb{K}$-espace vectoriel de dimension
finie.

## Introduction {.unnumbered}

## Rappels d'algèbre linéaire

::: {#def-matrice}

#### Matrice dans une base

Soit $\mathcal{B}=(e_{1},\dots,e_{n})$ une base de $E$ et $f \in \mathcal{L}(E)$. La **matrice de $f$ dans la base $\mathcal{B}$** est la matrice dont les colonnes sont constituées de *coordonnées* des images $f(e_{1}),\dots,f(e_{n}))$ dans la base $\mathcal{B}$.


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

Soit $\mathcal{B}=(e_1,\dots,e_n)$ et $\mathcal{B}'=(\varepsilon_1,\dots,\varepsilon_n)$ deux bases de $E$. La **matrice de passage** de $\mathcal{B}$ à $\mathcal{B}'$ est la matrice $P_{\mathcal{B}\to \mathcal{B}'}$ dont les colonnes sont constituées des coordonnées des *nouveaux* vecteurs $(\varepsilon_1',\dots,\varepsilon_n')$ dans l'*ancienne* base $(e_1,\dots,e_n)$.

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

Matrice de passage : coordonnées des *nouveaux* dans l'*ancienne*.

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
l'*ancienne* fois $P$ où $P$ est la matrice de passage de l'*ancienne* à la
*nouvelle*.

:::

La relation apparaissant entre les matrices $\mathcal{M}_{\mathcal{B}}(f)$ et
$\mathcal{M}_{\mathcal{B}'}(f)$ justifie la définition suivante :

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

Etant donnée une matrice $A \in \mathcal{M}_{n}(\mathbb{K})$, on peut se poser
la question suivante : existe t'il un endomorphisme *naturel* associé à $A$ ?
La réponse est positive, et d'usage constant :

::: {#def-endomorphisme-canoniquement-associe}

#### Endomorphisme canoniquement associé à $A$

Soit $A \in \mathcal{M}_{n}(\mathbb{K})$. L'endomorphisme **canoniquement
associé à $A$** est l'endomorphisme

$$
\begin{array}{ccc}
f_A : &\mathcal{M}_{n,1}(\mathbb{K})&\to&\mathcal{M}_{n,1}(\mathbb{K})\\
&X &\mapsto & AX
\end{array}
$$

:::

Autrement dit, l'endomorphisme canoniquement associé à $A$ est la
*multiplication* par $A$. C'est un endomorphisme de $\mathcal{M}_{n,1}(\mathbb{K})$ si $A \in \mathcal{M}_{n}(\mathbb{K})$.

::: {#prp-matrice-f_A}

#### Matrice dans la base canonique de $f_{A}$

La matrice dans la base canonique de $\mathcal{M}_{n}(\mathbb{K})$ de $f_A$ est
$A$.

:::

## Eléments propres d'un endomorphisme

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

Soit $f \in \mathcal{L}(E)$. On dit que $v$ est un **vecteur propre** de $f$ *associé* à la valeur propre $\lambda \in \mathbb{K}$ si 

1. $v \neq 0_{E}$,\\

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

::: {#prp-stabilite}

Si $\lambda \in \mathbb{K}$ est une valeur propre de $f$, alors le sous-espace
propre associé à la valeur propre $\lambda$ est *stable* par $f$ et 
$$
    f_{|E_{\lambda}(f)} = \lambda \operatorname{Id}_{E_{\lambda}(f)}.
$$

:::

Autremenent dit, chacun des sous espace propres de $f$ est stable par $f$, et
$f$ restreint à chacun de ses sous espace propre est une homothétie. 








