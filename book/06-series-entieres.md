# Séries entières

Dans ce chapitre, $\mathbb{K}$ désigne $\mathbb{R}$ ou $\mathbb{C}$.

## Introduction {.unnumbered}

Une série entière est un type particulier de série numérique de la forme

$$
    \sum a_{n}z^{n}
$$


où $(a_{n})$ est une suite de $\mathbb{K}$ et $z \in \mathbb{K}$. On peut donc
penser à une série entière comme un &laquo; polynôme infini &raquo;. 

Comme toute série numérique, une série entière possède une *nature* ; elle peut
converger, diverger, converger absolument, etc. Dans le cas des séries
entières, la situation est particulièrement tranchée puisqu'on montre
l'existence d'un réel $R \in \mathbb{R}_{+}\cup \{+\infty\}$, le *rayon de
convergence*, tel que la série
converge absolument si $|z|<R$ et diverge grossièrement si $|z|>R$. 

Toute série entière définit donc naturellement sur son disque ouvert de
convergence une *fonction*, avec laquelle il est très facile de *calculer*. En
particulier, on peut dériver ou intégrer la somme d'une série entière comme
on le ferait avec un polynôme. Les séries entières se prêtent donc
particulièrement bien à la résolution d'*équations différentielles*, et ce sera
pour nous leur principale application.

Les séries entières permettent également des raisonnements plus algébriques et
combinatoires, via l'unicité de leurs *coefficients* $(a_{n})_{n\in
\mathbb{N}}$, comme dans le cas des polynômes. Malheureusement, le *produit* de
deux séries entières n'est pas au programme en TSI, ce qui vient affaiblir
cet aspect algébrique en ne conférant pas à l'ensemble des séries entières sa
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

#### Convergence d'une série entière

Soit $\sum a_{n}z^{n}$ une série entière de rayon de convergence $R>0$. Alors

- la série $\sum a_{n}z^{n}$ *converge absolument* pour tout $z \in \mathbb{K}$
   avec $|z|<R$,

- la série $\sum a_{n}z^{n}$ *diverge grossièrement* pour tout $z \in \mathbb{K}$ avec $|z|>R$,

- si $|z|=R$, tous les scénarios sont possibles (convergence, divergence, divergence grossière,...).
:::

::: {#fig-disque-convergence}

![](./tikz/svg/06-1.svg)

Disque ouvert de convergence : convergence absolue à l'intérieur, divergence
grossière à l'extérieur, et tous les scénarios possibles sur le cercle $|z|=R$.

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

Cet exemple montre que les séries entières englobent des fonctions bien
plus générales que les polynômes. 

:::

### Méthode pratique de calcul d'un rayon de convergence

Lorsque l'on dispose d'une formule explicite pour les coefficients d'une série
entière, la manière la plus efficace est en général d'utiliser le critère de
d'Alembert pour les séries numériques. 

::: {#nte-critere-d-alembert .callout-note}

#### Critère de d'Alembert

Soit $\sum u_n$ une série à termes strictement positifs. On suppose que $\frac{u_{n+1}}{u_n}\to \lambda$ quand $n\to +\infty$. Alors

- si $\lambda<1$, la série $\sum u_n$ converge absolument,

- si $\lambda>1$, la série diverge grossièrement.

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

Pour calculer un rayon de convergence, il faut traduire la condition donnée par
le critère de d'Alembert en une condition sur le *module* de la variable. 

:::

Quand on ne dispose pas de formule explicite pour les coefficients, mais seulement
d'informations *qualitatives* (par exemple une majoration ou un équivalent), on
peut utiliser l'un des résultats suivants. 

::: {#prp-majoration}

Si $|a_{n}|\leqslant |b_{n}|$ pour tout $n \in \mathbb{N}$, alors le rayon de
convergence $R_{a}$ de la série entière $\sum a_{n}z^{n}$ est *supérieur ou
égal* au rayon de convergence $R_{b}$ de la série entière $\sum b_{n}z^{n}$ i.e.

$$
    R_{a} \geqslant R_{b}.
$$

:::

::: {#prp-equivalence}

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
la série converge en $z$), alors $R \geqslant |z|$.

:::

::: {#exm-R-def}

Si la suite $(a_{n})$ est bornée alors la suite $(a_{n}1^{n})$ est bornée. Donc
le rayon de convergence de la série $\sum a_{n}z^{n}$ est supérieur ou égal à
$1$. 

Par exemple, la série entière $\sum \cos(n) x^{n}$ possède un rayon de
convergence supérieur ou égal à $1$.

:::

## Somme d'une série entière d'une variable réelle {#sec-06-somme}

### Définition

::: {#def-somme-serie-entiere}

#### Somme d'une série entière

La **somme** d'une série entière $\sum_{n \geqslant 0} a_n x^n$, de rayon de
convergence $R>0$, est la fonction $f$ définie sur $]-R,R[$ par

$$
\forall x \in ]-R,R[,\ f(x) = \sum_{n=0}^{+\infty} a_n x^n.
$$

:::

::: {#exm-somme-geometrique}

La série géométrique $\sum x^{n}$ a pour somme la fonction
$x \mapsto \frac{1}{1-x}$ sur $]-1,1[$ (voir @exm-geometrique).

:::

### Le théorème de dérivation terme à terme

On explique maintenant comment dériver la somme d'une série entière. Le
résultat semble évident (on sait depuis longtemps que la dérivée d'une somme
*finie*
est la somme des dérivées) mais il n'en n'est rien. Ce théorème est d'ailleurs
admis.

Il s'agit en fait d'un
résultat d'*interversion de limites*, une dérivée étant une limite d'un *taux
d'accroissement*, et la somme d'une série éntière étant la limite de ses *sommes
parielles*.

Une telle intervertion n'est pas toujours possible. Elle l'est pour les séries
entières. 

::: {#prp-rayon-serie-derivee}

#### Série dérivée

Une série entière $\sum_{n \geqslant 0} a_n z^n$ et sa **série dérivée**
$\sum_{n \geqslant 1} n a_n z^{n-1}$ ont le même rayon de convergence.

:::

::: {#thm-derivation-terme-a-terme}

#### Dérivation terme à terme

La somme $f$ d'une série entière $\sum_{n \geqslant 0} a_n x^n$, de rayon de
convergence $R>0$, est dérivable sur $]-R,R[$ et

$$
\forall x \in ]-R,R[,\ f'(x) = \sum_{n=1}^{+\infty} n a_n x^{n-1}.
$$

:::

::: {#tip-derivation-terme-a-terme .callout-tip}

On peut donc *dériver terme à terme* la somme d'une série entière sur son
intervalle ouvert de convergence *sans changer* son rayon de convergence.

:::



::: {#cor-derivees-successives}

#### Classe $C^{\infty}$ 

La somme $f$ d'une série entière $\sum a_n x^n$, de rayon de convergence $R>0$,
est de classe $C^{\infty}$ sur $]-R,R[$ et

$$
\forall k \in \mathbb{N},\ \forall x \in ]-R,R[,\ f^{(k)}(x) = \sum_{n=k}^{+\infty} n(n-1)\cdots(n-k+1) a_n x^{n-k} = \sum_{n=k}^{+\infty} \frac{n!}{(n-k)!} a_n x^{n-k}.
$$

:::

::: {#exm-derivees-geometrique}

#### Dérivées successives de la série géométrique

On sait que la série entière $\sum x^{n}$ possède un rayon de convergence égal à $1$ et 

$$
    \forall x \in ]-1,1[,\ f(x) = \sum_{n=0}^{+\infty} x^{n}=
\frac{1}{1-x}.
$$

Par dérivations terme à terme consécutives, on obtient

$$
\forall k \in \mathbb{N},\ \forall x \in ]-1,1[,\ f^{(k)}(x) = \frac{k!}{(1-x)^{k+1}} = \sum_{n=k}^{+\infty} \frac{n!}{(n-k)!} x^{n-k},
$$

:::

::: {#cor-integration-terme-a-terme}

#### Intégration terme à terme

Soit $\sum a_n x^n$ une série entière de rayon de convergence $R>0$ et de somme
$f$. Alors toute primitive $F$ de $f$ sur $]-R,R[$ est de la forme

$$
\forall x \in ]-R,R[,\ F(x) = F(0) + \sum_{n=0}^{+\infty} a_n \frac{x^{n+1}}{n+1}.
$$

:::

::: {#exm-integration-geometrique}

#### Intégration terme à terme de la série géométrique

En intégrant terme à terme la série géométrique, on obtient 

$$
\forall x \in ]-1,1[,\ -\ln(1-x) = 0 + \sum_{n=0}^{+\infty} \frac{x^{n+1}}{n+1}.
$$

:::

## Fonctions développables en série entière {#sec-06-dse}

On a vu dans la section précédente que certaines fonctions peuvent s'écrire
comme somme d'une série entière sur un certain intervalle ouvert centré en
$0$. C'est par exemple le cas des fonctions $x \mapsto \frac{1}{1-x}$ et $x
\mapsto -\ln(1-x)$ sur $]-1,1[$. 

On dit que de telles fonctions sont
*développables en série entière*.

::: {#def-developpee-en-serie-entiere}

#### Fonction développable en série entière

Soit $r>0$. On dit qu'une fonction $f$ est **développable en série entière**
sur $]-r,r[$ s'il existe une série entière $\sum a_n x^n$ de rayon de
convergence $R \geqslant r > 0$ telle que

$$
\forall x \in ]-r,r[,\ f(x) = \sum_{n=0}^{+\infty} a_n x^n.
$$

:::

::: {#prp-unicite-dse}

#### Développement de Taylor  

Soit $r>0$ tel que 

$$
    \forall x \in ]-r,r[,\ f(x) = \sum_{n=0}^{+\infty}a_{n}x^{n}.
$$

Alors $f$ est de classe $C^{\infty}$ sur $]-r,r[$ et

$$
    \forall n \in \mathbb{N},\ a_{n}= \frac{f^{(n)}(0)}{n!}.
$$

:::

::: {#cor-unicite}

#### Unicité du développement en série entière

S'il existe, le développement en série entière d'une fonction $f$ est unique. 

:::

::: {#exm-unicite}

Si $\sum a_n x^n$ est une série
entière de rayon de convergence $R \geqslant r> 0$ telle que

$$
\forall x \in ]-r,r[,\ \sum_{n=0}^{+\infty} a_n x^n = 0,
$$

alors $a_n = 0$ pour tout $n \in \mathbb{N}$.

:::

::: {#prp-dse-reference}

#### Développements en série entière de références

1. La fonction $x \mapsto \frac{1}{1-x}$ est développable en série entière
   sur $]-1,1[$ et

$$
\forall x \in ]-1,1[,\ \frac{1}{1-x} = \sum_{n=0}^{+\infty} x^n \quad \text{(avec $R=1$)}.
$$

2. La fonction $x \mapsto e^x$ est développable en série entière sur
   $\mathbb{R}$ et

$$
\forall x \in \mathbb{R},\ e^x = \sum_{n=0}^{+\infty} \frac{x^n}{n!} \quad \text{(avec $R=+\infty$)}.
$$

3. Pour tout $\alpha \in \mathbb{R}$, la fonction $x \mapsto (1+x)^{\alpha}$
   est développable en série entière sur $]-1,1[$ et 

   $$
    \forall x \in ]-1,1[,\ (1+x)^{\alpha}= 1 + \sum_{n=1}^{+\infty}
    \frac{\alpha(\alpha-1)\cdots (\alpha-n+1)}{n!}x^{n},\ \quad \text{(avec
    $R=1$).}
   $$

:::

::: {#tip-reference .callout-tip}

Ces trois développements permettent de retrouver les développements limités des
fonctions usuelles par intégration, dérivation ou substitution.

:::

::: {#exm-ln}

#### Développement en série entière de $ln(1+x)$

Montrer que la fonction $x \mapsto \ln(1+x)$ est développable en série entière
sur $]-1,1[$, et donner son développement en série entière.

::: {.details}

On sait que 

$$
    \forall u \in ]-1,1[,\ \frac{1}{1-u} = \sum_{n=0}^{+\infty} u^{n}.
$$

De plus, pour tout $x \in ]-1,1[$, $-x \in ]-1,1[$. Donc par *substitution*,

$$
    \forall x \in ]-1,1[,\ \frac{1}{1+x} = \sum_{n=0}^{+\infty}(-x)^{n}
    = \sum_{n=0}^{+\infty}(-1)^{n}x^{n}.
$$

Par intégration terme à terme, on en déduit ^[Ce résultat peut être considéré
comme un résultat du cours.]

$$
    \forall x \in ]-1,1[,\ \ln(1+x) = \sum_{n=0}^{+\infty} (-1)^{n}\frac{x^{n+1}}{n+1} = \sum_{n=1}^{+\infty} \frac{(-1)^{n-1}}{n}x^{n}.
$$

:::

:::

::: {#tip-dl .callout-tip}

Un développement en série entière fournit, par troncature, un développement
limité à tout ordre en $0$ ; c'est en pratique la manière la plus commode de
retrouver les développements limités usuels.  

:::

## L'exponentielle complexe {#sec-06-exponentielle-complexe}

::: {#def-exponentielle-complexe}

#### Exponentielle complexe

La série entière $\sum_{n \in \mathbb{N}} \frac{z^n}{n!}$ possède un rayon de
convergence égal à $+\infty$, et on pose

$$
\forall z \in \mathbb{C},\ \exp(z) = \sum_{n=0}^{+\infty} \frac{z^n}{n!}.
$$

:::

::: {#cor-dse-cos-sin}

#### Développements en série entière des fonctions sinus et cosinus

Les fonctions $\cos$ et $\sin$ sont développables en série entière sur
$\mathbb{R}$ et

$$
\forall x \in \mathbb{R},\
\begin{cases}
    \cos(x) = \displaystyle\sum_{n=0}^{+\infty} (-1)^n \frac{x^{2n}}{(2n)!},\\
    \sin(x) = \displaystyle\sum_{n=0}^{+\infty} (-1)^n \frac{x^{2n+1}}{(2n+1)!}.
\end{cases}
$$

:::

\newpage

## Exercices {.unnumbered}

{{< include ./td/06.md >}}

