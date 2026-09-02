# Séries numériques

## Convergence d'une série numérique

::: {#def-serie}

Soit $(u_n)_{n\geqslant n_0}$ une suite de $\K$. On appelle \textbf{série de terme général $u_n$, $n\geqslant n_0$,} et on note $\displaystyle \sum_{n\geqslant n_0}u_n$ la suite $(S_n)_{n\geqslant n_0}$ des \textbf{sommes partielles} définies par

$$
\forall n\geqslant n_0,\quad S_n = \sum_{k=n_0}^{n}u_k.
$$

On dit que la série $\displaystyle \sum_{n\geqslant n_0}u_n$ \textbf{converge} si la suite de ses sommes partielles $(S_n)_{n\geqslant n_0}$ admet une limite finie. On note alors

$$
\sum_{n=n_0}^{+\infty}u_n = \lim_{n\to +\infty} \sum_{k=n_0}^{n}u_k.

$$
Le scalaire $\displaystyle \sum_{n=n_0}^{+\infty}u_n$ s'appelle la \textbf{somme} de la série $\displaystyle\sum_{n\geqslant n_0}u_n$.

Dans le cas contraire, on dit que la série $\displaystyle\sum_{n\geqslant n_0}u_n$ \textbf{diverge}. La convergence ou la divergence d'une série s'appelle sa \textbf{nature}. 

:::

::: {#exm-nature-convergente}

La série de terme général $(\frac{1}{2^{n}})_{n \geqslant 0}$ est convergente
et sa somme vaut $1$.

::: {.details}

Soit $n \geqslant 1$. On a 

$$
    \sum_{k=0}^{n} \frac{1}{2^{k}} = \frac{1-1/2^{n+1}}{1-1/2} \underset{n to + \infty}{\longrightarrow} =2.
$$

Donc la série de terme général $(1/2^{n})_{n\in \mathbb{N}}$ converge et $\sum_{n=0}^{+\infty}\frac{1}{2^{n}}=2$.

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


Soit $(u_n)_{n\geqslant n_0}$ une suite de $\K$. Alors pour tout $m\geqslant n_0$, les séries $\sum_{n\geqslant n_0}u_n$ et $\sum_{n\geqslant m}u_n$ ont *même nature* et, en cas de convergence, on a 

$$
\sum_{n=n_0}^{+\infty} u_n = \sum_{n=n_0}^{m_0} u_n + \sum_{n=m_0+1}^{+\infty} u_n.
$$

:::

::: {#nte-independance-premier-terme .callout-note}

On résume le résultat précédent en disant que *la nature d'une série ne dépend pas de ses premiers*. Ainsi, tant qu'on ne parle que la *nature* d'une série, on peut se contenter de la noter $\sum u_n$, sans préciser son point de départ.  

:::

Pour les séries, il existe des liens entre la convergence de la série et la convergence de son terme général ; c'est la notion de *divergence grossière*. 

<!-- séries numériques, convergence, reste, chasles, propriété des séries -->
<!-- convergentes, série géométrique, série des différence -->

## Séries à termes positifs

theoreme de comparaison pour les series à termes positifs, comparaison à une
intégrale, séries absolument convergentes


## Autres résultats de convergence
critère de d'Alembert, série alternée
