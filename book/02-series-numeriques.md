# Séries numériques

## Convergence d'une série numérique

### Définitions

::: {#def-serie}

Soit $(u_n)_{n\geqslant n_0}$ une suite de $\K$. On appelle \textbf{série de
terme général $u_n$, $n\geqslant n_0$,} et on note $\displaystyle
\sum_{n\geqslant n_0}u_n$ la suite $(S_n)_{n\geqslant n_0}$ des \textbf{sommes
partielles} définies par

$$
\forall n\geqslant n_0,\quad S_n = \sum_{k=n_0}^{n}u_k.
$$

On dit que la série $\displaystyle \sum_{n\geqslant n_0}u_n$ \textbf{converge}
si la suite de ses sommes partielles $(S_n)_{n\geqslant n_0}$ admet une limite
finie. On note alors

$$
\sum_{n=n_0}^{+\infty}u_n = \lim_{n\to +\infty} \sum_{k=n_0}^{n}u_k.

$$ 

Le scalaire $\displaystyle \sum_{n=n_0}^{+\infty}u_n$ s'appelle la
\textbf{somme} de la série $\displaystyle\sum_{n\geqslant n_0}u_n$.

Dans le cas contraire, on dit que la série $\displaystyle\sum_{n\geqslant
n_0}u_n$ \textbf{diverge}. La convergence ou la divergence d'une séries'appelle
sa \textbf{nature}. 

:::

::: {#exm-nature-convergente}

La série de terme général $(\frac{1}{2^{n}})_{n \geqslant 0}$ est convergente
et sa somme vaut $1$.

::: {.details}

Soit $n \geqslant 1$. On a 

$$
    \sum_{k=0}^{n} \frac{1}{2^{k}} = \frac{1-1/2^{n+1}}{1-1/2} \underset{n to + \infty}{\longrightarrow} =2.
$$

Donc la série de terme général $(1/2^{n})_{n\in \mathbb{N}}$ converge et
$\sum_{n=0}^{+\infty}\frac{1}{2^{n}}=2$.

:::

:::

::: {#exm-nature-divergente}

La série de terme général $(n)_{n \in \mathbb{N}}$ diverge. 

::: {.details}

Pour $n \geqslant 0$, on a

$$
    \sum_{k=0}^{n} k = \frac{n(n+1)}{2} \to +\infty \quad \text{quand $n
\to +\infty$}.
$$

Donc la série de terme général $(n)_{n \in \mathbb{N}}$ diverge.

:::

:::

Comme pour les intégrales, on dispose d'une relation de Chasle pour les séries
numériques.

::: {#prp-chasles}

#### Relation de Chasles


Soit $(u_n)_{n\geqslant n_0}$ une suite de $\K$. Alors pour tout $m\geqslant
n_0$, les séries $\sum_{n\geqslant n_0}u_n$ et $\sum_{n\geqslant m}u_n$ ont
*même nature* et, en cas de convergence, on a 

$$
\sum_{n=n_0}^{+\infty} u_n = \sum_{n=n_0}^{m_0} u_n + \sum_{n=m_0+1}^{+\infty} u_n.
$$

:::

::: {#nte-independance-premier-terme .callout-note}

On résume le résultat précédent en disant que *la nature d'une série ne dépend
pas de ses premiers*. Ainsi, tant qu'on ne parle que la *nature* d'une série,
on peut se contenter de la noter $\sum u_n$, sans préciser son point de départ.  

:::

Pour les séries, il existe un lien simple entre la convergence de la série et
la convergence de son terme général qui fourni un condition *nécessaire* de
convergence.

::: {#prp-condition-necessaire}

Le terme général d'une série convergente tend nécessairement vers $0$.

:::

::: {#wrn-reciproque .callout-warning}

La réciproque est fausse ; ce n'est pas parce que le terme général d'un série
tend vers $0$ que celle-ci converge. 

On montrera par exemple que la série harmonique $\sum \frac{1}{n}$ *diverge*,
bien que $\frac{1}{n}$ tende vers $0$.

:::


::: {#def-grosierement-divergente}

On dit que qu'une série est *grossièrement divergente* si son terme général ne
tend pas vers $0$.

:::

::: {#exm-n}

La série $\sum n$ étudié dans l'@exm-nature-divergente est grossièrement
divergente (le calul explicite de ses sommes partielles n'est donc même pas
nécessaire).

:::


Sauf dans quelques cas -- notamment pour les séries géométriques --, il est
difficile de calculer explicitement la somme partielle d'une série car on ne
dispose pas de la notion de *primitive* utilisée pour calculer certaines
intégrales partielles. Il est donc nécessaire de développer des théorèmes de
comparaison ; c'est l'objectif de la @sec-serie-terme-positif.

On peut néanmoins facilement *approximer* la somme d'une série convergente via
sa somme partielle qui elle est calculable, au moins numériquement (c'est une
somme finie). L'erreur commise porte le nom de *reste*.

::: {#def-reste}

Soit $\sum_{n\geqslant n_0} u_n$ une série convergente, de somme $S$. Pour tout 
$n \geqslant n_{0}$, on appelle *reste d'ordre $n$* de la série
$\sum_{n\geqslant n_0}u_n$ la quantité

$$
R_n = S - S_n = \sum_{k=n+1}^{+\infty}u_k.
$$

:::

::: {#prp-reste}

Le reste d'une série convergent tend vers $0$.

:::

::: {#exm-reste-geometrique}

On a vu que la série $\sum_{n \geqslant 0}\frac{1}{2^{n}}$ était convergente.
Pour tout $n \geqslant  0$, son reste d'ordre $n$ est donné par 

$$
\begin{aligned}
    R_{n} & = 2 - \sum_{k=0}^{n}\frac{1}{2^{k}}\\
          & = 2 - 2\left(1 - \frac{1}{2^{n}}\right)\\
          & = \frac{1}{2^{n+1}} \to 0.
\end{aligned}
$$

::: {#nte-reste .callout-note}

Le reste $R_{n}$ représente l'*erreur* commise en approximant $S$ par $S_n$. Il
est donc intéressant d'être capable de *majorer* explicitement $R_{n}$, même si
on est pas capable de le calculer explicitement. Un exemple emblématique est
donné par les séries alternées.

:::

### Calculer avec des séries convergentes

On s'intéresse maintenant aux propriétés qui permettent de *calculer* avec des
séries des séries convergentes. Comme pour les intégrales généralisées, ce sont
les mêmes que celles de la somme usuelle *sous réserve de convergence*.

::: {#prp-propriete-somme}

#### Propriétés de la somme

On suppose que les séries $\sum_{n \geqslant n_{0}} u_{n}$ et $\sum_{n \geqslant n_{0}} v_n$ convergent. Alors 

1. pour tout $\lambda \in \mathbb{K}$, la série $\sum (u_{n}+\lambda v_{n})$
   converge et 

   $$
    \sum_{k=n_{0}}^{+\infty} (u_{n}+ \lambda v_{n}) = \sum_{k=n_{0}}^{+\infty}
   u_{n} + \lambda\sum_{k=n_{0}}^{+\infty} v_{n},\quad \textit{(linéarité de la
   somme)}
   $$
2. si $\mathbb{K}=\mathbb{R}$ et si 

$$
    \forall n \geqslant n_{0},\quad u_{n}\leqslant v_{n},
$$
alors

$$
    \sum_{k=n_{0}}^{+\infty} u_{n} \leqslant\sum_{k=n_{0}}^{+\infty}
v_{n},\quad \textit{(Croissance de la somme)}
$$
3. la relation de Chasles est satisfaite pour les séries convergentes.

:::

### Séries géométriques et séries télescopiques

Dans cette section, on étudie deux types de séries très importantes pour
lesquelles ont est capable de calculer explicitement les sommes partielles et
la somme en cas de convergence.

::: {#def-serie-geometrique}

On appelle *série géométrique* de *raison* $q \in \mathbb{K}$ la série de terme général $q^{n}$.

:::

::: {#prp-serie-geometrique}
Soit $q \in \mathbb{K}$ avec $q \neq 1$. Alors 

1. pour tout $n \in \mathbb{N}$, 

$$
    \sum_{k=0}^{n}q^{k} = \frac{1-q^{n+1}}{1-q},
$$

2. la série $\sum q^{n}$ converge ssi $|q|<1$ et, dans cas,

$$
    \sum_{n=0}^{+\infty} q^{n} = \frac{1}{1-q}.
$$

:::

::: {#rem-cas-q-egal-un}

Le cas $q=1$ est simple ; la série est grossièrement divergente et 
$$
    \forall n \in \mathbb{N},\quad \sum_{k=0}^{n}q^{n} = \sum_{k=0}^{n} = n+1.
$$

:::

::: {#tip-autre-resultat-geometrique .callout-tip}

On retrouve tous les autres résultats relatifs aux séries géométriques ne
commençant pas à $0$ en *mettant en facteur par le premier terme de la somme*.

:::

::: {#exm-depart}

Si $q \neq 1$, on a 

$$
    \forall n \geqslant 1,\quad \sum_{k=1}^{n}q^{k} = q \sum_{k=0}^{n-1} = q \frac{1-q^{n}}{1-q}.
$$

Plus généralement, pour tout $n \geqslant m$, on a 
$$
    \begin{aligned}
        \sum_{k=m}^{n}q^{k} = q^{m} \sum_{k=0}^{n-m}q^{k} = q^{m}\frac{1-q^{n-m}}{1-q}.
    \end{aligned}
$$

:::

Cette technique permet aussi de calculer explicitement les restes des séries
géométriques convergentes:

::: {#exm-reste-geometrique}

Soit $q \in \mathbb{K}$ avec $|q|<1$. Alors 

$$ \forall n \geqslant 0, \sum_{k=n+1}^{+\infty} q^{k} =
q^{n+1}\sum_{k=0}^{+\infty} q^{k} = \frac{q^{n+1}}{1-q}. $$

:::

Les deux exemples précédent ne sont pas à connaitre par coeur, mais il faut
être capable de les retrouver très rapidement. 

<!-- séries numériques, convergence, reste, chasles, propriété des séries -->
<!-- convergentes, série géométrique, série des différence -->

## Séries à termes positifs {#sec-serie-terme-positif}

theoreme de comparaison pour les series à termes positifs, comparaison à une
intégrale, séries absolument convergentes


## Autres résultats de convergence
critère de d'Alembert, série alternée
