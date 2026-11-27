# Équations différentielles linéaires

Dans ce chapitre, $\mathbb{K}$ désigne $\mathbb{R}$ ou $\mathbb{C}$ et $I$ est un
intervalle non vide de $\mathbb{R}$.

## Équations différentielles linéaires d'ordre $1$ {#sec-07-ordre1}

::: {#def-edl1}

#### Équation différentielle linéaire d'ordre $1$

On appelle *équation différentielle linéaire d'ordre $1$* une équation de la
forme

$$\label{E1}
\forall t \in I,\quad y'(t) + a(t)y(t) = b(t) \tag{E1}
$$

La fonction $t \mapsto a(t)$ s'appelle le *coefficient* de l'équation et $t \mapsto b(t)$ s'appelle le *second membre*. La fonction $t \mapsto y(t)$ est l'*inconnue*. 

:::

::: {#rem-muette}

La variable $t$ et le nom de la fonction inconnue $y$ sont muets. Par exemple,
les équations

$$
\forall t \geqslant 0,\quad \frac{dU}{dt} + \frac{1}{RC}U(t) = 0
$$

et

$$
\forall x \geqslant 0,\quad y'(x) + \frac{1}{RC}y(x) = 0
$$

représentent la même équation différentielle.

:::

::: {#def-solution-ordre-1}

#### Solution

Une *solution* de \eqref{E1} est une fonction $y:I \to \mathbb{K}$ *dérivable*,
telle que 

$$
    \forall t \in I,\ y'(t) + a(t)y(t) = b(t).
$$

:::

::: {#rem-regularite}

Une solution de \eqref{E1} hérite de la régularité de $a$ et $b$ sur $I$. Par exemple, si $a$ et $b$ sont de classe $C^{\infty}$, l'égalité

$$
   \forall t \in I,\ y'(t) = -a(t)y(t) + b(t) 
$$

montre que $y'$ est continue sur $I$, donc $y$ est de classe $C^{1}$ sur $I$
par somme et produit. La même égalité montre alors que $y'$ est de classe
$C^{1}$ sur $I$ i.e. que $y$ est de classe $C^{2}$ sur $I$, etc.

:::
::: {#def-h1}

#### Équation homogène associée

L'*équation homogène* associée à l'équation \eqref{E1} est l'équation différentielle

$$\label{H1}
\forall t \in I,\quad y'(t) + a(t)y(t) = 0. \tag{H1}
$$

:::

::: {#prp-sol-h1}

#### Ensemble des solutions de l'équation homogène

Si $a$ est *continue* sur $I$, l'ensemble des solutions de l'équation homogène
\eqref{H1} est la *droite vectorielle* $\operatorname{Vect}(e^{-A})$, où $A$ est *une* primitive de $a$ sur $I$.

:::

::: {#rem-sol-h1}

Autrement dit, l'ensemble des solutions de \eqref{H1} sur $I$ est

$$
\{t \mapsto \alpha e^{-A(t)},\ \alpha \in \mathbb{K}\}
$$

où $A$ est une primitive de $a$ sur $I$.

:::

::: {#exm-ex-fond}

Les équations homogènes d'ordre $1$ les plus simples (et les plus importantes !) à
savoir résoudre sont les équations d'ordre $1$ à coefficients *constants* 

$$
    \forall t \in I,\ y'(t)+ay(t)=0,\quad \text{$a \in \mathbb{K}$}.
$$

Les solutions sont les fonctions de la forme 

$$
    t \mapsto \alpha e^{-at},\ \alpha \in \mathbb{K}.
$$

:::



::: {#exm-ordre1-hom}

Résolution de l'équation différentielle

$$
\forall t>0,\quad ty'(t) + y(t) = 0.
$$

::: {.details}

L'équation se réécrit

$$
\forall t >0,\ y'(t) + \frac{1}{t}y(t) = 0.
$$

Une primitive de $t \mapsto \frac{1}{t}$ sur $]0,+\infty[$ est $t \mapsto \ln(t)$. 

Donc les solutions sont les fonctions de la forme

$$
t \mapsto \alpha e^{-A(t)} = \alpha e^{-\ln(t)} = \frac{\alpha}{t},\quad \alpha \in \mathbb{K}.
$$

:::

:::

::: {#tip-resoudre-edo .callout-tip}

Résoudre une équation homogène, c'est donc essentiellement calculer une *primitive*.

:::

::: {#prp-structure-sol}

#### Structure de l'ensemble des solutions de l'équation complète

Si $y_p$ est *une* solution particulière de l'équation \eqref{E1}, alors l'ensemble des solutions de \eqref{E1} est $y_{p} + \operatorname{Vect}(e^{-A})$. 

On dit que l'ensemble des solutions de \eqref{E1} est une droite *affine* passant par
$y_p$ et *dirigée* par l'ensemble des solutions de \eqref{H1}.


::: {#fig-espace-affine}

![](./tikz/svg/07-2.svg)

L'ensemble des solutions de \eqref{E1} est la droite affine
$y_p + \mathrm{Vect}(e^{-A})$, translatée de la droite vectorielle
$\mathrm{Vect}(e^{-A})$ des solutions de \eqref{H1}.

:::

:::

::: {#rem-droite-affine}

Autrement dit, les solutions de \eqref{E1} sont les fonctions de la forme 

$$
    t \mapsto y_p(t) + \alpha e^{-A(t)},\quad \alpha \in \mathbb{K}.
$$

:::


::: {#exm-ordre1-avec-second-membre}

Déterminer l'ensemble des solutions de l'équation différentielle

$$
\forall t>0,\quad ty'(t) + y(t) = 2t.
$$

::: {.details}
L'équation s'écrit 

$$
    \forall t >0,\ y' + \frac{1}{t}y = 2.
$$

D'après l'exemple précédent, l'équation homogène associée a pour solutions les
fonctions de la forme $t \mapsto \frac{\alpha}{t}$, $\alpha \in \mathbb{K}$.

On remarque que $t \mapsto t$ est une solution particulière de l'équation
complète.

Donc les solutions sont les fonctions de la forme 

$$
y(t) = t + \frac{\alpha}{t},\quad \alpha \in \mathbb{K}.
$$

:::

:::

::: {#nte-solution-particuliere .callout-note}

Pour trouver une solution particulière de \eqref{E1} on cherche celle-ci sous une
forme *particulière* (constante, polynôme, quasi-polynôme, oscillations
amorties, ...) adaptée au second membre de \eqref{E1}. 

En l'absence de suggestion de l'énoncé ou d'intuition, la méthode de *variation de
la constante* (@prp-variation-constante) propose une forme générale qui fonctionne toujours, mais qui mène
souvent à des calculs plus compliqués.

:::



::: {#prp-variation-constante}

#### Méthode de variation de la constante

La *méthode de variation de la constante* consiste à chercher une solution
particulière de l'équation \eqref{E1} *sous la forme* $y(t) = z(t)e^{-A(t)}$,
où $z$ est une fonction dérivable sur $I$.

:::

::: {#rem-terminologie}

La méthode de variation de la constante consiste donc à chercher une solution
particulière à l'équation complète en remplaçant la constante apparaissant dans
l'ensemble des solutions de l'équation homogène par une *fonction*, d'où son nom.

:::



::: {#exm-variation-constante}

A l'aide de la méthode de variation de la constante, déterminer une solution
particulière de l'équation différentielle

$$
\forall x>0,\quad xy' - y = x^{2}e^{x}.
$$

::: {.details}

L'équation s'écrit 

$$
    \forall x>0,\ y' - \frac{1}{x}y = xe^{x}.
$$

L'équation homogène associée a pour solutions $x \mapsto \alpha x$ (une primitive de
$-\frac{1}{x}$ sur $]0,+\infty[$ est $-\ln(x)$). 

On cherche alors une solution particulière *sous la forme*
$y(x) = z(x)x$, où $z$ est une fonction de classe $C^{1}$ sur
$]0,+\infty[$. On a alors

$$
    \forall x >0,\ y'(x) = z'(x)x + z(x).
$$

Donc 

$$
\forall x>0,\ xy'(x) - y(x) = z'(x)x^{2}.
$$

Il *suffit* donc que $z'(x)=e^{x}$, par exemple $z(x) = e^{x}$ *convient*.

Une solution particulière de l'équation complète est donc $y_p(x) = xe^{x}$.

:::

:::

::: {#prp-superposition}

#### Principe de superposition

Si $y_1$ et $y_2$ sont des solutions particulières des équations respectives
$y' + a(t)y = b_1(t)$ et $y' + a(t)y = b_2(t)$, alors pour tout
$\alpha,\beta \in \mathbb{K}$, la fonction $\alpha y_1 + \beta y_2$ est une
solution particulière sur $I$ de l'équation
$y' + a(t)y = \alpha b_1(t) + \beta b_2(t)$.

:::

Lorsque le coefficient et le second membre de \eqref{E1} sont *continus*, la
méthode de variation de la constante permet effectivement de montrer
l'existence d'une solution particulière de \eqref{E1}. La donnée d'une
condition initiale permet alors de déterminer uniquement la solution ; c'est le théorème de
*Cauchy-Lipschitz*.

::: {#thm-cauchy-lipschitz-1}

#### Théorème de Cauchy-Lipschitz

Si $a$ et $b$ sont continues sur $I$ alors, pour tout $t_0 \in I$ et
$y_0 \in \mathbb{K}$, le *problème de Cauchy*

$$\label{P1}\tag{P1}
\begin{cases}
    \text{\eqref{E1}}\\
    y(t_0) = y_0
\end{cases}
$$

admet une unique solution sur $I$.

:::

::: {#def-courbe-integrale}

#### Courbe intégrale

Le graphe d'une solution de \eqref{E1} s'appelle une *courbe intégrale* de
\eqref{E1}.

:::

::: {#nte-cauchy-lipschitz-1 .callout-note}

#### Interprétation graphique du théorème de Cauchy-Lipschitz

Par chaque point $(t_{0},y_0) \in I \times \mathbb{K}$, passe une unique
courbe intégrale.

:::

::: {#fig-cauchy-lipschitz}

![](./tikz/svg/07-1.svg)

Courbes intégrales de l'équation $ty' + y = 0$ ; par chaque point
du demi-plan $t>0$ passe une unique courbe intégrale.

:::

## Systèmes différentiels linéaires homogènes à coefficients constants {#sec-07-systemes}

::: {#def-systeme}

#### Système différentiel linéaire homogène à coefficients constants

Un *système différentiel linéaire homogène à coefficients constants* est un
système du type

$$\label{S}
\forall t \in I,\quad
\left\{\begin{array}{clc}
    x_1'(t) &=& a_{11}x_1(t) + \dots + a_{1n}x_n(t),\\
    \vdots& &\vdots\\
    x_n'(t) &=& a_{n1}x_1(t) + \dots + a_{nn}x_n(t),
\end{array}\right. \tag{S}
$$

où $a_{ij} \in \mathbb{K}$. En posant

$$
X(t) = \begin{pmatrix} x_1(t)\\ \vdots \\ x_n(t) \end{pmatrix}
\quad\text{et}\quad
A = (a_{ij})_{1 \leqslant i,j \leqslant n} \in \mathcal{M}_n(\mathbb{K}),
$$

le système \eqref{S} s'écrit *matriciellement*

$$\tag{S}
\forall t \in I,\ X'(t) = AX(t),
$$

où, par définition,
$X'(t) = \begin{pmatrix} x_1'(t)\\ \vdots \\ x_n'(t) \end{pmatrix}$.

:::

::: {#nte-cas-diagonalisable .callout-note}

Si $A=\operatorname{diag}(\lambda_{1},\dots,\lambda_{n}) \in \mathcal{M}_{n}(\mathbb{K})$ est une matrice *diagonale*,
le système \eqref{S} est *découplé*

$$
\forall t \in I,\quad
\left\{\begin{array}{clc}
    x_1'(t) &=&\lambda_1 x_{1}(t),\\ 
    \vdots& &\vdots\\
    x_n'(t) &=& \lambda_{n}x_n(t).
\end{array}\right. 
$$

Sa résolution est immédiate (@exm-ex-fond) :

$$
    \forall t \in I,\ 
\left\{\begin{array}{l}
    x_1(t) =\alpha_1e^{\lambda_1 t},\ \alpha_1 \in \mathbb{K}\\ 
    \vdots \\
    x_n(t)= \alpha_ne^{\lambda_{n}t},\ \alpha_{n} \in \mathbb{K}.
\end{array}\right. 
$$

On voit ainsi naturellement apparaître les *exponentielles* des valeurs propres
de $A$. 

:::

L'exemple précédent montre que la résolution du système $\eqref{S}$ est
immédiate lorsque la matrice $A$ est *diagonale*. Lorsque $A$ n'est pas diagonalisable, on peut espérer que la
*diagonalisation* de $A$ permette de se ramener à un problème simple à
résoudre. 

Cette approche permet de démontrer le
théorème de Cauchy-Lipschitz pour les systèmes linéaires, et fournit une
méthode effective de résolution.

::: {#prp-cauchy-lipschitz-systeme}

#### Théorème de Cauchy-Lipschitz

Pour tout $t_0 \in I$ et $X_0 \in \mathcal{M}_{n,1}(\mathbb{K})$, le problème de
Cauchy

$$
\begin{cases}
    \text{(S)}\\
    X(t_0) = X_0
\end{cases}
$$

admet une unique solution sur $I$.

:::

::: {#rem-combinaison}

La démonstration du théorème de Cauchy-Lipschitz montre que, dans le cas
diagonalisable, les fonctions $x_{i}$ sont combinaison linéaire des
*exponentielles* des valeurs propres de $A$. Puisque 

$$
    \forall z = a + ib \in \mathbb{C},\ \forall t \in \mathbb{R},\  |e^{zt}| = e^{at},
$$

la condition de *stabilité* des solutions de $\eqref{S}$ se traduit donc sur la
partie réelle des valeurs propres de $A$ : celle-ci doit être négative ou
nulle.

Dans le cas des suites géométriques matricielles $X_{n+1}=AX_{n}$, ce sont les puissances $n$-ème des
valeurs propres de $A$ qui entrent en jeu ; la condition de stabilité porte
alors sur le *module* des valeurs propres de $A$, qui doit être inférieur ou
égal à $1$.

:::



::: {#prp-sol-systeme}

#### Structure de l'ensemble des solutions

L'ensemble des solutions de (S) sur $I$ est un $\mathbb{K}$-espace vectoriel de
dimension $n$.

:::

::: {#exm-systeme-2x2}

Déterminer l'ensemble des solutions sur $\mathbb{R}$ du système

$$
\begin{cases}
    x' = 2x - 3y,\\
    y' = x - 2y.
\end{cases}
$$

::: {.details}

Le système s'écrit $X' = AX$ avec
$A = \begin{pmatrix} 2&-3\\ 1&-2 \end{pmatrix}$. Son polynôme caractéristique
est

$$
P_A(X) = (X-2)(X+2) + 3 = X^{2} - 1 = (X-1)(X+1),
$$

les valeurs propres sont $1$ et $-1$. Des vecteurs propres associés sont
$U_1 = \begin{pmatrix} 3\\ 1 \end{pmatrix}$ (pour $1$) et
$U_2 = \begin{pmatrix} 1\\ 1 \end{pmatrix}$ (pour $-1$). La matrice
$P = \begin{pmatrix} 3&1\\ 1&1 \end{pmatrix}$ diagonalise donc $A$ :
$P^{-1}AP = \mathrm{diag}(1,-1)$. Les solutions du système sont

$$
X(t) = c_1 e^{t}U_1 + c_2 e^{-t}U_2,
$$

soit

$$
\begin{cases}
    x(t) = 3c_1 e^{t} + c_2 e^{-t},\\
    y(t) = c_1 e^{t} + c_2 e^{-t},
\end{cases}
\quad c_1,c_2 \in \mathbb{K}.
$$

:::

:::

::: {#prp-edl2-coef-const}

#### Équation différentielle linéaire d'ordre $2$ à coefficients constants

Soit $a,b \in \mathbb{R}$. L'ensemble des solutions de l'équation différentielle
linéaire

$$
y'' + ay' + by = 0 \tag{H}
$$

est un $\mathbb{R}$-espace vectoriel de dimension $2$. L'**équation
caractéristique** associée à (H) est l'équation

$$
X^{2} + aX + b = 0. \tag{e}
$$

Alors :

1. si $(e)$ possède deux racines distinctes $\lambda_1$ et $\lambda_2$ dans
   $\mathbb{K}$, les solutions de (H) sont de la forme

$$
\forall t \in \mathbb{R},\quad y(t) = c_1 e^{\lambda_1 t} + c_2 e^{\lambda_2 t},\quad c_1,c_2 \in \mathbb{R},
$$

2. si $(e)$ possède une racine double $\lambda$ dans $\mathbb{K}$, les
   solutions de (H) sont de la forme

$$
\forall t \in \mathbb{R},\quad y(t) = c_1 e^{\lambda t} + c_2 t e^{\lambda t},\quad c_1,c_2 \in \mathbb{R},
$$

3. si $(e)$ possède deux racines complexes conjuguées
   $\lambda = r + i\omega$ et $\bar{\lambda} = r - i\omega$, les solutions de
   (H) sont de la forme

$$
\forall t \in \mathbb{R},\quad y(t) = e^{rt}\bigl(\alpha\cos(\omega t) + \beta\sin(\omega t)\bigr),\quad \alpha,\beta \in \mathbb{R}.
$$

:::

::: {#rem-base-sol-h}

Autrement dit, dans le premier cas, une base de l'ensemble des solutions est
$(t \mapsto e^{\lambda_1 t},\ t \mapsto e^{\lambda_2 t})$ ; dans le deuxième cas,
$(t \mapsto e^{\lambda t},\ t \mapsto te^{\lambda t})$ ; etc.

:::

::: {#rem-ordre-n}

On peut utiliser les mêmes techniques pour étudier une équation différentielle
scalaire d'ordre $n$ du type

$$
y^{(n)} - a_{n-1}y^{(n-1)} - \dots - a_1 y' - a_0 y = 0,\quad a_0,\dots,a_{n-1} \in \mathbb{K},
$$

en posant

$$
X = \begin{pmatrix}
    y\\ y'\\ \vdots\\ y^{(n-1)}
\end{pmatrix}
\quad\text{et}\quad
A = \begin{pmatrix}
    0&1&0&\dots&0\\
    \vdots&\ddots&\ddots&\ddots&\vdots\\
    \vdots&&\ddots&\ddots&0\\
    0&\dots&\dots&0&1\\
    a_0&a_1&\dots&\dots&a_{n-1}
\end{pmatrix}.
$$

:::

## Équations différentielles linéaires d'ordre $2$ {#sec-07-ordre2}

::: {#def-edl2}

#### Équation différentielle linéaire d'ordre $2$

Une **équation différentielle linéaire d'ordre $2$** est une équation de la
forme

$$
\forall t \in I,\quad y''(t) + a(t)y'(t) + b(t)y(t) = c(t) \tag{E2}
$$

où $a$, $b$ et $c$ sont des fonctions de $I$ dans $\mathbb{K}$.

:::

::: {#def-h2}

#### Équation homogène associée

L'**équation homogène** associée à (E2) est l'équation

$$
\forall t \in I,\quad y''(t) + a(t)y'(t) + b(t)y(t) = 0. \tag{H2}
$$

:::

::: {#thm-cauchy-lipschitz-2}

#### Théorème de Cauchy-Lipschitz

Si les fonctions $a$, $b$ et $c$ sont continues sur $I$ alors, pour tout
$t_0 \in I$ et pour tout $y_0, v_0 \in \mathbb{K}$, le *problème de Cauchy*

$$
\begin{cases}
    \text{(E2)}\\
    y(t_0) = y_0,\\ y'(t_0) = v_0
\end{cases}
$$

admet une unique solution sur $I$.

:::

::: {#rem-cauchy-lipschitz-2}

Interprétation graphique du théorème de Cauchy-Lipschitz.

:::

::: {#prp-sol-h2}

#### Ensemble des solutions de l'équation homogène

L'ensemble des solutions de l'équation homogène (H2) est un $\mathbb{K}$-espace
vectoriel de dimension $2$.

:::

::: {#rem-pas-de-methode-h2}

Contrairement aux équations d'ordre $1$, il n'existe pas de méthode au
programme pour déterminer une base de solutions de (H2).

:::

::: {#exm-euler-hom}

Déterminer l'ensemble des solutions de l'équation

$$
\forall x>0,\quad x^{2}y''(x) + xy'(x) - y(x) = 0
$$

en cherchant des solutions particulières sous la forme $x \mapsto x^{\alpha}$,
$\alpha \in \mathbb{R}$.

::: {.details}

Si $y(x) = x^{\alpha}$, alors $y'(x) = \alpha x^{\alpha-1}$ et
$y''(x) = \alpha(\alpha-1)x^{\alpha-2}$, donc

$$
x^{2}y''(x) + xy'(x) - y(x)
= \bigl(\alpha(\alpha-1) + \alpha - 1\bigr)x^{\alpha}
= (\alpha^{2}-1)x^{\alpha}.
$$

La fonction $x \mapsto x^{\alpha}$ est donc solution ssi $\alpha = \pm 1$. Les
fonctions $x \mapsto x$ et $x \mapsto \frac{1}{x}$ forment une base de l'ensemble
des solutions (leur wronskien en $1$ vaut $-2 \neq 0$), donc les solutions sur
$]0,+\infty[$ sont

$$
y(x) = Ax + \frac{B}{x},\quad A,B \in \mathbb{K}.
$$

:::

:::

::: {#prp-structure-sol-2}

#### Structure de l'ensemble des solutions

Si $y_p$ est une solution *particulière* de l'équation (E2), alors les
solutions de (E2) sont les fonctions de la forme $y_p + y$ où $y$ est une
solution de l'équation *homogène* (H2) associée à (E2).

:::

::: {#rem-pas-de-methode-particuliere}

Contrairement aux équations d'ordre $1$, il n'existe pas de méthode au
programme pour déterminer une solution particulière de (E2).

:::

::: {#rem-superposition-2}

Le principe de superposition reste valable pour les équations différentielles
linéaires d'ordre $2$.

:::

::: {#prp-abaissement-ordre}

#### Méthode d'abaissement de l'ordre

Si $h$ est une solution particulière de l'équation homogène (H2) associée à
(E2), *qui ne s'annule pas sur $I$*, on détermine l'ensemble des solutions de
l'équation (E2) en posant

$$
\forall t \in I,\quad y(t) = z(t)h(t).
$$

:::

::: {#rem-abaissement-ordre}

La fonction $z$ est bien définie par

$$
\forall t \in I,\quad z(t) = \frac{y(t)}{h(t)}
$$

car la fonction $h$ ne s'annule pas sur $I$ par hypothèse. Cependant, on ne
retient pas cette relation car on préfère toujours dériver un *produit*.

:::

::: {#exm-abaissement-ordre}

En remarquant que $x \mapsto x^{2}$ est une solution particulière de l'équation
homogène

$$
\forall x>0,\quad x^{2}y'' - 2y = 0,
$$

déterminer l'ensemble des solutions de l'équation

$$
\forall x>0,\quad x^{2}y'' - 2y = 3x^{2}.
$$

::: {.details}

On vérifie que $h(x) = x^{2}$ est solution de l'équation homogène
$x^{2}y'' - 2y = 0$. On pose $y = zh$, soit $y(x) = z(x)x^{2}$. Alors
$y' = z'x^{2} + 2xz$ et $y'' = z''x^{2} + 4xz' + 2z$, donc

$$
x^{2}y'' - 2y = x^{4}z'' + 4x^{3}z' = x^{4}\left(z'' + \frac{4}{x}z'\right).
$$

En posant $Z = z'$, l'équation $x^{2}y'' - 2y = 3x^{2}$ équivaut à l'équation
linéaire d'ordre $1$

$$
Z' + \frac{4}{x}Z = \frac{3}{x^{2}}.
$$

L'équation homogène associée a pour solutions $Z(x) = \frac{\beta}{x^{4}}$ ; par
variation de la constante ($Z = \beta(x)x^{-4}$), on obtient
$\beta'(x) = 3x^{2}$, soit $\beta(x) = x^{3}$. Ainsi

$$
Z(x) = \frac{1}{x} + \frac{\beta}{x^{4}},\quad
z(x) = \ln(x) - \frac{\beta}{3x^{3}} + \gamma,
$$

et finalement

$$
y(x) = z(x)x^{2} = x^{2}\ln(x) + \gamma x^{2} - \frac{\beta}{3x}.
$$

Les solutions sur $]0,+\infty[$ sont donc
$y(x) = x^{2}\ln(x) + Ax^{2} + \frac{B}{x}$, $A,B \in \mathbb{K}$.

:::

:::

\newpage

## Exercices {.unnumbered}

{{< include ./td/07.md >}}
