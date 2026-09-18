# Séries numériques

## Introduction {.unnumbered}

Ce chapitre est le pendant *discret* du chapitre précédent : les intégrales
deviennent des sommmes, les dérivées des différences, et il n'est plus question
de faire tendre $n$ vers autre chose que $+\infty$. A ce sujet, Euler écrit 
dans ses *Institutiones Calculi differentialis (1755)* :

> [...], en devenant infiniement petites, les différences finissent par être des
différentielles. De même alors les quantités que l'on appelait des sommes
prennent le nom d'intégrales.

L'architecture générale est très similaire : on définit la convergence d'une
somme infinie (une *série*) via ses *sommes partielles*, on établit les
propriétés de ces nouvelles sommes, on démontre des théorèmes de
comparaison, et on donne des séries de référence.

L'abscence de technique de calcul infinitésimal dans le cadre discret (on ne
peut pas dériver ou primitiver une fonction définie sur $\mathbb{N}$) est
compensé par des techniques d'*encadrement*.

La plupart des résultats disposent de leur analogue continue, ce qui facilite
leur apprentissage. D'autres sont propres aux séries ; c'est notamment le cas
du *critère de d'Alembert* et du *critère des séries alternées*, qui sont traités
dans une section à part.

## Convergence d'une série numérique

### Définitions

::: {#def-serie}

Soit $(u_n)_{n\geqslant n_0}$ une suite de $\mathbb{K}$. On appelle **série de
terme général $u_n$, $n\geqslant n_0$**, et on note $\displaystyle
\sum_{n\geqslant n_0}u_n$ la suite $(S_n)_{n\geqslant n_0}$ des **sommes
partielles** définies par

$$
\forall n\geqslant n_0,\quad S_n = \sum_{k=n_0}^{n}u_k.
$$

On dit que la série $\displaystyle \sum_{n\geqslant n_0}u_n$ **converge**
si la suite de ses sommes partielles $(S_n)_{n\geqslant n_0}$ admet une limite
finie. On note alors

$$
\sum_{n=n_0}^{+\infty}u_n = \lim_{n\to +\infty} \sum_{k=n_0}^{n}u_k.
$$ 

Le scalaire $\displaystyle \sum_{n=n_0}^{+\infty}u_n$ s'appelle la
**somme** de la série $\displaystyle\sum_{n\geqslant n_0}u_n$.

Dans le cas contraire, on dit que la série $\displaystyle\sum_{n\geqslant
n_0}u_n$ **diverge**. La convergence ou la divergence d'une série s'appelle
sa **nature**. 

:::

::: {#exm-nature-convergente}

La série de terme général $(\frac{1}{2^{n}})_{n \geqslant 0}$ est convergente
et sa somme vaut $1$.

::: {.details}

Soit $n \geqslant 1$. On a 

$$
    \sum_{k=0}^{n} \frac{1}{2^{k}} = \frac{1-1/2^{n+1}}{1-1/2} \underset{n \to + \infty}{\longrightarrow} =2.
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


Soit $(u_n)_{n\geqslant n_0}$ une suite de $\mathbb{K}$. Alors pour tout $m\geqslant
n_0$, les séries $\sum_{n\geqslant n_0}u_n$ et $\sum_{n\geqslant m}u_n$ ont
*même nature* et, en cas de convergence, on a 

$$
\sum_{n=n_0}^{+\infty} u_n = \sum_{n=n_0}^{m} u_n + \sum_{n=m_0+1}^{+\infty} u_n.
$$

:::

::: {#nte-independance-premier-terme .callout-note}

On résume le résultat précédent en disant que *la nature d'une série ne dépend
pas de ses premiers termes*. Ainsi, tant qu'on ne parle que la *nature* d'une série,
on peut se contenter de la noter $\sum u_n$, sans préciser son point de départ.  

:::

Dans le cas des séries, il existe un lien simple entre le terme général et les
sommes partielles, qui s'obtient par *telescopage*^[On peut de même
reconstruire l'intégrande par *dérivation* de l'intégrale partielle; c'est
l'analogue continue de ce résultat.]: 

$$
    \forall n > n_{0},\ u_{n} = \sum_{k=n_{0}}^{n} - \sum_{k=n_{0}}^{n-1}.
$$

Cette égalité mène la condition *nécessaire* de convergence suivante.

::: {#prp-condition-necessaire}

#### Une condition nécessaire de convergence

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

La série $\sum n$ étudiée dans l'@exm-nature-divergente est grossièrement
divergente (le calcul explicite de ses sommes partielles n'est donc même pas
nécessaire).

:::


Sauf exception -- essentiellement dans le cas des séries géométriques et des
séries télescopiques -- il n'est pas possible de calculer *explicitement* les
sommes partielles d'une série (on ne dispose même de la notion de *primitive*
utilisée en calcul intégrale). Il est donc tout aussi nécessaire de développer
des théorèmes de comparaison pour les séries; c'est l'objectif de la
@sec-serie-terme-positif.

On peut néanmoins facilement *approximer* la somme d'une série convergente via
ses sommes partielles qui, elles, sont calculables (au moins numériquement). La
différence entre la somme totale et une somme partielle porte le nom de
*reste*. Cette notion de sens que pour les séries convergentes.

::: {#def-reste}

Soit $\sum_{n\geqslant n_0} u_n$ une série convergente, de somme $S$. Pour tout 
$n \geqslant n_{0}$, on appelle *reste d'ordre $n$* de la série
$\sum_{n\geqslant n_0}u_n$ la quantité

$$
R_n = S - S_n = \sum_{k=n+1}^{+\infty}u_k.
$$

:::

::: {#fig-reste}

![](./tikz/svg/02-2a.svg)

Le reste d'une série convergente, définit par $S = S_{n} + R_{n}$. 

:::

::: {#prp-reste}

Le reste d'une série convergente tend vers $0$.

:::

::: {#exm-reste-geometrique}

On a vu que la série $\sum_{n \geqslant 0}\frac{1}{2^{n}}$ était convergente.
Pour tout $n \geqslant  0$, son reste d'ordre $n$ est donné par 

$$
\begin{aligned}
    R_{n} & = 2 - \sum_{k=0}^{n}\frac{1}{2^{k}}\\
          & = 2 - 2\left(1 - \frac{1}{2^{n+1}}\right)\\
          & = \frac{1}{2^{n}} \to 0.
\end{aligned}
$$

:::

::: {#nte-reste .callout-note}

Le reste $R_{n}$ représente l'*erreur algébrique* (i.e. avec signe) commise en
approximant $S$ par $S_n$. Il est donc intéressant de *majorer* $R_{n}$, à
défault d'être capable de le calculer explicitement (les séries alternées sont
remarquables sur ce point).

:::

### Calculer avec des séries convergentes

On s'intéresse maintenant aux propriétés qui permettent de *calculer* avec des
séries convergentes. Comme pour les intégrales généralisées, ce sont les mêmes
que celles de la somme usuelle, *sous réserve de convergence*.

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
v_{n},\quad \textit{(croissance de la somme)}
$$
3. la relation de Chasles est satisfaite pour les séries convergentes.

:::

### Séries géométriques et séries télescopiques

Dans cette section, on étudie deux types de séries très importantes pour
lesquelles on est capable de calculer explicitement les sommes partielles et la
somme en cas de convergence. 

::: {#def-serie-geometrique}

On appelle *série géométrique* de *raison* $q \in \mathbb{K}$ la série de terme général $q^{n}$.

:::

::: {#exm-serie-geometrique} 

La série $\sum \frac{1}{2^{n}}$ est une série géométrique de raison $\frac{1}{2}$.

:::

Les séries exponentielles sont englobées dans les séries
géométriques.

::: {#exm-serie-geometrique-2}

Pour tout $\alpha \in \mathbb{R}$, la série $\sum e^{-\alpha n}$ est une série
géométrique de raison $e^{-\alpha}$.

:::

::: {#prp-serie-geometrique}

Soit $q \in \mathbb{K}$. Alors 

1. si $q \neq 1$, on a  

$$
    \forall n \geqslant 0,\ \sum_{k=0}^{n}q^{k} = \frac{1-q^{n+1}}{1-q},
$$

2. la série $\sum q^{n}$ converge ssi $|q|<1$ et, dans ce cas,

$$
    \sum_{n=0}^{+\infty} q^{n} = \frac{1}{1-q}.
$$

:::

::: {#rem-cas-q-egal-un}

Le cas $q=1$ est simple ; la série est grossièrement divergente et 
$$
    \forall n \in \mathbb{N},\quad \sum_{k=0}^{n}q^{k} = \sum_{k=0}^{n}1 = n+1.
$$

:::

::: {#tip-autre-resultat-geometrique .callout-tip}

On retrouve tous les autres résultats relatifs aux séries géométriques dont le
premier terme n'est pas égal à $q^{0}=1$ en *mettant en facteur par le premier
terme de la somme*.

:::

::: {#exm-depart}

Si $q \neq 1$, on a 

$$
    \forall n \geqslant 1,\quad \sum_{k=1}^{n}q^{k} = q \sum_{k=0}^{n-1}q^{k} = q \frac{1-q^{n}}{1-q}.
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

Les deux exemples précédents ne sont pas à connaître par coeur, mais il faut
être capable de les retrouver très rapidement. 

::: {#exm-exponentielle-decroissante}

Nature de la série $\sum e^{-\alpha n}$ pour $\alpha \in \mathbb{R}$.

::: {.details}

Il s'agit d'une série géométrique de raison $e^{-\alpha}$. Celle si converge
ssi $|e^{-\alpha}| = e^{-\alpha}<1$ i.e. $\alpha>0$. 

Dans ce cas, on a d'ailleurs

$$
    \sum_{n=0}^{+\infty}e^{-\alpha n}= \frac{1}{1- \alpha}.
$$

:::

:::

Les *séries telescopiques* sont un autre exemple -- fréquent en pratique -- de
séries dont on sait calculer les sommes parielles. 

::: {#def-serie-telescopique}

Une **série telescopique** est une série de la forme $\sum (u_{n+1}-u_n)$, où
$(u_{n})$ est une suite de $\mathbb{K}$.

:::

::: {#thm-serie-telescopique}

La série telescopique $\sum (u_{n+1}-u_{n})$ converge ssi la *suite* $(u_{n})_{n
\in \mathbb{N}}$ converge. 

:::

::: {#rem-nouvel-outil}

Ce théorème est un nouvel outil pour étudier la convergence d'une suite: pour
montrer qu'une *suite* converge, on pourra s'intéresser à la *série* de ses
*différences*. C'est une approche souvent très fructueuse car on dispose de
théorèmes efficaces pour montrer la convergence d'une série. 

:::

::: {#exm-telescopique}

Convergence et somme de la série $\sum_{n\geqslant 1}\frac{1}{n(n+1)}$.

::: {.details}

On remarque que 

$$
    \forall n \in \mathbb{N}^{*},\ \frac{1}{n(n+1)} =
\frac{1}{n}-\frac{1}{n+1}.
$$

La série $\sum_{n \geqslant 1}\frac{1}{n(n+1)}$ est donc une série
*télescopique*, qui converge car $\frac{1}{n+1}$ converge lorsque $n
\to +\infty$. De plus, par telescopage,

$$
\forall n \geqslant 1,\ \sum_{k=0}^{n}\frac{1}{k(k+1)} = \frac{1}{n+1}-
1 \to 1 \quad \text{quand $n \to +\infty$.}
$$

Donc $\displaystyle\sum_{n=1}^{+\infty}\frac{1}{n(n+1)}=1$.

:::

:::

::: {#nte-theorem-fondamental-analyse .callout-note}

On peut voir dans l'égalité

$$
    \sum_{k=0}^{n} (u_{k+1}-u_{k}) = u_{n+1}-u_0
$$

un cas particulier discret du théorème fondamentale de l'analyse qui affirme
que si $f$ est une fonction de classe $C^{1}$ sur $[a,b]$, alors 

$$
    \int_{a}^{b}f'(t)dt = f(b)-f(a),
$$

la différence $u_{n+1}-u_{n}$ jouant le rôle de la dérivée de $f$
; dans les deux cas, le calcul de la somme partielle est immédiat ! 

On reverra ce type d'analogie en TD avec la transformation d'Abel, qui est aux
sommes ce que l'intégration par parties est aux intégrales. 

:::

## Séries à termes positifs {#sec-serie-terme-positif}

Dans cette section, on démontre le théorème de comparaison pour les séries à
termes positifs. De même que dans le cas des intégrales, ce théorème permettra
de démontrer la convergence d'une série sans avoir à calculer explicitement ses
sommes partielles.

A noter une différence importante avec les intégrales généralisées ; la notion
d'intégrabilité n'est pas au programme pour les suites. Il faudra donc
systématiquement se ramener à des séries *positives* ou au moins *de signe
constant* au voisinage de $+\infty$.

Comme pour les intégrales, le théorème de comparaison que nous allons démontrer
repose sur le théorème de la limite monotone, via le @lem-croissante-majore.

::: {#def-serie-terme-positif}

On dit qu'une série est à **termes positifs** si son terme général est positif
ou nul. 

:::


::: {#lem-croissante-majore}

Si la serie $\sum u_{n}$ est à termes *positifs*, la suite de ses sommes
partielles est *croissante*. La série $\sum u_{n}$ est donc convergente ssi ses sommes
partielles sont *majorées*.

:::

::: {#thm-comparaison-serie-terme-positif}

### Comparaison des séries à termes positifs

Soient $\sum u_{n}$ et $\sum v_{n}$ deux séries à termes *positifs*. Alors 

1. si  $u_{n} \leqslant Av_{n}$ avec $A \geqslant 0$, et si la série $\sum v_{n}$
   converge, alors $\sum u_{n}$ converge,
2. si $u_{n}=o(v_{n})$ et si $\sum v_{n}$ converge, alors $\sum u_{n}$
   converge,
3. si $u_{n} \sim v_{n}$, alors les séries $\sum u_{n}$ et $\sum v_{n}$ ont
   même nature.

:::

::: {#rem-voisinage}

Puisque la nature d'une série ne dépend pas de ses premiers termes, il suffit
que les hypothèses du théorème soient satisfaites *pour $n$ assez grand*.

Rappelons à cette occasion que les équivalents *préseservent les signes* .
Ainsi, si $u_{n} \sim v_{n}$ et si $u_{n} \geqslant 0$ pour $n$ assez grand,
alors $v_{n}$ sera également positive ou nulle au voisinage de $+\infty$.

:::

::: {#tip-equivalent .callout-tip}

Dans le cas de la relation $\sim$, on peut remplacer l'hypothèse de positivité
par l'hypothèse plus faible : $u_{n}$ (ou $v_{n}$) est de *signe constant* au
voisinage de $+\infty$.

:::


::: {#exm-comparaison-1} 

Nature de la série $\sum \ln \left(1+\frac{1}{2^{n}}\right)$.

::: {.details}

Puisque $\frac{1}{2^{n}}\to 0$ quand $n \to +\infty$, on a 

$$
    \ln \left(1+\frac{1}{2^{n}}\right) \sim \frac{1}{2^{n}} \geqslant 0.
$$

 
De plus, la série $\sum \frac{1}{2^{n}}$ est une série géométrique convergente
car $\left|\frac{1}{2}\right|<1$.

Donc par comparaison, la série $\sum \ln\frac{1}{2^{n}}$ converge.

:::

:::

::: {#wrn-signe .callout-warning}

Le théorème de comparaison est faux si les séries ne sont pas à termes positifs
(ou au moins de signe constant au voisinage de $+\infty$ pour la relation
$\sim$). Des exemples seront vus en TD.

:::


Pour pouvoir appliquer efficacement les théorèmes de comparaison, il faut un
certain nombre de séries de référence. Les séries géométriques et télescopiques
ne permettent pas de couvrir suffisamment de cas en pratique; il faut pouvoir
dire quelque chose de la nature des *séries de Riemann* de la forme $\sum
\frac{1}{n^\alpha}$. 

Contrairement au cas des intégrales, on ne peux pas calculer explicitement les
sommes partielles de ces séries. On se ramène au cas des intégrales de via le
résultat suivant. 

::: {#thm-comparaison-integrale}

Si $f:[n_0,+\infty[\to \mathbb{R}$ est une fonction *positive*, *continue* et
*décroissante*, alors la série $\displaystyle \sum_{n\geqslant n_0} f(n)$ et
l'intégrale $\int_{n_0}^{+\infty}f(t)dt$ ont même nature.  

:::

::: {#nte-comparaison-integrale .callout-note}

Le coeur de la démonstration repose sur l'encadrement 
$$
   \forall k \geqslant n_{0}+1,\ \int_{k}^{k+1} f(t)dt \leqslant f(k) \leqslant \int_{k-1}^{k}f(t)dt,
$$

ou, de manière équivalente,

$$
    \forall k \geqslant n_{0},\ f(k) \leqslant \int_{k}^{k+1}f(t)dt \leqslant f(k+1).
$$

Ces deux encadrements sont très clairs graphiquement (@fig-encadrement).

Il faut  être capable de les *redémontrer* rapidement en utilisant la
*monotonie* de la fonction $f$, et de les adapter au cas d'une fonction
*croissante*. 

C'est une technique usuelle et très efficace pour étudier les restes des séries
convergentes, ou les sommes partielles des séries divergentes. De nombreux
exemples seront vus en TD. 

::: {#fig-encadrement layout-ncol=2}

![$\int_{k}^{k+1} f(t)dt \leqslant f(k) \leqslant \int_{k-1}^{k}f(t)dt$](./tikz/svg/02-1a.svg)

![$f(k) \leqslant \int_{k}^{k+1}f(t)dt \leqslant f(k+1)$](./tikz/svg/02-1b.svg)

Les deux versions de l'encadrement fondamental utilisé dans les comparaison
séries-intégrales.

:::

:::

::: {#prp-serie-riemann}

#### Séries de Riemann

Soit $\alpha \in \mathbb{R}$. Alors la série $\sum \frac{1}{n^{\alpha}}$
converge ssi $\alpha>1$.

:::

::: {#exm-harmonique}

La série *harmonique* $\sum \frac{1}{n}$ diverge, mais la série $\sum
\frac{1}{n^{2}}$ converge.

:::

Comme pour le théorème de comparaison de fonctions positives, les théorèmes de
comparaison pour les séries à termes positifs restent incapables de traiter les
séries à termes complexes, ou les séries dont le terme général n'est pas de
signe constant au voisinage de $+\infty$.

Le remède est le même que pour les intégrales via la notion d'*absolue convergentes*. 

::: {#def-serie-absolument-convergente}

On dit que la série $\sum u_{n}$ est **absolument convergente** si a série
$\sum |u_{n}|$ converge.

:::

::: {#prp-absolue-convergence}

Si une série est absolument convergente, elle est convergente.

:::

Ce résultat, combiné au théorème de comparaison de séries à termes
positifs, permet de résoudre la plupart des cas rencontrés en pratique.

::: {#exm-abolue-convergence}

Nature de la série $\sum \frac{\cos n}{n^{2}}$.

::: {.details}

On a 

$$
    \forall n \geqslant 1,\ \left|\frac{\cos n}{n^{2}}\right| \leqslant
\frac{1}{n^{2}}.
$$

De plus, la série $\sum \frac{1}{n^{2}}$ est une série de Riemann convergente.
Donc par comparaison de séries à termes positifs, la série $\sum \frac{\cos
n}{n^{2}}$ converge *absoluement*, donc converge.

:::

:::

::: {#rem-integrable}

Contrairement au cas des fonctions, on ne dispose pas en TSI de la notion de suite
*intégrable*. La situation est donc comparativement plus simple ; on se ramenera
systématiquement à la notion d'absolue convergence, avec *un seul* théorème de
comparaison.

:::

## Autres résultats de convergence

Les deux résultats présentés dans cette section sont propres aux séries. Le
premier sera surtout utilisé dans le chapitre sur les séries entières. Le
second permet d'étudier les séries dont le signe du terme général *alterne*. Il
est surtout intéressant pour l'encadrement explicite qu'il fournit de la somme
à l'aide de ses sommes partielles d'indices pairs et impairs. 

### Le critère de d'Alembert

Le critère de d'Alembert s'applique aux séries $\sum u_{n}$ à termes
*strictement* positifs. Si ce n'est pas le cas, on peut toujours envisager de
l'appliquer à la série $\sum |u_{n}|$. Il est particulièrement adapté aux
séries dont le terme général s'exprime à l'aide de *quotients*, de
*produits*, et de *puissances*.

::: {#thm-critere-alembert}

#### Critère de d'Alembert

Soit $(u_{n})$ une suite de réels *strictement positifs*. On suppose que le
quotient $\frac{u_{n+1}}{u_{n}}$ tend vers une limite finie $\lambda \geqslant
0$. Alors

1. si $\lambda > 1$, la série $\sum u_{n}$ diverge grossièrement,
2. si $0 \leqslant \lambda < 1$, la série $\sum u_{n}$ converge,
3. si $\lambda = 1$, le critère de d'Alembert ne permet pas de conclure.

:::

::: {#exm-factoriel}

Nature de la série $\sum \frac{n^{n}}{n!}$. 

::: {.details}

Posons, pour tout $n \in \mathbb{N}$, $u_{n}=\frac{n^{n}}{n!}$. On a alors
$u_{n}>0$ et

$$
\begin{aligned}
    \forall n \in \mathbb{N},\ \frac{u_{n+1}}{u_{n}} & = \frac{1}{n+1}\frac{(n+1)^{n+1}}{n^{n}}\\
                                                     & = \left(1+\frac{1}{n}\right)^{n}.
\end{aligned}
$$

En passant sous forme exponentielle, on a par ailleurs

$$
    \left(1+\frac{1}{n}\right)^{n}=e^{n \ln
    \left(1+\frac{1}{n}\right)}=e^{1+o(1)} \to e>1.
$$

Donc la série $\sum \frac{n^{n}}{n!}$ est grossièrement divergente.

:::

:::

### Critère des séries alternées

Le critère des séries alternées permet d'étudier les séries dont le signe du
terme général *alterne*, d'où son nom. En plus du résultat de *convergence*, il
faut retenir l'*encadrement* de la somme par ses sommes partielles en cas de
convergence.

::: {#thm-alterne}

#### Critère des séries alternées

Soit $(u_{n})$ une suite réelle *monotone* de *limite nulle*. Alors la série
$\sum (-1)^{n}u_{n}$ *converge* et sa somme $S$ est encadrée par les sommes
partielles d'indices pairs et impairs, qui forment deux suites *adjacentes*. En
particulier, le reste $R_{n}$ de la série $\sum (-1)^{n} u_{n}$ est du signe de
son *premier terme*, et $|R_{n}|\leqslant |u_{n+1}|$.

:::

::: {#exm-serie-alterne}

Montrer que la série $\sum_{n \geqslant 0} \frac{(-1)^{n}}{n+1}$ converge et donner une
approximation à $10^{-3}$ près de sa somme. 

::: {.details}

Le critère des séries alternées s'applique car $\frac{1}{n+1}$ tend vers
$0$ en décroissant. La série $\sum \frac{(-1)^{n}}{n+1}$ est donc convergente.
De plus $R_{999}$ est *positif* et 

$$
    0 \leqslant R_{999} \leqslant \frac{1}{1000}.
$$

Donc $S_{999}$ est une approximation à $10^{-3}$ près par *défaut* de $S$.

::: {#fig-approximation}

![](./tikz/svg/02-2b.svg)

$S_{999}$ est une approximation par *défaut* de $S$.

:::

On obtient numériquement

$$
S_{999} = 0.6926...
$$

Donc une approximation^[On calculera la valeur exacte de cette somme en TD.] à
$10^{-3}$ près de $S$ est $0,693$ (on a arrondit par *excès* pour se rapprocher
de $S$).

:::

:::

\newpage

## Exercices {.unnumbered}

{{< include ./td/02.md >}}
