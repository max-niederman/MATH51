#import "../lib.typ": *

#show: homework.with(
    title: "Math 51 Homework #5"
)

= 16.1

== a

$x_(n+1)$, the number of customers of $P_1$ in year $n+1$,
is equal to the sum of the $0.85x_n$ customers who stayed with $P_1$ from the previous year
and the $0.08y_n$ who switched from $P_1$.
Written as an equation, this implies:

$ x_(n+1) = 0.85x_n + 0.08y_n $

Similarly for $y$, $y_(n+1)$ is equal to the sum of the $0.15x_n$ customers who switched from $P_1$ and the $0.92y_n$ who stayed with $P_2$:

$ y_(n+1) = 0.15x_n + 0.92y_n $

We can rewrite this system of linear equations as a matrix equation:

$
vname(v)_(n+1) = mat(
    0.85, 0.08;
    0.15, 0.92;
) vname(v)_n \
M = mat(
    0.85, 0.08;
    0.15, 0.92;
)
$

== b

The first row of $M^2$ describes the transformation (thought of as a $1 times 3$ matrix)
which takes the initial state vector $vname(v)_n$
to the scalar $x_(n+2)$ representing the number of customers of $P_1$ two years later.
As a scalar equation, it states

$ x_(n+2) = 0.7345x_n + 0.1416y_n $

== c

The two numbers appearing in the matrix
represent the relative frequency of customers of each of the two phone companies.

= 16.3

== a

First, in spring, $10%$ of the birds on $I_1$ migrate.
This corresponds to the matrix $B$.

Then, in fall, $10%$ of the birds on $I_2$ migrate.
This corresponds to the matrix $D$.

Multiplying these matrices together gives the matrix $M$:

$
M &= D B \
&= mat(
    1, 0.1;
    0, 0.9;
) mat(
    0.9, 0;
    0.1, 1;
) \
&= mat(
    0.91, 0.1;
    0.09, 0.9;
)
$

== b

$N$ is the matrix corresponding to the application of the migration pattern twice.
That is to say, $N = M^2$.

$
N &= M^2 \
&= mat(
    0.91, 0.1;
    0.09, 0.9;
) mat(
    0.91, 0.1;
    0.09, 0.9;
) \
&= mat(
    0.8281, 0.181;
    0.1719, 0.819;
)
$

== c

It means that the eventual populations of birds on $I_1$ and $I_2$
are independent of the initial populations of birds on $I_1$ and $I_2$,
given enough time (large $n$).

= 16.4

== a

$
A = mat(
    0.9, 0, 0.05;
    0, 0.9, 0.1;
    0.1, 0.1, 0.85;
)
$

== b

$M$ corresponds to the application of $A$ ten times, so $M = A^10$.

= 16.6

== c

$
A vname(v)_n
&= mat(
    1, -1;
    1, 0;
) vec(
    a_(n+1),
    a_n
) \
&= vec(
    a_(n+1) - a_n,
    a_(n+1)
) \
&= vec(
    a_(n+2),
    a_(n+1)
) \
&= vname(v)_(n+1)
$

$
A^6
&= (A^3)^2 \
&= (mat(
    1, -1;
    1, 0;
) mat(
    1, -1;
    1, 0;
) mat(
    1, -1;
    1, 0;
))^2 \
&= (mat(
    1, -1;
    1, 0;
) mat(
    0, -1;
    1, -1;
))^2 \
&= mat(
    -1, 0;
    0, -1;
)^2 \
&= mat(
    1, 0;
    0, 1;
) \
&= I_2
$

== d

$A$ is the matrix that takes $vname(v)_n$ to $vname(v)_(n+1)$,
so $A^6$ is the matrix which takes $vname(v)_n$ to $vname(v)_(n+6)$.
Then $A^6 = I_2$ implies that $vname(v)_(n+6) = I_2 vname(v)_n = vname(v)_n$.
The second components of these two vectors must therefore be equal,
so $a_(n+6) = a_n$.

We can verify this from the recurrence definition of the sequence:

$
a_(n+6)
&= a_(n+5) - a_(n+4) \
&= (a_(n+4) - a_(n+3)) - (a_(n+3) - a_(n+2)) \
&= a_(n+4) - 2a_(n+3) + a_(n+2) \
&= (a_(n+3) - a_(n+2)) - 2a_(n+3) + a_(n+2) \
&= -a_(n+3) \
&= -(a_(n+2) - a_(n+1)) \
&= -a_(n+2) + a_(n+1) \
&= -(a_(n+1) - a_n) + a_(n+1) \
&= a_n
$

= 16.7

== a

$
M &= mat(
    0.93, 0.03;
    0.07, 0.97;
) \
M' &= mat(
    0.95, 0.04;
    0.05, 0.96;
)
$

The first columns of $M$ and $M'$ represent
have two entries representing the probability that
an urban resident will remain in the city and move to the suburbs, respectively.
Similarly, the second columns represent whether suburban residents will move to the city or remain in the suburbs.

These matrices are correct because they correctly correspond to the probabilities given:

- $M e_1 = vec(0.93, 0.07)$, so 7% of urban residents of $C$ move to the suburbs and the rest (93%) stay.

- $M e_2 = vec(0.03, 0.97)$, so 3% of suburban residents $C$ move to the city and the rest (97%) stay. 

- $M' e_1 = vec(0.95, 0.05)$, so 5% of urban residents of $C'$ move to the suburbs and the rest (95%) stay.

- $M' e_2 = vec(0.04, 0.96)$, so 4% of suburban residents of $C'$ move to the city and the rest (96%) stay.

== b

The columns of $M^m$ both being $vec(.3, .7)$ implies that,
regardless of the initial distribution of residents of $C$,
the proportion of urban and suburban residents will eventually converge to $30%$ and $70%$, respectively.

Similarly, the columns of $M'^m$ both being $vec(.444, .556)$ implies that the population of $C'$ will be $44.4%$ urban and $55.6%$ suburban
given enough time.

The size the long-term effect was surprising to me,
although in retrospect it makes sense that a big proportional difference in small numbers would have a big effect.

= 17.1

$
f(x, y) &= vec(sin(x), e^(y x^2)) \
D(f)(x, y) &= mat(
    cos(x), 0;
    2 x y e^(y x^2), x^2 e^(y x^2);
) \
\
g(r, s, t) &= r s t \
D(g)(r, s, t) &= mat(s t, r t, r s) \
\
h(v) &= vec(v + sin(v), v + cos(v)) \
D(h)(v) &= mat(1 + cos(v); 1 - sin(v)) \
$

== a

$
D(h compose g)(r, s, t)
&= D(h)(g(r, s, t)) D(g)(r, s, t) \
&= mat(1 + cos(r s t); 1 - sin(r s t)) mat(s t, r t, r s) \
&= mat(
    s t (1 + cos(r s t)), r t (1 + cos(r s t)), r s (1 + cos(r s t));
    s t (1 - sin(r s t)), r t (1 - sin(r s t)), r s (1 - sin(r s t));
)
$

== b

$
D(f compose h)(vname(0))
&= D(f)(h(vname(0))) D(h)(vname(0)) \
&= D(f)(vec(0, 1)) mat(2; 1) \
&= mat(
    1, 0;
    0, 0;
) mat(2; 1) \
&= mat(2; 0)
$

== c

First by computing $g(f(x, y), x)$:
$
g(f(x, y), x)
&= g(sin(x), e^(y x^2), x) \
&= x e^(y x^2) sin(x) \

diff / (diff x) g(f(x, y), x)
&= diff / (diff x) x e^(y x^2) sin(x) \
&= e^(y x^2) diff / (diff x) x sin(x) + x sin(x) diff / (diff x) e^(y x^2) \
&= e^(y x^2) (x cos(x) + sin(x)) + x sin(x) (2 y x e^(y x^2)) \
&= x e^(y x^2) cos(x) + e^(y x^2) sin(x) + 2 y x^2 e^(y x^2) sin(x) \
$

Then by using the chain rule:

Let $F : RR^2 -> RR^3$ be defined as $ F(x, y) = vec(f_1(x, y), f_2(x, y), x) = vec(sin(x), e^(y x^2), x) $.

Then

$
g(f(x, y), x)
&= (g compose F)(x, y) \

diff / (diff x) g(f(x, y), x)
&= diff / (diff x) (g compose F)(x, y) \
&= D(g compose F)(x, y) vname(e)_1 \
&= D(g)(F(x, y)) D(F)(x, y) vname(e)_1 \
&= D(g)(vec(sin(x), e^(y x^2), x)) mat(
    cos(x), 0, 0;
    2 x y e^(y x^2), x^2 e^(y x^2), 0;
    0, 0, 1;
) vname(e)_1 \
&= mat(
    x e^(y x^2),
    x sin(x),
    e^(y x^2) sin(x),
) mat(
    cos(x), 0, 0;
    2 x y e^(y x^2), x^2 e^(y x^2), 0;
    1, 0, 0;
) vname(e)_1 \
&= mat(
    x e^(y x^2),
    x sin(x),
    e^(y x^2) sin(x),
) mat(
    cos(x);
    2 x y e^(y x^2);
    1;
) \
&= x e^(y x^2) cos(x) + 2 x^2 y e^(y x^2) sin(x) + e^(y x^2) sin(x)
$

= 17.4

== a

Formula (17.1.6) states that

$ (diff f) / (diff x_i) = sum_(k=1)^p (diff f) / (diff y_k) (diff y_k) / (diff x_i) $

Applying this to the given variables, we have

$
(diff f) / (diff r)
&= (diff f) / (diff x) (diff x) / (diff r) + (diff f) / (diff y) (diff y) / (diff r) \
&= (diff f) / (diff x) (2 r) + (diff f) / (diff y) s \
$

== b

$
(diff f) / (diff v)
&= (diff f) / (diff x) (diff x) / (diff v) + (diff f) / (diff y) (diff y) / (diff v) \
&=
(diff f) / (diff x) (
    (diff x) / (diff r) (diff r) / (diff v)
    + (diff x) / (diff s) (diff s) / (diff v)
)
+ (diff f) / (diff y) (
    (diff y) / (diff r) (diff r) / (diff v)
    + (diff y) / (diff s) (diff s) / (diff v)
) \

&= (diff f) / (diff x) (2 r + 4 s v)
+ (diff f) / (diff y) (s + 2 r v)
$

== c

$
(diff f) / (diff t)
&= (diff f) / (diff x) (diff x) / (diff t) + (diff f) / (diff y) (diff y) / (diff t) \

&= (diff f) / (diff x) (
    (diff x) / (diff r) (diff r) / (diff t)
    + (diff x) / (diff s) (diff s) / (diff t)
)
+ (diff f) / (diff y) (
    (diff y) / (diff r) (diff r) / (diff t)
    + (diff y) / (diff s) (diff s) / (diff t)
) \
\

(diff r) / (diff t)
&= (diff r) / (diff v) (diff v) / (diff t)
    + (diff r) / (diff w) (diff w) / (diff t)
=  1 dot 2 t + 1 dot 0
= 2 t \

(diff s) / (diff t)
&= (diff s) / (diff v) (diff v) / (diff t)
    + (diff s) / (diff w) (diff w) / (diff t)
= 2 v dot 2 t + 0 dot 0
= 4 v t \
\

(diff f) / (diff t)
&= (diff f) / (diff x) (4 r t + 8 s v t)
    + (diff f) / (diff y) (2 t s + 4 r v t)
$

= 17.5

== a

$
dif / (dif x) F(x, y)
&= D(F compose h)(x) \
&= D(F)(x, y) D(h)(x) \
&= mat(F_x (x, y), F_y (x, y)) mat(1; (dif y) / (dif x)) \
&= F_x (x, y) + (dif y) / (dif x) F_y (x, y) \
&= (dif y) / (dif x) F_y (x, y) \

(dif y) / (dif x) 
&= - (F_x (d, y)) / (F_y (x, y))
= - (diff F slash diff x) / (diff F slash diff y)
$

This also follows from the fact that the tangent line is orthogonal to the line with direction $nabla F$,
and the slope of a perpindicular line is the negative reciprocal of the slope of the original line.

== b

$
F(x, y) &= 2 x^3 y - y^5 x \
F_x (x, y) &= 6 x^2 y - y^5 \
F_y (x, y) &= 2 x^3 - 5 y^4 x \
\

(dif y) / (dif x)
&= - (F_x (1, 1)) / (F_y (1, 1)) \
&= - (6 - 1) / (2 - 5) \
&= 5 / 3 \
$

= 17.6

== a

Let $g_z (x, y) = vec(x, y, z(x, y))$, so that $f(x, y, z(x, y)) = (f compose g_z)(x, y)$.

Similarly, let
$g_x (y, z) = vec(x(y, z), y, z)$
and $g_y (x, z) = vec(x, y(x, z), z)$.

Then

$
D(f compose g_z)(x, y)
&= D(f)(g_z (x, y)) D(g_z)(x, y) \

0
&= mat(
    (diff f) / (diff x),
    (diff f) / (diff y),
    (diff f) / (diff z),
) mat(
    1, 0;
    0, 1;
    (diff z) / (diff x), (diff z) / (diff y);
) \

0
&= mat(
    (diff f) / (diff x),
    (diff f) / (diff y),
    (diff f) / (diff z),
) vec(0, 1, (diff z) / (diff y)) \
&= (diff f) / (diff y) + (diff f) / (diff z) (diff z) / (diff y) \

(diff f) / (diff z) (diff z) / (diff y) &= - (diff f) / (diff y) \
(diff z) / (diff y) &= - (diff f slash diff y) / (diff f slash diff z)
$

$
D(f compose g_x)(y, z)
&= D(f)(g_x (y, z)) D(g_x)(y, z) \

0
&= mat(
    (diff f) / (diff x),
    (diff f) / (diff y),
    (diff f) / (diff z),
) mat(
    (diff x) / (diff y), (diff x) / (diff z);
    1, 0;
    0, 1;
) \

0
&= mat(
    (diff f) / (diff x),
    (diff f) / (diff y),
    (diff f) / (diff z),
) vec((diff x) / (diff z), 0, 1) \
&= (diff x) / (diff z) (diff f) / (diff x) + (diff f) / (diff z) \

(diff x) / (diff z) (diff f) / (diff x) &= - (diff f) / (diff z) \
(diff x) / (diff z) &= - (diff f slash diff z) / (diff f slash diff x)
$

$
D(f compose g_y)(x, z)
&= D(f)(g_y (x, z)) D(g_y)(x, z) \

0
&= mat(
    (diff f) / (diff x),
    (diff f) / (diff y),
    (diff f) / (diff z),
) mat(
    1, 0;
    (diff y) / (diff x), (diff y) / (diff z);
    0, 1;
) \

0
&= mat(
    (diff f) / (diff x),
    (diff f) / (diff y),
    (diff f) / (diff z),
) vec(1, (diff y) / (diff x), 0) \
&= (diff f) / (diff x) + (diff f) / (diff y) (diff y) / (diff x) \

(diff f) / (diff y) (diff y) / (diff x) &= - (diff f) / (diff x) \
(diff y) / (diff x) &= - (diff f slash diff x) / (diff f slash diff y)
$


=== $(diff x) / (diff y)$ and $(diff y) / (diff x)$

We know from the third computation that:

$
(diff y) / (diff x)
= - (diff f slash diff x) / (diff f slash diff y)
$

We also know from the second computation that:

$
0
&= mat(
    (diff f) / (diff x),
    (diff f) / (diff y),
    (diff f) / (diff z),
) mat(
    (diff x) / (diff y), (diff x) / (diff z);
    1, 0;
    0, 1;
) \
$

So,

$
0
&= mat(
    (diff f) / (diff x),
    (diff f) / (diff y),
    (diff f) / (diff z),
) vec((diff x) / (diff y), 1, 0) \
&= (diff x) / (diff y) (diff f) / (diff x) + (diff f) / (diff y) \

(diff x) / (diff y) (diff f) / (diff x) &= - (diff f) / (diff y) \
(diff x) / (diff y) &= - (diff f slash diff y) / (diff f slash diff x)
$

And these two fractions are reciprocal:

$
- (diff f slash diff x) / (diff f slash diff y)
&= ((diff f slash diff y) / (diff f slash diff x))^(-1) \

(diff y) / (diff x)
&= ((diff x) / (diff y))^(-1)
$

== b

We substitute in the computed formulae and cancel:

$
(diff z) / (diff y)
(diff y) / (diff x)
(diff x) / (diff z)

&=
(- (diff f slash diff y) / (diff f slash diff z))
(- (diff f slash diff x) / (diff f slash diff y))
(- (diff f slash diff z) / (diff f slash diff x)) \

&=
(-1)^3
dot (diff f slash diff y) / (diff f slash diff z)
dot (diff f slash diff x) / (diff f slash diff y)
dot (diff f slash diff z) / (diff f slash diff x) \

&=
-1
dot cancel(diff f slash diff y) / cancel(diff f slash diff z)
dot cancel(diff f slash diff x) / cancel(diff f slash diff y)
dot cancel(diff f slash diff z) / cancel(diff f slash diff x) \

&= -1
$

== c

$
T &= (P V) / c \
(diff T) / (diff V) &= P/c \
\
V &= (c T) / P \
(diff V) / (diff P) &= - (c T) / P^2 \
\
P &= (c T) / V \
(diff P) / (diff T) &= c / V \
\
(diff T) / (diff V)
(diff V) / (diff P)
(diff P) / (diff T)
&=
(cancel(P)/cancel(c))
(- (cancel(c) T) / (cancel(P^2)))
(c / V) \
&=
- (T c) / (P V) \
&=
- (T c) / (T c) \
&= -1
$

= 17.7

Let $p : RR^(m + m) -> RR$
and $q : RR^n -> RR^(m + m)$
be defined as

$
p(vname(a), vname(b)) &= vname(a) dot vname(b) \
q(vname(x)) &= vec(f(vname(x)), g(vname(x))) \
$

(I'm being a bit sloppy with notation. To be clear, the $n$- and $m$-vectors are being _concatenated_ rather than structurally composed into a 2-vector.)

Then the derivative matrices of $p$ and $q$ are

$
D(p)(a_1, a_2, ..., a_m, b_1, b_2, ..., b_m) &= mat(
    b_1, b_2, ..., b_m,
    a_1, a_2, ..., a_m;
) \
D(q)(vname(x)) &= mat(
    D(f)(vname(x));
    D(g)(vname(x));
)
$

Then we can find the derivative matrix for $h = p compose q$ using the Chain Rule:

$
D(h)(vname(x))
&= D(p)(q(vname(x))) D(q)(vname(x)) \
&= mat(
    g_1(vname(x)), g_2(vname(x)), ..., g_m(vname(x)),
    f_1(vname(x)), f_2(vname(x)), ..., f_m(vname(x)),
) mat(
    D(f)(vname(x));
    D(g)(vname(x));
) \
&= mat(
    g_1(vname(x)), g_2(vname(x)), ..., g_m(vname(x)),
) D(f)(vname(x))
+ mat(
    f_1(vname(x)), f_2(vname(x)), ..., f_m(vname(x)),
) D(g)(vname(x)) \
&= g(vname(x))^T D(f)(vname(x)) + f(vname(x))^T D(g)(vname(x)) \
$

= 17.8

== a

$
(D_vname(v) f)(vname(a))
&= lr(dif / (dif t) bar)_(t=0) f(vname(a) + t vname(v)) \
&= lr(dif / (dif t) bar)_(t=0) (f compose g)(t) \
&= (D f)(g(0)) (D g)(0) \
&= (D f)(vname(a) + 0 vname(v)) (D g)(0) \
&= (D f)(vname(a)) vname(v) \
$

== b

Let $vname(c) = vec(1 slash sqrt(2), 1 slash sqrt(2))$ be the unit northeastern direction vector.

The slope is $(D_vname(c) f)(vname(a))$, which we can compute using the pervious result:

$
(D_vname(c) f)(vname(a))
&= (D f)(vname(a)) vname(c) \
&= (D f)(vec(1, 2)) vname(c) \
&= mat(
    2 pi cos(2 pi),
    pi cos(2 pi)
) vec(1 slash sqrt(2), 1 slash sqrt(2)) \
&= mat(
    2 pi, pi
) vec(1 slash sqrt(2), 1 slash sqrt(2)) \
&= (2 pi) / sqrt(2) + pi / sqrt(2) \
&= (3 pi) / sqrt(2)
$

= 17.12

== a

Let $c : RR^2 -> R$ be the function which takes vectors from polar coordinates to Cartesian coordinates:

$
c(r, theta) &= vec(r cos theta, r sin theta) \
(D c)(r, theta) &= mat(
    cos theta, -r sin theta;
    sin theta, r cos theta;
)
$

Then, we can use the Chain Rule to compute
the derivative matrix of $h = f compose c$:

$
(D h)(r, theta)
&= (D f)(c(r, theta)) (D c)(r, theta) \
&= mat(
    (diff f) / (diff x), (diff f) / (diff y);
) mat(
    cos theta, -r sin theta;
    sin theta, r cos theta;
) \

mat(
    (diff h) / (diff r), (diff h) / (diff theta);
)
&= mat(
    cos theta (diff f) / (diff x) + sin theta (diff f) / (diff y),
    -r sin theta (diff f) / (diff x) + r cos theta (diff f) / (diff y);
)
$

And seperating the columns on both sides gives

$
(diff h) / (diff r) = cos theta (diff f) / (diff x) + sin theta (diff f) / (diff y)
, #h(0.25in)
(diff h) / (diff theta) = -r sin theta (diff f) / (diff x) + r cos theta (diff f) / (diff y)
$

== b

$
1 &= sin^2 theta + cos^2 theta \
(diff f) / (diff y) &= sin^2 theta (diff f) / (diff y) + cos^2 theta (diff f) / (diff y) \
&=  sin theta cos theta (diff f) / (diff x)
  + sin^2 theta (diff f) / (diff y)
  + cos^2 theta (diff f) / (diff y)
  - sin theta cos theta (diff f) / (diff x) \
&= sin theta (cos theta (diff f) / (diff x) + sin theta (diff f) / (diff y))
  + 1 / r cos theta (r cos theta (diff f) / (diff y) - r sin theta (diff f) / (diff x)) \
&= sin theta (diff h) / (diff r)
    + 1 / r cos theta (diff h) / (diff theta) \
$

So one such pair of functions $g_1, g_2 : RR^2 -> RR$ is

$
g_1 (r, theta) = sin theta
, #h(0.25in)
g_2 (r, theta) = 1 / r cos theta
$