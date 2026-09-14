
Le résultat suivant permet de calculer en passant par les nombres complexes.
Cette opération est fréquente quand on manipule des fonctions trigonamétrique
(formule de Moivre est d'Euler).

::: {#prp-complexe}

Soit $f:I \to \mathbb{C}$. Alors l'intégrale de $f$ sur $I$ converge ssi les
deux intégrales $\int_I \mathrm{Re}f$ et $\int_I\mathrm{Im}f$ converge et, dans
ce cas, on a 

$$
    \int_I f = \int_I \mathrm{Re}f + i \int_{I}\mathrm{Im}f.
$$

:::

::: {#exm-complexe}

Convergence et valeur de $\int_{0}^{+\infty}e^{-at}cos(bt)dt$ pour $a>0$ et $b
\in \mathbb{R}$.

::: {.details}

Sous réserve de convergence, 

$$
    \int_{0}^{+\infty}e^{-at}\cos(bt)dt = \mathrm{Re}\left(\int_{0}^{+\infty}e^{(-a+ib)t}dt\right).
$$

Or, 

$$
\begin{aligned}
\forall x \geqslant 0, \int_{0}^{x}e^{(-a+ib)t}dt &= \left[\frac{e^{(-a+ib)t}}{-a+ib}\right]_0^{x}\\ 
&= \frac{1}{a-ib}(1-e^{(-a+ib)x}),
\end{aligned}
$$

et 

$$
    |e^{(-a+ib)x}| = e^{-ax} \underset{x \to +\infty}{\to} 0, \quad \text{car
    $a>0$.}
$$

Donc l'intégrale $\int_{0}^{+\infty}e^{(-a+ib)t}dt$ converge et vaut
$\frac{1}{a-ib}$. L'intégrale initiale est donc *bien* convergente et on
obtient la partie réelle en multipliant haut et bas par la quantité complexe
conjuguée, ce qui donne

$$
    \int_{0}^{+\infty}e^{-at}\cos(bt)dt = \frac{a}{a^{2}+b^{2}}.
$$

:::

:::
