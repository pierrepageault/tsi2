# Séries entières

Dans ce chapitre, $\mathbb{K}$ désigne $\mathbb{R}$ ou $\mathbb{C}$.

## Introduction {.unnumbered}

Une série entière est un type particulier de série numérique, de la forme

$$
    \sum a_{n}z^{n}
$$


où $(a_{n})$ est une suite de $\mathbb{K}$ et $z \in \mathbb{K}$. On peut donc
penser à une série entière comme un "polynôme infini". 

Comme toute série numérique, une série entière possède une *nature* ; elle peut
converger, diverger, converger absolument, etc. Dans le cas des séries
entières, la situation est particulièrement tranchée puisqu'on montrera
l'existence d'un réel $R \in \mathbb{R}_{+}\cup \{+\infty\}$ tel que la série
converge absolument si $|z|<R$ et diverge grossièrement si $|z|>R$. 

Toute série entière définit donc naturellement sur son disque ouvert de
convergence une *fonction*, avec laquelle il est très facile de *calculer*. En
particulier, on pourra dériver ou intégrer la somme d'une série entière comme
on le ferait avec un polynôme. Les séries entières se prêtent donc
particulièrement bien à la résolution d'*équations différentielles*, et ce sera
pour nous leur principale application.

Les séries entières permettent également des raisonnements plus algébriques et
combinatoires, via l'unicité de leurs *coefficients* $(a_{n})_{n\in
\mathbb{N}}$, comme dans le cas des polynômes. Malheureusement, le *produit* de
deux séries entières n'est pas au programme en TSI, ce qui vient affaiblir
cette utilisation en ne conférant pas à l'ensemble des séries entières sa
structure la plus générale. 

## Convergence d'une série entière {#sec-06-convergence}

### Définition

::: {#def-serie-entiere}

#### Série entière

On appelle **série entière** en la variable $z\in \mathbb{K}$ toute série numérique de la forme $\sum a_nz^n$ où $(a_n)$ est une suite de $\mathbb{K}$. Les scalaires $a_n$ s'appellent les *coefficients* de la série entière $\sum a_nz^n$.

:::

::: {#rem-muette}

La variable $z$ est *muette*. Lorsque celle-ci est réelle, on la note plutôt
$x$ ou $t$.

:::

::: {#exm-zero}

La somme d'une série entière ne commence pas nécessairement à $n=0$ ; les
premiers coefficients peuvent être nuls. 

$$
    \sum_{n \geqslant 1} \frac{x^{n}}{n} = x + \frac{x^{2}}{2}+ \dots
$$

:::

::: {#exm-lacunaire}

Certaines puissances peuvent être manquantes ; ceci correspond à la nullité de
certains coefficients.

$$
    \sum_{n \geqslant 0} (-1)^{n}t^{2n} = 1 - t^{2} + t^{4} - \dots
$$

:::

::: {#exm-polynome}

Un polynôme est une série entière dont tous les coefficients sont nuls à partir
d'un certain rang. 

:::

### Rayon de convergence d'une série entière

Les résultats de convergence d'une série entière sont basés sur le lemme
suivant. 

::: {#lem-abel}

#### Lemme d'Abel

Soit $r>0$ tel que la suite $(a_{n}r^{n})$ soit bornée. Alors pour tout $z \in
\mathbb{K}$ avec $|z|<r$, la série $\sum a_{n}z^{n}$ converge absolument.

:::

::: {#nte-borne-sup .callout-note}

#### Borne supérieure

Soit $A$ un ensemble *non vide* et *majoré* de $\mathbb{R}$. Alors $A$ possède une
**borne supérieure** $m \in \mathbb{R}$ définie par les deux propriétés
suivantes :

1. la borne supérieure $m$ de $A$ est un *majorant* de $A$ i.e.

   $$
    \forall a \in A,\ a \leqslant m,
   $$

2. La borne supérieure $m$ de $A$ est le *plus petit* majorant de $A$ i.e.

   $$
    \forall x<m,\quad \exists a \in A,\ x<a \leqslant m. 
   $$

On note $\sup A$ la borne supérieure de $A$. Si $A$ n'est pas majorée, on pose $\sup A = +\infty$.

:::


::: {#def-rayon-convergence}

#### Rayon de convergence 

Le **rayon de convergence** de la série entière $\sum a_{n}z^{n}$ est le réel
$R \in \mathbb{R}_+ \cup \{+\infty\}$ défini par 

$$
    R = \sup \left\{ r \geqslant 0,\ \text{$(a_{n}r^{n})$ bornée}\right\}
$$

:::

::: {#thm-convergence}

Soit $\sum a_{n}z^{n}$ une série entière de rayon de convergence $R>0$. Alors

1. la série $\sum a_{n}z^{n}$ *converge absolument* pour tout $z \in \mathbb{K}$
   avec $|z|<R$,

2. la série $\sum a_{n}z^{n}$ *diverge grossièrement* pour tout $z \in \mathbb{K}$ avec $|z|>R$,

:::

::: {#rem-bord}

Si $|z| = R$, tous les scénarios sont possibles (convergence, divergence, divergence grossière,...).

:::

::: {#def-disque}

#### Disque ouvert de convergence

Le **disque ouvert de convergence** d'une série entière $\sum a_{n}z^{n}$ de
rayon de convergence $R>0$ est l'ensemble 

$$
    D = \{ z \in \mathbb{K},\ |z|<R\}.
$$

:::

::: {#rem-R-infini}

Si $R=+\infty$, la série converge pour tout $z \in \mathbb{K}$.

:::



::: {#rem-intervalle}

Si la variable est réelle, le disque ouvert de convergence est un *intervalle*
ouvert de convergence, égal à $]-R,R[$.

:::

::: {#exm-geometrique}

La série entière $\sum z^{n}$ est une série géométrique qui converge ssi $|z|<1$. Donc $R=1$. De plus 

$$
    \forall |z|<1,\ \sum_{n=0}^{+\infty} z^{n}=\frac{1}{1-z}
$$

Cet exemple montre que la classe des séries entières englobe des fonctions bien
plus générales que les polynômes. 

:::

### Méthode pratique de calcul d'un rayon de convergence

Lorsque l'on dispose d'une formule explicite pour les coefficients d'une série
entière, la manière la plus efficace est en général d'utiliser le critère de
d'Alembert pour les séries numériques. 

::: {#nte-critere-d-alembert .callout-note}

#### Rappel (critère de d'Alembert)

Soit $\sum u_n$ une série à termes strictement positifs. On suppose que $\frac{u_{n+1}}{u_n}\to \lambda$ quand $n\to +\infty$. Alors

1. si $\lambda<1$, la série $\sum u_n$ converge absolument,

2. si $\lambda>1$, la série diverge grossièrement.

:::

::: {#exm-d-alembert-1}

Rayon de convergence de la série entière $\sum \frac{(-1)^{n}}{n+1}z^{n}$.

::: {.details}

Pour $z \neq 0$^[La convergence d'une série entière est toujours acquise en $0$.] et $n \in \mathbb{N}$, posons

$$
    u_{n} = \left|\frac{(-1)^{n}}{n+1}z^{n}\right|.
$$

On a alors $u_{n}>0$ et 

$$
    \forall n \in \mathbb{N},\ \frac{u_{n+1}}{u_{n}} = |z| \frac{n+1}{n+2}
\underset{n \to +\infty}{\to} |z|.
$$

Donc, par le critère de d'Alembert, la série $\sum \frac{(-1)^{n}}{n+1}z^{n}$

- converge (absolument) si $|z|<1$,

- diverge grossièrement si $|z|>1$.

Donc le rayon de convergence de cette série est égal à $1$.

:::

:::

::: {#exm-d-alembert-2}

Calculer le rayon de convergence de la série entière $\sum \frac{z^{n}}{n!}$.

::: {.details}

Pour $z \neq 0$ et $n \in \mathbb{N}$, posons 

$$
    u_{n}= \left|\frac{z^{n}}{n!}\right|.
$$

On a alors $u_{n}>0$ et 

$$
    \forall n \in \mathbb{N},\ \frac{u_{n+1}}{u_{n}} = \frac{|z|}{n+1} \underset{n \to +\infty}{\to} 0 <1.
$$

Donc, par le critère de d'Alembert, la série $\sum \frac{z^{n}}{n!}$ converge
(absolument)
pour tout $z \in \mathbb{C}$. Donc le rayon de convergence de cette série est
égal à $+\infty$.

:::

:::

::: {#exm-d-alembert-3}

Déterminer le rayon de convergence de la série entière $\sum
\frac{x^{2n}}{3^{n}+1}$.

::: {.details}

Soit $x \neq 0$ et $n \in \mathbb{N}$. Posons

$$
    u_{n}= \left| \frac{x^{2n}}{3^{n}+1}\right|.
$$

On a $u_{n}>0$ et 

$$
    \forall n \in \mathbb{N},\ \frac{u_{n+1}}{u_{n}}= |x^{2}|\frac{3^{n+1}+1}{3^{n}+1} \sim 3|x|^{2} \underset{n \to +\infty}{\to} 3|x|^{2}.
$$

Donc, par le critère de d'Alembert, la série $\sum \frac{x^{2n}}{3^{n}+1}$

- converge (absolument) si $3|x|^{2}<1$ i.e. si $|x|<\frac{1}{\sqrt{3}}$,

- diverge grossièrement si $3|x|^{2}>1$ i.e. si $|x|>\frac{1}{\sqrt{3}}$.

Donc le rayon de convergence de cette série est $\frac{1}{\sqrt{3}}$.

:::

:::

::: {#tip-d-alembert .callout-tip}

Il faut traduire la condition donnée par le critère de d'Alembert en une
condition sur le *module* de la variable. 

:::

Quand on ne dispose pas de formule explicite pour $a_{n}$, mais seulement
d'informations *qualitatives* (par exemple une majoration ou un équivalent), on
peut utiliser l'un des résultats suivants. 

::: {#prp-majoration}

#### $|a_{n}| \leqslant |b_{n}|$ 

Si $|a_{n}|\leqslant |b_{n}|$ pour tout $n \in \mathbb{N}$, alors le rayon de
convergence $R_{a}$ de la série entière $\sum a_{n}z^{n}$ est *supérieur ou
égal* au rayon de convergence $R_{b}$ de la série entière $\sum b_{n}z^{n}$ i.e.

$$
    R_{a} \geqslant R_{b}.
$$

:::

::: {#prp-equivalence}

#### $a_{n} \sim b_{n}$

Si $a_{n} \sim b_{n}$ alors les séries entières $\sum a_{n}z^{n}$ et $\sum
b_{n}z^{n}$ ont même rayon de convergence. 

:::

::: {#exm-equivalence}

Déterminer le rayon de convergence de la série entière $\sum \frac{n}{n+1}z^{n}$.

::: {.details}


Pour tout $z \in \mathbb{C}$, on a 

$$
    \frac{n}{n+1}z^{n} \sim z^{n}.
$$

De plus la série entière $\sum z^{n}$ possède un rayon de convergence égal
à $1$ (série géométrique). Donc le rayon de convergence de la série $\sum
\frac{n}{n+1}z^{n}$ est égal à $1$. 

:::

:::

::: {#exm-minoration}

On suppose que 

$$
    \forall n \in \mathbb{N},\ 0 \leqslant a_{n} \leqslant n^{2}.
$$

Montrer que le rayon de convergence de la série entière $\sum a_{n}z^{n}$ est
supérieur ou égal à $1$.

::: {.details}

Par hypothèse, on a 

$$
    \forall n \in \mathbb{N},\ |a_{n}|\leqslant n^{2}.
$$

Donc le rayon de convergence de la série entière $\sum a_{n}z^{n}$ est
supérieur ou égal au rayon de convergence de la série entière $\sum
n^{2}z^{n}$. Une application du critère de d'Alembert montre facilement que le
rayon de convergence de cette dernière série entière vaut $1$. 

Donc le rayon de
convergence de la série entière $\sum a_{n}z^{n}$ est au moins égal à $1$.

:::

:::

::: {#nte-R-def .callout-note}

Bien sûr, on dispose toujours de la définition du rayon de convergence ; si
$(a_{n}z^{n})$ est bornée pour un certain $z \in \mathbb{K}$ (par exemple si
la série converge en $z$ !), alors $R \geqslant |z|$.

:::

::: {#exm-R-def}

Si la suite $(a_{n})$ est bornée alors la suite $(a_{n}1^{n})$ est bornée. Donc
le rayon de convergence de la série $\sum a_{n}z^{n}$ est supérieur ou égal à
$1$.

:::

## Somme d'une série entière d'une variable réelle {#sec-06-somme}

