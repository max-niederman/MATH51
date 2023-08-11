#import "../lib.typ": *

#show: homework.with(
    title: "Math 51 Homework #6",
)

= 18.2

$B$ and $B'$ are inverses of the $n times n$ matrix $A$.

$
B A B' &= B A B' \
(B A) B' &= B (A B') \
I_n B' &= B I_n \
B' &= B
$

= 18.3

== a

Since $A$ is $2 times 2$,
we can use the formula for the inverse of a $2 times 2$ matrix.

$
A^(-1)
&= 1 / (a d - b c) mat(
    d, -b;
    -c, a;
) \
&= 1 / (a d) mat(
    d, 0;
    0, a;
) \
$

If $a d = 0 iff a, d = 0$, then $A$ is invertible;
but otherwise, we can further simpify:

$
A^(-1) &= mat(
    1 / a, 0;
    0, 1 / d;
)
$

So if $a, d != 0$, then $A$ is invertible.
and its inverse is the diagonal matrix
whose diagonal entries are the reciprocals of the entries of $A$.
Geometrically, this corresponds to a transformation
which "squeezes" $RR^2$ inwards
by a factor of $1 / a$ in the $x$ direction
and a factor of $1 / d$ in the $y$ direction.

== b

If $a = 0$,
we have

$
A &= mat(
    0, 0;
    0, d;
) \
A vname(e)_1 &= vname(0)
$

And similarly if $d = 0$,
we have

$
A &= mat(
    a, 0;
    0, 0;
) \
A vname(e)_2 &= vname(0)
$

So in either case,
$A$ is not invertible.

== c

If $forall i <= n : d_i != 0$,
let the $n times n$ matrix $M$ be defined as

$
M &= mat(
    1 / d_1, 0, ..., 0;
    0, 1 / d_2, ..., 0;
    dots.v, dots.v, dots.down, dots.v;
    0, 0, ..., 1 / d_n;
)
$

Both $D$ and $M$ are diagonal,
so they commute
and we can compute their product
by simply multiplying their diagonals entry-wise:

$
D M = M D = mat(
    d_1 / d_1, 0, ..., 0;
    0, d_2 / d_2, ..., 0;
    dots.v, dots.v, dots.down, dots.v;
    0, 0, ..., d_n / d_n;
) = I_n
$

Therefore $M$ and $D$ are inverses of each other,
so $D^(-1)$ is given by the expression

$
D^(-1) &= M \
&= mat(
    1 / d_1, 0, ..., 0;
    0, 1 / d_2, ..., 0;
    dots.v, dots.v, dots.down, dots.v;
    0, 0, ..., 1 / d_n;
)
$

If, on the other hand,
there is an $i$ such that $d_i = 0$,
$D$ can be written in terms of its columns:

$
D &= mat(
    d_1 vname(e)_1,
    d_2 vname(e)_2,
    ...,
    d_i vname(e)_i,
    ...,
    d_n vname(e)_n;
) \
&= mat(
    d_1 vname(e)_1,
    d_2 vname(e)_2,
    ...,
    vname(0),
    ...,
    d_n vname(e)_n;
)
$

So we can multiply $D$ by $vname(e)_i$ to get $vname(0)$,

$
D vname(e)_i &= vname(0)
$

And therefore $D$ is not invertible.

= 18.7

== a

To check that $M_a$ and $M_(-a)$ are inverses of each other,
we can compute their product for the general case of $a in RR$:

$
M_(-a) M_a
&= mat(
    1, -a, 0;
    0, 1, 0;
    0, 0, 1;
) mat(
    1, a, 0;
    0, 1, 0;
    0, 0, 1;
) \
&= mat(
    1, a - a, 0;
    0, 1, 0;
    0, 0, 1;
) \
&= mat(
    1, 0, 0;
    0, 1, 0;
    0, 0, 1;
) \
&= I_3
$

So $M_a$ and $M_(-a)$ are indeed inverses of each other.

== b

To check that $N_b$ and $N_(-b)$ are inverses of each other,
we can compute their product for the general case of $b in RR$:

$
N_(-b) N_b
&= mat(
    1, 0, 0;
    0, 1, -b;
    0, 0, 1;
) mat(
    1, 0, 0;
    0, 1, b;
    0, 0, 1;
) \
&= mat(
    1, 0, 0;
    0, 1, b - b;
    0, 0, 1;
) \
&= mat(
    1, 0, 0;
    0, 1, 0;
    0, 0, 1;
) \
&= I_3
$

So $N_b$ and $N_(-b)$ are indeed inverses of each other.

== c

For any $a, b in RR$, we have:

$
mat(
    1, a, 0;
    0, 1, b;
    0, 0, 1;
) = N_b M_a
$

This is because left-multiplication by $M_a$ is equivalent to
adding $a$ times the second row to the first row,
and left-multiplication by $N_b$ is equivalent to
adding $b$ times the third row to the second row.
Therefore, we need $M_a$ to be applied before $N_b$,
so that the second row is not modified before it is added to the first row.

Knowing this, we can compute the inverse:

$
mat(
    1, a, 0;
    0, 1, b;
    0, 0, 1;
)^(-1)
&= (N_b M_a)^(-1) \
&= M_a^(-1) N_b^(-1) \
&= M_(-a) N_(-b) \
&= mat(
    1, -a, 0;
    0, 1, 0;
    0, 0, 1;
) mat(
    1, 0, 0;
    0, 1, -b;
    0, 0, 1;
) \
&= mat(
    1, -a, a b;
    0, 1, -b;
    0, 0, 1;
)
$

= 18.8

== a

$
(D f)(x, y)
&= mat(
    (diff f_1) / (diff x), (diff f_1) / (diff y);
    (diff f_2) / (diff x), (diff f_2) / (diff y);
) \
&= mat(
    3 x^2 - 3 y^2, -6 x y;
    6 x y, 3 x^2 - 3 y^2;
)
$

== b

$
vname(a)_1 &= vec(2 / 3, 1 / 3) \

(D f)(vname(a)_1)
&= mat(
    3 (2 / 3)^2 - 3 (1 / 3)^2, -6 (2 / 3) (1 / 3);
    6 (2 / 3) (1 / 3), 3 (2 / 3)^2 - 3 (1 / 3)^2;
) \
&= 1 / 9 mat(
    3(2)^2 - 3(1)^2, -6(2)(1);
    6(2)(1), 3(2)^2 - 3(1)^2;
) \
&= 1 / 9 mat(
    9, -12;
    12, 9;
) \
&= 1 / 3 mat(
    3, -4;
    4, 3;
) \
(D f)(vname(a)_1)^(-1)
&= 3 dot 1 / ((3)(3) - (-4)(4)) mat(
    3, 4;
    -4, 3;
) \
&= 3 dot 1 / 25 mat(
    3, 4;
    -4, 3;
) \
&= 3 / 25 mat(
    3, 4;
    -4, 3;
) \
$

$
vname(a)_2
&= vname(a)_1 - (D f)(vname(a)_1)^(-1) f(vname(a)_1) \
&= vec(2 / 3, 1 / 3) - 3 / 25 mat(
    3, 4;
    -4, 3;
) vec(
    (2 / 3)^3 - 3 (2 / 3) (1 / 3)^2 - 1,
    3 (2 / 3)^2 (1 / 3) - (1 / 3)^3
) \
&= vec(2 / 3, 1 / 3) - 3 / 25 mat(
    3, 4;
    -4, 3;
) (1 / 27 vec(
    8 - 6 - 27,
    12 - 1
)) \
&= vec(2 / 3, 1 / 3) - 1 / 225 mat(
    3, 4;
    -4, 3;
) vec(
    -25,
    11
) \
&= vec(2 / 3, 1 / 3) - 1 / 225 vec(
    - 75 + 44,
    100 + 33
) \
&= 1 / 225 vec(150, 75)
- 1 / 225 vec(-31, 133) \
&= 1 / 225 vec(181, -58) \
&approx vec(
    #repr(calc.round(181 / 225, digits: 3)),
    #repr(calc.round(-58 / 225, digits: 3)),
)
$

== c

$
||vname(a)_2 - vec(1, 0)||
&= ||vec(
    181 / 225 - 1,
    -58 / 225 - 0
)|| \
&= ||vec(
    44 / 225,
    -58 / 225
)|| \
&= 1 / 225 ||vec(
    44,
    -58
)|| \
&= 1 / 225 sqrt(44^2 + (-58^2)) \
&= 1 / 225 sqrt(#repr(44*44 + 58*58)) \
&approx #repr(calc.round(1 / 225 * calc.sqrt(44*44 + 58*58), digits: 2))
$

$
||vname(a)_1 - vec(1, 0)||
&= ||vec(
    2 / 3 - 1,
    1 / 3 - 0
)|| \
&= ||vec(
    -1 / 3,
    1 / 3
)|| \
&= 1 / 3 ||vec(
    -1,
    1
)|| \
&= 1 / 3 sqrt(1^2 + 1^2) \
&= sqrt(2) / 3 \
&approx #repr(calc.round(calc.sqrt(2) / 3, digits: 2))
$

$vname(a)_2$ is closer to $vec(1, 0)$ than $vname(a)_1$ is.

= 19.5

== a

$
vname(v)'_1
&= vname(e)_1 - Proj_vname(v) vname(e)_1 \
&= vname(e)_1 - (vname(e)_1 dot vname(v)) / (vname(v) dot vname(v)) vname(v) \
&= vec(1, 0, 0) - 2 / 30 vec(2, -1, 5) \
&= vec(
    13 / 15,
    1 / 15,
    - 1 / 3
)
= 1 / 15 vec(
    13,
    1,
    - 5
) \
$

$
vname(v)'_2
&= vname(e)_2 - Proj_vname(v) vname(e)_2 \
&= vname(e)_2 - (vname(e)_2 dot vname(v)) / (vname(v) dot vname(v)) vname(v) \
&= vec(0, 1, 0) + 1 / 30 vec(2, -1, 5) \
&= vec(
    1 / 15,
    29 / 30,
    1 / 6
)
= 1 / 30 vec(
    2,
    29,
    5
)
$

$
vname(v)'_3
&= vname(e)_3 - Proj_vname(v) vname(e)_3 \
&= vname(e)_3 - (vname(e)_3 dot vname(v)) / (vname(v) dot vname(v)) vname(v) \
&= vec(0, 0, 1) - 5 / 30 vec(2, -1, 5) \
&= vec(0, 0, 1) - 1 / 6 vec(2, -1, 5) \
&= vec(
    - 1 / 3,
    1 / 6,
    1 / 6
)
= 1 / 6 vec(
    - 2,
    1,
    1
)
$

Safety check that they are orthogonal to $v$:

$
vname(v)'_1 dot vname(v) = 1 / 15 (13 dot 2 + 1 dot -1 - 5 dot 5) = 1 / 15 (0) = 0 \
vname(v)'_2 dot vname(v) = 1 / 30 (2 dot 2 + 29 dot -1 + 5 dot 5) = 1 / 30 (0) = 0 \
vname(v)'_3 dot vname(v) = 1 / 6 (- 2 dot 2 + 1 dot -1 + 1 dot 5) = 1 / 6 (0) = 0 \
$

== b

=== $vname(v)'_1$ and $vname(v)'_2$

$
alpha_1 vec(13, 1, -5) + alpha_2 vec(2, 29, 5) = vname(0) \
alpha_1 = -29 alpha_2 \
-5(-29 alpha_2) + 5 alpha_2 = 0 \
5 alpha_2 = 5(-29 alpha_2) \
alpha_2 = -29 alpha_2 \
alpha_2 = 0 \
alpha_1 = 0
$

So $vname(v)'_1$ and $vname(v)'_2$ are linearly independent.

=== $vname(v)'_1$ and $vname(v)'_3$

$
alpha_1 vec(13, 1, -5) + alpha_2 vec(-2, 1, 1) = vname(0) \
alpha_1 = - alpha_2 \
-5(- alpha_2) + alpha_2 = 0 \
6 alpha_2 = 0 \
alpha_2 = 0 \
alpha_1 = 0
$

So $vname(v)'_1$ and $vname(v)'_3$ are linearly independent.

=== $vname(v)'_2$ and $vname(v)'_3$

$
alpha_1 vec(2, 29, 5) + alpha_2 vec(-2, 1, 1) = vname(0) \
5 alpha_1 + alpha_2 = 0 \
alpha_2 = -5 alpha_1 \
2 alpha_1 -2 (-5 alpha_1) = 0 \
12 alpha_1 = 0 \
alpha_1 = 0 \
alpha_2 = 0
$

So $vname(v)'_2$ and $vname(v)'_3$ are linearly independent.

== c

We will call the vectors generated by Gram-Schmidt $vname(w)_3$ and $vname(w)_1$,
so the orthogonal basis is ${ vname(w)_3, vname(w)_1 }$.

$vname(w)_3$ is just $vname(v)'_3$,
so we compute $vname(w)_1$ as follows:

First, let us compute $vname(v)'_3 dot vname(v)'_3$ and $vname(v)'_3 dot vname(v)'_1$,
which will be useful later:

$
vname(v)'_3 dot vname(v)'_3
&= (1 / 6 vec(
    - 2,
    1,
    1
)) dot (1 / 6 vec(
    - 2,
    1,
    1
)) \
&= 1 / 36 (4 + 1 + 1) \
&= 1 / 36 (6) \
&= 1 / 6
$

$
vname(v)'_3 dot vname(v)'_1
&= (1 / 6 vec(
    - 2,
    1,
    1
)) dot (1 / 15 vec(
    13,
    1,
    - 5
)) \
&= 1 / 90 (- 26 + 1 - 5) \
&= 1 / 90 (- 30) \
&= - 1 / 3
$

Then we can project $vname(v)'_1$ onto $vname(w)_3$ to get $vname(w)_1$:

$
vname(w)_1
&= vname(v)'_1 - Proj_vname(w)_3 vname(v)'_1 \
&= vname(v)'_1 - Proj_(vname(v)'_3) vname(v)'_1 \
&= vname(v)'_1 - (vname(v)'_1 dot vname(v)'_3) / (vname(v)'_3 dot vname(v)'_3) vname(v)'_3 \
&= 1 / 15 vec(13, 1, -5) -
(- 1 / 3) slash (1 / 6) (1 / 6 vec(- 2, 1, 1)) \
&= 1 / 15 vec(13, 1, -5) +
1 / 3 vec(- 2, 1, 1) \
&= 1 / 15 vec(
    13 + 5(-2),
    1 + 5(1),
    -5 + 5(1)
)
= 1 / 15 vec(
    -3,
    6,
    0
)
= 1 / 5 vec(
    -1,
    2,
    0
)
$

We can verify that $vname(w)_1$ and $vname(w)_3$ are orthogonal:

$
vname(w)_3 dot vname(w)_1
&= (1 / 6 vec(-2, 1, 1)) dot (1 / 5 vec(-1, 2, 0)) \
&= 1 / 30 (- 2 dot -1 + 1 dot 2 + 1 dot 0) \
&= 1 / 30 (-2 + 2) \
&= 0
$

So one orthogonal basis for $L^(perp)$ is ${ 1 / 6 vec(-2, 1, 1), 1 / 5 vec(-1, 2, 0) }$.

= 19.7

#[  
    #let rows = ( 
        (1, 5, 9, -7),
        (-1, 2, 5, -7),
        (3, 0, -3, 9),
        (2, 1, 0, 4),
    )
    #let columns = transposeArray(rows)

    #let vs = columns.map(entries => math.vec(..entries.map(repr)))
    #let colVec = j => math.vec(..columns.at(j).map(repr))

    $
    vname(v)_1 &= #colVec(0),
    vname(v)_2 &= #colVec(1),
    vname(v)_3 &= #colVec(2),
    vname(v)_4 &= #colVec(3)
    $

    == a

    #let proveLinearDependence = (coefficients) => { 
        let terms = format => coefficients
                        .enumerate()
                        .map(((j, c)) => format(c, j));

        $
        &#terms((c, j) => $(#c) vname(v)_#j$).join($+$) \
        = &#terms((c, j) => $(#c) #colVec(j)$).join($+$) \
        = &#math.vec(
            ..rows
                .map(row => coefficients
                        .zip(row)
                        .map(((c, e)) => $(#c) (#e)$)
                        .join($+$))
        ) \
        = &#math.vec(
            ..rows
                .map(row => coefficients
                        .zip(row)
                        .map(((a, b)) => a * b)
                        .sum())
                .map(repr)
        ) \
        = &vname(0)
        $
    }

    #proveLinearDependence((3, 2, -3, -2))
    #v(0.5in)
    #proveLinearDependence((-5, 6, -2, 1))

    #pagebreak()

    == b

    $
    3 vname(v)_1 + 2 vname(v)_2 - 3 vname(v)_3 - 2 vname(v)_4 &= vname(0) \
    -5 vname(v)_1 + 6 vname(v)_2 - 2 vname(v)_3 + vname(v)_4 &= vname(0)
    \
    -7 vname(v)_1 + 14 vname(v)_2 - 7 vname(v)_3 &= vname(0) \
    7 vname(v)_3 &= -7 vname(v)_1 + 14 vname(v)_2 \
    vname(v)_3 &= -vname(v)_1 + 2 vname(v)_2 \
    \
    3 vname(v)_1 + 2 vname(v)_2 - 3 vname(v)_3 - 2 vname(v)_4 &= vname(0) \
    -5 vname(v)_1 + 6 vname(v)_2 - 2 vname(v)_3 + vname(v)_4 &= vname(0)
    \
    6 vname(v)_1 + 4 vname(v)_2 - 6 vname(v)_3 - 4 vname(v)_4 &= vname(0) \
    15 vname(v)_1 - 18 vname(v)_2 + 6 vname(v)_3 - 3 vname(v)_4 &= vname(0) \
    21 vname(v)_1 - 14 vname(v)_2 - 7 vname(v)_4 &= vname(0) \
    7 vname(v)_4 &= 21 vname(v)_1 - 14 vname(v)_2 \
    vname(v)_4 &= 3 vname(v)_1 - 2 vname(v)_2 \
    $

    == c

    $
    -vname(v)_1 + 2 vname(v)_2
    &= - #colVec(0) + 2 #colVec(1) \
    &= vec(
        9,
        5,
        -3,
        0
    ) \
    &= vname(v)_3
    $

    $
    3 vname(v)_1 - 2 vname(v)_2
    &= 3 #colVec(0) - 2 #colVec(1) \
    &= vec(
        -7,
        -7,
        9,
        4
    ) \
    &= vname(v)_4
    $
]


= 19.8

== a

$
&(a_1 - 3 t) vname(v)_1
+ (a_2 + 7 t) vname(v)_2
+ (a_3 - 5 t) vname(v)_3
+ (a_4 + 2 t) vname(v)_4 \

=
& a_1 vname(v)_1 + a_2 vname(v)_2 + a_3 vname(v)_3 + a_4 vname(v)_4
- 3 t vname(v)_1 + 7 t vname(v)_2 - 5 t vname(v)_3 + 2 t vname(v)_4 \

=
& a_1 vname(v)_1 + a_2 vname(v)_2 + a_3 vname(v)_3 + a_4 vname(v)_4
+ t (- 3 vname(v)_1 + 7 vname(v)_2 - 5 vname(v)_3 + 2 vname(v)_4) \

=
& a_1 vname(v)_1 + a_2 vname(v)_2 + a_3 vname(v)_3 + a_4 vname(v)_4
+ t vname(0) \

=
& a_1 vname(v)_1 + a_2 vname(v)_2 + a_3 vname(v)_3 + a_4 vname(v)_4
$

== b

Let $(a_1, a_2, a_3, a_4) = (-2, 4, 3, -5)$. Then, we choose a nonzero value for $t$:

$
& -2 vname(v)_1 + 4 vname(v)_2 + 3 vname(v)_3 - 5 vname(v)_4 \

= & (-2 - 3 (1)) vname(v)_1 + (4 + 7 (1)) vname(v)_2 + (3 - 5 (1)) vname(v)_3 + (-5 + 2 (1)) vname(v)_4 \

= & -5 vname(v)_1 + 11 vname(v)_2 - 2 vname(v)_3 - 3 vname(v)_4 \
$

So $(b_1, b_2, b_3, b_4) = (-5, 11, -2, -3)$. Then, we choose another nonzero value for $t$:

$
& -2 vname(v)_1 + 4 vname(v)_2 + 3 vname(v)_3 - 5 vname(v)_4 \

= & (-2 - 3 (-1)) vname(v)_1 + (4 + 7 (-1)) vname(v)_2 + (3 - 5 (-1)) vname(v)_3 + (-5 + 2 (-1)) vname(v)_4 \

= & 1 vname(v)_1 - 3 vname(v)_2 + 8 vname(v)_3 - 7 vname(v)_4 \
$

So $(b_1, b_2, b_3, b_4) = (1, -3, 8, -7)$.

== c

Suppose that there were such coefficients $a_i$ and $b_i$.

Then, we have that

$
a_1 vname(v)_1 + a_2 vname(v)_2 + a_3 vname(v)_3 + a_4 vname(v)_4
&=
b_1 vname(v)_1 + b_2 vname(v)_2 + b_3 vname(v)_3 + b_4 vname(v)_4 \

(a_1 - b_1) vname(v)_1 + (a_2 - b_2) vname(v)_2 + (a_3 - b_3) vname(v)_3 + (a_4 - b_4) vname(v)_4
&= vname(0) \
$

But since $(a_1, a_2, a_3, a_4) != (b_1, b_2, b_3, b_4)$,
at least one of $a_i - b_i$ is nonzero.

Therefore, the vectors $vname(v)_1, vname(v)_2, vname(v)_3, vname(v)_4$
are linearly dependent.
This is a contradiction,
so the premise that there exist such coefficients $a_i$ and $b_i$ is false.

= 20.3

== a

$A$ is orthogonal because its columns are mutually orthogonal

$ vec(1, -2) dot vec(2, 1) = 1 dot 2 - 2 dot 1 = 0 $

and all unit vectors:

$
||1 / sqrt(5) vec(1, -2)||
&= sqrt(1^2 + (-2)^2) / sqrt(5)
= sqrt(5) / sqrt(5) &= 1 \

||1 / sqrt(5) vec(2, 1)||
&= sqrt(2^2 + 1^2) / sqrt(5)
= sqrt(5) / sqrt(5) &= 1
$.

Therefore, its inverse is just its transpose:

$
A^(-1)
= A^T
= 1 / sqrt(5) mat(
    1, -2;
    2, 1;
)
$

== b

$B$ is not orthogonal
because its first column has length $sqrt(1^2 + 1^2 + 1^2 + 1^2) = sqrt(4) = 2 != 1$.

== c

The columns of $B'$ must be unit vectors,
so $B'$ is orthogonal iff its columns are mutually orthogonal.

By examining all 6 unordered pairs of columns,
we can see that the columns of $B'$ are mutually orthogonal.

Therefore, $B'$'s inverse is given by its transpose:

$
B'^(-1)
= B'^T
= 1 / 2 mat(
    1, 1, 1, 1;
    -1, -1, 1, 1;
    -1, 1, -1, 1;
    1, -1, -1, 1;
)
$

== d

$
B
&= 2 B' \

B^(-1)
&= (2 B')^(-1) \
&= 1 / 2 B'^(-1) \
&= 1 / 2 (1 / 2 mat(
    1, 1, 1, 1;
    -1, -1, 1, 1;
    -1, 1, -1, 1;
    1, -1, -1, 1;
)) \
&= 1 / 4 mat(
    1, 1, 1, 1;
    -1, -1, 1, 1;
    -1, 1, -1, 1;
    1, -1, -1, 1;
)
$

= 20.5

== a

The $i j$-th entry of $1 / 2 (A + A^T)$ is given by

$
(1 / 2 (A + A^T))_(i j)
&= 1 / 2 (A_(i j) + (A^T)_(i j)) \
&= 1 / 2 (A_(i j) + A_(j i)) \
&= 1 / 2 (A_(j i) + (A^T)_(j i)) \
&= (1 / 2 (A + A^T))_(j i)
$

Which is the definition of matrix symmetry.

== b

$
q(vname(x))
&= ||B vname(x)||^2 \
&= (B vname(x)) dot (B vname(x)) \
&= (B vname(x))^T (B vname(x)) \
&= vname(x)^T B^T B vname(x) \
&= vname(x)^T (B^T B) vname(x) \

M &= B^T B
$

= 20.8

== a

$S_+$ meets
the $x y$-plane at the circle $x^2 + y^2 = 1$,
the $x z$-plane at the hyperbola $x^2 - z^2 = 1$,
and the $y z$-plane at the hyperbola $y^2 - z^2 = 1$.

#columns(3)[
    #figure(
        image("../images/ex20_8_a_xy.png"),
        caption: [
            The intersection of $S_+$ and the $x y$-plane,
            with $x$ as the horizontal axis
            and $y$ as the vertical axis.
        ]
    )
    #colbreak()
    #figure(
        image("../images/ex20_8_a_xz.png"),
        caption: [
            The intersection of $S_+$ and the $x z$-plane,
            with $x$ as the horizontal axis
            and $z$ as the vertical axis.
        ]
    )
    #colbreak()
    #figure(
        image("../images/ex20_8_a_yz.png"),
        caption: [
            The intersection of $S_+$ and the $y z$-plane,
            with $y$ as the vertical axis
            and $z$ as the horizontal axis.
        ]
    )
]

== b

For any given $a in RR$,
$S_+$ intersects the plane $z = a$
at the circle $x^2 + y^2 = 1 + a^2$.

Circles on $z = a$ are carried to themselves
by rotation about the $z$-axis,
and every "slice" of $S_+$ has this property,
so $S_+$, the union of those slices,
is also carried to itself by any rotation around the $z$-axis.

== c

Because $S_+$ has rotational symmetry around the $z$-axis,
it is given by the revolution about the $z$-axis
of its own intersection with any plane containing the $z$-axis.
Furthermore, only one half of the plane is required,
since the other half is given by a $180degree$ rotation.

One half-plane containing the $z$-axis is
$ { (x, y) in RR^2 | y = 0 and x >= 0 } $

This is also the positive-$x$ half of the $x z$-plane pictured in Part a.
Its equational form is
$
y = 0
and
x >= 0
and
x^2 - y^2 = 1
$

Which is one half of a hyperbola,
so $S_+$ is one half of a hyperbola revolved around the $z$-axis.

#figure(
    image("../images/ex20_8_c.jpeg", width: 40%),
    caption: [A sketch of $S_+$]
)

== d

$S_-$ intersects each horizontal plane $z = a$
at the circle $x^2 + y^2 = 1 + a^2$.

Exactly as with $S_+$, the fact that intersections of $S_-$ with planes parallel to the $x y$-plane are circles
implies that $S_-$ has total rotational symmetry around the $z$-axis.

== e

As with $S_+$, $S_-$ is given by the revolution about the $z$-axis
of its own intersection with the $x z$-plane.

That intersection is defined by the curve
$ y = 0 and x^2 - z^2 = -1 $
which is a hyperbola.

#figure(
    image("../images/ex20_8_e.jpeg", width: 40%),
    caption: [A sketch of $S_-$]
)

Unlike $S_+$, this set consists of two disconnected components.
This is because the curve from which it is generated, $x^2 - z^2 = -1$,
has two components on any line parallel to the $z$-axis,
one with $x$ positive and one with $x$ negative.
Even after revolving around the $z$-axis,
these two components must remain disconnected.

= 20.12

== a

$vname(v) vname(v)^T$ is symmetric because the product of any matrix and its transpose is symmetric.

$- 2 / ||vname(v)||^2 vname(v) vname(v)^T$ because the scalar multiple of any symmetric matrix is symmetric.

$H_v = I_n - 2 / ||vname(v)||^2 vname(v) vname(v)^T$ is symmetric because the sum of any two symmetric matrices is symmetric.

== b

$
H_vname(v)^T H_vname(v)
&= (I_n - 2 / ||vname(v)||^2 vname(v) vname(v)^T)^T (I_n - 2 / ||vname(v)||^2 vname(v) vname(v)^T) \
&= (I_n - 2 / ||vname(v)||^2 vname(v) vname(v)^T)^2 \
&= I_n I_n
+ 2 I_n (-2 / ||vname(v)||^2 vname(v) vname(v)^T)
+ (-2 / ||vname(v)||^2 vname(v) vname(v)^T)^2 \
&= I_n
- 4 / ||vname(v)||^2 vname(v) vname(v)^T
+ 4 / ||vname(v)||^4 vname(v) vname(v)^T vname(v) vname(v)^T \
&= I_n
- 4 / ||vname(v)||^2 vname(v) vname(v)^T
+ 4 / ||vname(v)||^4 vname(v) (vname(v)^T vname(v)) vname(v)^T \
&= I_n
- 4 / ||vname(v)||^2 vname(v) vname(v)^T
+ 4 / ||vname(v)||^2 vname(v) vname(v)^T \
&= I_n
$

== c

$
H_vname(v) (c vname(v))
&= c H_vname(v) vname(v) \
&= c (I_n - 2 / ||vname(v)||^2 vname(v) vname(v)^T) vname(v) \
&= c (I_n vname(v) - 2 / ||vname(v)||^2 vname(v) vname(v)^T vname(v)) \
&= c (vname(v) - 2 / ||vname(v)||^2 vname(v) ||vname(v)||^2) \
&= c (vname(v) - 2 vname(v)) \
&= c (- vname(v)) \
&= - c vname(v)
$

== d

If $vname(v) dot vname(u) = 0$:

$
H_vname(v) vname(u)
&= (I_n - 2 / ||vname(v)||^2 vname(v) vname(v)^T) vname(u) \
&= I_n vname(u) - 2 / ||vname(v)||^2 vname(v) vname(v)^T vname(u) \
&= vname(u) - 2 / ||vname(v)||^2 vname(v) (vname(v) dot vname(u)) \
&= vname(u) - 2 / ||vname(v)||^2 vname(v) (0) \
&= vname(u)
$

== e

$
H
&= H_vec(2, -1, 2) \
&= I_n - 2 / (2^2 + (-1)^2 + 2^2) vec(2, -1, 2) vec(2, -1, 2)^T \
&= I_n - 2 / 9 mat(
    4, -2, 4;
    -2, 1, -2;
    4, -2, 4;
) \
&=
1 / 9 mat(
    9, 0, 0;
    0, 9, 0;
    0, 0, 9;
)
+ 1 / 9 mat(
    -8, 4, -8;
    4, -2, 4;
    -8, 4, -8;
) \
&= 1 / 9 mat(
    1, 4, -8;
    4, 7, 4;
    -8, 4, 1;
)
$

= 21.2

== a

The value of $d$ is simply the number of columns of the matrix.

$
N(A) &subset.eq RR^2 \
N(B) &subset.eq RR^4 \
N(C) &subset.eq RR^2
$

== b

$N(A)$ is the solution set of the system:

$
x_1 - 2 x_2 &= 0 \
2 x_1 - 4 x_2 &= 0
$

$N(b)$ is the solution set of the system:

$
&x_1 - 3 &x_2 + & &x_4 = &0 \
2 &x_1 + 5 &x_2 - &x_3 & = &0 \
3 &x_1 + 2 &x_2 - &x_3 + &x_4 = &0
$

$N(C)$ is the solution set of the system:

$
3 x_1 + 2 x_2 &= 0 \
-4 x_1 - x_2 &= 0
$

== c

The second row of $A$ is just twice the first row,
so any solution to $x_1 - 2x_2 = 0$ is an element of $N(A)$:

$ N(A) = span{vec(2, 1)} $

The third row of $B$ is the sum of the first two rows,
so it can be ignored. Then, solving for $x_3$ and $x_4$ in terms of $x_1$ and $x_2$:

$
x_3 &= 2 x_1 + 5 x_2 \
x_4 &= - x_1 + 3 x_2 \
N(B) &= span{vec(1, 0, 2, -1), vec(0, 1, 5, 3)}
$

We can solve the system for $C$
by adding the second row to the first row:

$
-x_1 + 0 x_2 &= 0 \
x_1 &= 0 \
-4 (0) - 1 x_2 &= 0 \
x_2 &= 0 \
N(C) &= {vname(0)}
$

= 21.4

== a

$C(A')$ is spanned by the set of columns of $A'$,
which is the set of columns of $A$,
plus $vname(v)$.
Therefore, $C(A')$ is spanned by
$span{"columns of" A} = C(A)$ and $vname(v)$.

Adding the column $vname(v)$ will either
increase the dimension of $C(A)$ by 1 if $vname(v) in.not C(A)$,
or leave it unchanged if $vname(v) in C(A)$.
This is because if $vname(v)$ is not a linear combination of the columns of $A$,
a new vector must be added to any basis for $C(A)$ to span all of $C(A')$.
However, if $vname(v)$ is already a linear combination of the columns of $A$,
it has no effect on the column space.

== b

If $vname(v) in C(A)$,
then there must be some $vname(u) in RR^n$ such that $A vname(u) = vname(v)$.
Now, given any $vname(y) in C(A')$,
there must be some $vname(x) in RR^(n+1)$ such that $A' vname(x) = vname(y)$. Then $vname(y)$ is also in $C(A)$ because

$
vname(y)
&= A' vname(x) \
&= A vec(x_1, x_2, ..., x_n) + x_(n+1) vname(v) \
&= A vec(x_1, x_2, ..., x_n) + A (x_(n+1) vname(u)) \
&= A (vec(x_1, x_2, ..., x_n) + x_(n+1) vname(u)) \
\
vname(y) &in C(A) \
C'(A) &= C(A)
$

Now if we are given that $C'(A) = C(A)$,
then because $vname(v) = A' vname(e)_(n+1) in C'(A)$,
we must have that $vname(v) in C(A)$.

== c

$
vname(v) in C(A)
&implies exists vname(u) in RR^n : A vname(u) = vname(v) \
&implies A' vec(vname(u), -1)
        &= mat(A, vname(v)) vec(vname(u), -1) \
&       &= A vname(u) - vname(v) \
&       &= vname(v) - vname(v) \
&       &= vname(0)
$

So $vec(vname(u), -1) in N(A)$
and $N(A) supset.eq span{vec(vname(u), -1)} supset {vname(0)}$,
so $N(A) != {vname(0)}$.

= 21.7

== a

$
vname(a)'_2
&= vname(a)_2 - Proj_(vname(a)_1) vname(a)_2 \
&= vname(a)_2 - (vname(a)_2 dot vname(a)_1) / (vname(a)_1 dot vname(a)_1) vname(a)_1 \
&= vec(2, 13, -3) - 44 / 11 vec(1, 3, -1) \
&= vec(
    2 - 4(1),
    13 - 4(3),
    -3 - 4(-1)
) \
&= vec(-2, 1, 1)
$

$ C(A) = span{vname(a)_1, vname(a)'_2} = span{vec(1, 3, -1), vec(-2, 1, 1)} $

The given linear combinations imply that
$ vec(-3, 2, -1, 0), vec(1, -1, 0, 1) in N(0) $
because their first two entries are the coefficients of $vname(a)_1$ and $vname(a)'_2$
(so they alone are taken to $vname(a)_3$ or $vname(a)_4$ by multiplication with $A$),
and their last two entries are $-1$ and $0$,
(which are taken to $-vname(a)_3$ or $-vname(a)_4$ by multiplication with $A$).

== b

=== $vname(b)_1$

$
Proj_(C(A)) (vname(b)_1)
&= Proj_(vname(a)_1) (vname(b)_1) +  Proj_(vname(a)'_2) (vname(b)_1) \
&= (vname(b)_1 dot vname(a)_1) / (vname(a)_1 dot vname(a)_1) vname(a)_1
+ (vname(b)_1 dot vname(a)'_2) / (vname(a)'_2 dot vname(a)'_2) vname(a)'_2 \
&= (1 + 18 - 8) / (1 + 9 + 1) vec(1, 3, -1)
+ (-2 + 6 + 8) / (4 + 1 + 1) vec(-2, 1, 1) \
&= 11 / 11 vec(1, 3, -1) + 12 / 6 vec(-2, 1, 1) \
&= vec(1, 3, -1) + 2 vec(-2, 1, 1) \
&= vec(-3, 5, 1)
!= b ", so" not exists vname(x) in RR^4 : A vname(x) = vname(b)_1
$

=== $vname(b)_2$

$
Proj_(C(A)) (vname(b)_2)
&= Proj_(vname(a)_1) (vname(b)_2) +  Proj_(vname(a)'_2) (vname(b)_2) \
&= (vname(b)_2 dot vname(a)_1) / (vname(a)_1 dot vname(a)_1) vname(a)_1
+ (vname(b)_2 dot vname(a)'_2) / (vname(a)'_2 dot vname(a)'_2) vname(a)'_2 \
&= (- 5 - 3 - 3) / (1 + 9 + 1) vec(1, 3, -1)
+ (10 - 1 + 3) / (4 + 1 + 1) vec(-2, 1, 1) \
&= - 11 / 11 vec(1, 3, -1) + 12 / 6 vec(-2, 1, 1) \
&= - vec(1, 3, -1) + 2 vec(-2, 1, 1) \
&= vec(-5, -1, 3)
= vname(b)_3 ", so" exists vname(x) in RR^4 : A vname(x) = vname(b)_2 \
\
b_2
&= - vname(a)_1 + 2 vname(a)'_2 \
&= - vname(a)_1 + 2 (vname(a)_2 - 4 vname(a)_1) \
&= - vname(a)_1 + 2 vname(a)_2 - 8 vname(a)_1 \
&= - 9 vname(a)_1 + 2 vname(a)_2 \
\
A vec(-9, 2, 0, 0)
&= vec(
    -9(1) + 2(2),
    -9(3) + 2(13),
    -9(-1) + 2(-3),
) \
&= vec(-5, -1, 3) \
&= vname(b)_2
$

#pagebreak()
=== $vname(b)_3$

$
Proj_(C(A)) (vname(b)_3)
&= Proj_(vname(a)_1) (vname(b)_3) +  Proj_(vname(a)'_2) (vname(b)_3) \
&= (vname(b)_3 dot vname(a)_1) / (vname(a)_1 dot vname(a)_1) vname(a)_1
+ (vname(b)_3 dot vname(a)'_2) / (vname(a)'_2 dot vname(a)'_2) vname(a)'_2 \
&= (1 - 12 + 0) / (1 + 9 + 1) vec(1, 3, -1)
+ (- 2 - 4 + 0) / (4 + 1 + 1) vec(-2, 1, 1) \
&= - 11 / 11 vec(1, 3, -1) - 6 / 6 vec(-2, 1, 1) \
&= - vec(1, 3, -1) - vec(-2, 1, 1) \
&= vec(1, -4, 0)
= vname(b)_3 ", so" exists vname(x) in RR^4 : A vname(x) = vname(b)_3 \
\
b_3
&= - vname(a)_1 - vname(a)'_2 \
&= - vname(a)_1 - (vname(a)_2 - 4 vname(a)_1) \
&= - vname(a)_1 - vname(a)_2 + 4 vname(a)_1 \
&= 3 vname(a)_1 - vname(a)_2 \
\
A vec(3, -1, 0, 0)
&= vec(
    3(1) - 1(2),
    3(3) - 1(13),
    3(-1) - 1(-3),
) \
&= vec(1, -4, 0) \
&= vname(b)_3
$

== c

The parametric form of the solutions to $A vname(x) = vname(y)$
take the form of a particular solution, plus a parameterization of $N(A)$,
which is given in Part a.

For $A vname(x) = vname(b)_2$:
$ vname(x) = vec(-9, 2, 0, 0) + t vec(-3, 2, -1, 0) + t' vec(1, -1, 0, -1) $.

And for $A vname(x) = vname(b)_3$:
$ vname(x) = vec(3, -1, 0, 0) + t vec(-3, 2, -1, 0) + t' vec(1, -1, 0, -1) $

= 21.9

== a

$C(A)$ cannot be a point,
because at least one of the columns of $A$,
either $A vname(e)_1$ or $A vname(e)_2$,
is nonzero.
This column is therefore an element of a basis for $C(A)$,
so $C(A)$ has dimension at least one
and cannot be ${vname(0)}$.

Then $C(A)$ must have either dimension one,
in which case it is the spanning set of $A$'s nonzero column, which is a line,
or dimension two,
in which case it is equal to $RR^2$.

Similarly, $N(A)$ cannot be all of $RR^2$,
because one of $A vname(e)_1$ and $A vname(e)_2$ is nonzero,
so it must be of dimension zero,
in which case it is ${vname(0)}$,
or dimension one,
in which case it is a line.

== b

By definition,
$C(A) = span{ A vname(e)_1, A vname(e)_2 }$.
If $A vname(e)_1$ and $A vname(e)_2$ are linearly independent,
the set containing them is a basis
and $dim C(A) = 2$, so $C(A)$ is all of $RR^2$, not a line.
However, if they are _not_ linearly independent,
then the set containing either one of them (provided it is nonzero),
is a basis of $C(A)$,
and $C(A)$ is therefore the line spanned by that column.

If the columns of $A$ are linearly dependent,
then there exist some nonzero $alpha_1, alpha_2 in RR$ such that
$
alpha_1 A vname(e)_1 + alpha_2 A vname(e)_2 &= vname(0) \
A vec(alpha_1, alpha_2) &= vname(0) \
vec(alpha_1, alpha_2) &in N(A)
$
So $N(A)$ has dimension at least one,
but it cannot have dimension two because either
$A vname(e)_1 != 0$ or $A vname(e)_2 != 0$.
Therefore, $N(A)$ is the line spanned by $vec(alpha_1, alpha_2)$.

Buf if the columns of $A$ are linearly independent,
then the only $alpha_1, alpha_2 in RR$ such that $alpha_1 A vname(e)_1 + alpha_2 A vname(e)_2 = vname(0)$ are $alpha_1 = alpha_2 = 0$.
Since $alpha_1 A vname(e)_1 + alpha_2 A vname(e)_2 = A vec(alpha_1, alpha_2)$,
this means the only vector $vname(x)$ such that $A vname(x) = vname(0)$
is the zero vector, $vname(0)$.
Therefore, $N(A) = {vname(0)}$, which is not a line.

== c

From the previous Parts, we have that
$C(A) = RR^2$ iff the columns of $A$ are linearly independent,
and from Part b that
if the columns of $A$ are linearly independent,
$N(A) = {vname(0)}$.
Therefore,
$ C(A) = RR^2 implies N(A) = {vname(0)} $

And we have from Part b that
$N(A) = {vname(0)}$ iff the columns of $A$ are linearly independent,
and as previously that
$C(A) = RR^2$ if the columns of $A$ are linearly independent.
So it follows that
$ N(A) = {vname(0)} implies C(A) = RR^2 $