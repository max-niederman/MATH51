#import "../lib.typ": *

#show: homework.with(
    title: "Math 51 Homework #4"
)

= 12.3

We have that

$ f(x, y, z) &= x z + y z $

==

Let $g(x, y, z) = x^2 + y^2 - 4 z^2$.

We are asked to find two points among which
any extrema of
$f$ constrained to the level set $g = 1$
must lie.
We can use Lagrange multipliers
to find these points.

Any extremum of $f$ constrained to
the level set $g = 1$
must satisfy

$ nabla g = vname(0) or nabla f = lambda nabla g $

We take this in cases.

If $nabla g = vname(0)$:

$ vname(0)
&= nabla g \
&= vec(2 x, 2 y, -8 z) \
&= vec(x, y, z)
$

But $g(vname(0)) = 0 != 1$, so this is not a candidate point.

If $nabla g != vname(0)$, then

$
nabla f &= lambda nabla g \
vec(z, z, x + y) &= lambda vec(2x, 2y, -8z) \
lambda 2y = &z = lambda 2x \
y &= x \
x + y &= -8 z \
2x &= -8 z \
x = &y = -4 z
$

Constraining this to $g = 1$ gives

$
g(-4 z, -4 z, z) &= 1 \
16 z^2 + 16 z^2 - 4 z^2 &= 1 \
28 z^2 &= 1 \
z &= plus.minus 1 / sqrt(28) = plus.minus 1 / (2 sqrt(7))
$

So the extrema, if they exist, must be among $plus.minus (-2 / sqrt(7), -2 / sqrt(7), 1 / (2 sqrt(7)))$.

==

First, we compute the values of $f$ at the two candidate points:

$
f(-2 / sqrt(7), -2 / sqrt(7), 1 / (2 sqrt(7))) &= -2 / 7 \
f(2 / sqrt(7), 2 / sqrt(7), -1 / (2 sqrt(7))) &= -2 / 7
$

Two integer solutions to $g = 1$ are $(4, 1, 2)$ and $(4, 1, -2)$. Their images under $f$ are:

$
f(4, 1, 2) &= &10 > -2 / 7 \
f(4, 1, -2) &= -&10 < -2 / 7 \
$

We know from Part (a) that if $f$ constrained to $g = 1$ has extrema, they must be at $plus.minus (-2 / sqrt(7), -2 / sqrt(7), 1 / (2 sqrt(7)))$, and from the above that these points are not extrema (since there are values of $f$ on $g = 1$ both lesser and greater). Therefore, $f$ has no extrema on the hyperboloid $g = 1$.

= 12.8

We have that

$
f(x, y, z) = 2 x^2 + 6 x y + y^2 + 2z \
\
R = { (x, y, z) | x, y, z >= 0 and x + y + z <= 1 }
$

==

$ nabla f (x, y, z) = vec(4x + 6y, 6x + 2y, 2) != vname(0) $

Therefore, $f$ has no critical points in the interior of $R$.

==

Let $t(x, y, z) = x + y + z$. Then the level set $t = 1$ is the plane containing $T$, and we can use Lagrange multipliers to find extrema of $f$ on this plane.

$ nabla t = vec(1, 1, 1) = vname(1) != vname(0) $

With the $nabla t = vname(0)$ case eliminated, we have

$
nabla f &= lambda nabla t \
vec(4x + 6y, 6x + 2y, 2) &= lambda vname(1) \
lambda &= 2 \
mat(
    4, 6;
    6, 2;
) vec(x, y) &= vec(2, 2) \
mat(
    -14, 0;
    6, 2;
) vec(x, y) &= vec(-4, 2) \
mat(
    1, 0;
    0, 2;
) vec(x, y) &= vec(2 / 7, 2 - 6 dot 2 / 7) \
mat(
    1, 0;
    0, 1;
) vec(x, y) &= vec(2 / 7, 1 / 7) \
vec(x, y) &= vec(2 / 7, 1 / 7)
\
x + y + z &= 1 \
z &= 1 - x - y \
  &= 4 / 7 \
vec(x, y, z) &= 1 / 7 vec(2, 1, 4)
$

So the only extremum candidate is $(2 / 7, 1 / 7, 4 / 7)$.

==

One edge of $T$ is the line segment $L = { (s, 1 - s, 0) | s in [0, 1] }$.

Let $l(s) = (s, 1 - s, 0)$, so that $L$ is the image of $[0, 1]$ under $l$. Then finding the extrema of $f$ on $L$ is equivalent to finding the maximum of $f compose l$ on $[0, 1]$.

We can compute this using single-variable calculus. First we compute the endpoints of $L$:

$
f(l(0)) &= f(0, 1, 0) &= 1 \
f(l(1)) &= f(1, 0, 0) &= 2
$

Then, we find the critical points of $f compose l$:

$
(f compose l)(s) &= 2 s^2 + 6 s (1 - s) + (1 - s)^2 + 2 (0) \
0 &= dif / (dif x) (f compose l)(s) \
&= 4 s + (6 - 12 s) - 2(1 - s) \
&= 4 s - 12 s + 2 s + 6 - 2 \
&= -6 s + 4 \
6 s &= 4 \
s &= 2 / 3
$

We use the second-derivative test to check this is indeed a maximum:

$
dif^2 / (dif x^2) (f compose l)(s) &= -6 < 0
$

Knowing $s$, we can compute the maximum:

$
(f compose l)(2 / 3) &= 2 (2 / 3)^2 + 6 (2 / 3) (1 - 2 / 3) + (1 - 2 / 3)^2 \
&= 2 dot 4 / 9 + 6 dot 2 / 3 dot 1 / 3 + 1 / 9 \
&= (8 + 12 + 1) / 9 \
&= 21 / 9 \
&= 7 / 3
$

The maximum of $(f compose l)(0) = 1$, $(f compose l)(1) = 2$, and $(f compose l)(2 / 3) = 21 / 9$ is $(f compose l)(2 / 3) = (21 / 9)$, so this is the maximum value of $f$ on $L$.

==
#enum(numbering: "A.")[
    $f(0, 0) = 0$
][
    $f(2, 2) = 14$
][
    $f(3, 1) = 15$
][
    $f(5, 3) = 29$
]
We know that the maximum of $f$ on $R$ is at either $(2 / 7, 1 / 7, 4 / 7)$ or $l(2 / 3) = (2 / 3, 1 / 3, 0)$.

Computing $f$ at these values yields

$
f(2 / 7, 1 / 7, 4 / 7) &= 2 (2 / 7)^2 + 6 (2 / 7) (1 / 7) + (1 / 7)^2 + 2 (4 / 7) \
&= 2 dot 4 / 49 + 6 dot 2 / 7 dot 1 / 7 + 1 / 49 + 56 / 49 \
&= (8 + 12 + 1 + 56) / 49 \
&= 77 / 49 \
&= 11 / 7 \
f(2 / 3, 1 / 3, 0) &= 7 / 3 "(from part (c))"
$

$7 / 3 > 11 / 7$, so $f(2 / 3, 1 / 3, 0) = 7 / 3$ is the maximum of $f$ on $R$.

= 12.9

Let $f(x, y) = 4x + 3y$.

==

#figure(
    image("../images/ex12_9_a.png", width: 40%),
    caption: [The region $R$.]
)

Suppose that there is a maximum of $f$ on $R$ at $(x, y)$. The point $(2x, 2y)$ is also in $R$, because

$
x >= 1 &arrow.r.double 2x >= 1 \
y >= 1 &arrow.r.double 2y >= 1 \
x + y >= 3 &arrow.r.double 2x + 2y >= 3
$

And

$
f(2x, 2y) &= 4 (2x) + 3 (2y) \
&= 8x + 6y \
&> 4x + 3y \
&> f(x, y)
$

Which is a contradiction because $f(x, y)$ is a maximum.
Therefore, there is no maximum of $f$ on $R$.

==

#figure(
    image("../images/ex12_9_b.png", width: 40%),
    caption: [The parallelogram formed by $vname(v)$, $vname(w)$, and $vname(v) + vname(w)$.]
)

We are asked to find the maximum of $4x + 3y = f(x, y)$ on this parallelogram.

$f$ is not maximized on the interior of the paralellogram, because $nabla f = vec(4, 3) != vname(0)$, so the maximum must be on the boundary.

Similarly, the maximum cannot be on the interior of any of the bounding line segments, because the projection of the gradient of $f$ onto the direction vectors of these line segments ($Proj_(vname(v)) nabla f$ and $Proj_(vname(w)) nabla w$) are both nonzero. If the maximum was on the interior of one of these line segments, we could get a greater value of $f$ by moving in the direction of these projections.

Therefore, the maximum of $f$ on the parallelogram must be at one of the vertices:

#[
    #set enum(numbering: "A.")

    + $f(0, 0) = 0$
    + $f(2, 2) = 14$
    + $f(3, 1) = 15$
    + $f(5, 3) = 29$
]

So the maximum is $f(vname(v) + vname(w)) = f(5, 3) = 29$.

==

Let $g(x, y) = -x + 2y$.

To minimize $g$ on the paralellogram, we can perform exactly the same steps as in Part (b):

$g$ cannot be maximized on the interior of the parallelogram, because $nabla g = vec(-1, 2) != vname(0)$, so the minimum must be on the boundary.

Like with $f$, $Proj_(vname(v)) nabla g != vname(0)$ and $Proj_(vname(w)) nabla g != vname(0)$, so the minimum cannot be on the interior of any of the sides, and must be on one of the vertices:

#[
    #set enum(numbering: "A.")

    + $g(0, 0) = 0$
    + $g(2, 2) = 2$
    + $g(3, 1) = -1$
    + $g(5, 3) = 1$
]

So the minimum is $g(vname(w)) = g(3, 1) = -1$.

= 12.12

Let $f(x, y) = x^2 + y^2$ and $g(x, y) = 3x + 2y$. Then the line $3x + 2y = 6$ is the level set $g = 6$.

We are asked to minimize $f$ on the level set $g = 6$. The minimum must satisty either $nabla g = vname(0)$ or $exists lambda in RR : nabla f = lambda nabla g$.

$nabla g = vec(3, 2) != vname(0)$, so we solve:

$
nabla f &= lambda nabla g \
3x + 2y &= 6 \
vec(2x, 2y) &= lambda vec(3, 2) \
2 / 3 x = &lambda = y \
y &= 2 / 3 x \
3x + 4 / 3 x &= 6 \
13x &= 18 \
x &= 18 / 13 \
y &= 12 / 13
$

Therefore, the minimum is at $(18 / 13, 12 / 13)$.

= 12.14

Let $v(x, y, z) = x y z$ and $s(x, y, z) = 2 x y + 2 x z + 2 y z$, so that $v(x, y, z)$ and $s(x, y, z)$ are, respectively, the volume and surface area of the rectangular box with side lengths $x$, $y$, and $z$.

We minimize $s$ on the level set $v = V$ using Lagrange multipliers:

For the case $nabla v = vname(0)$:

$
nabla v &= vname(0) \
vec(y z, x z, x y) &= vname(0)
$

Suppose that $x$ is nonzero. Then $x z = 0 arrow.r.double z = 0$ and $x y = 0 arrow.r.double y = 0$, so $y$ and $z$ are zero. This same reasoning applies to $y$ and $z$, so $nabla v = vname(0)$ when at most one of $x$, $y$, and $z$ is nonzero. However, if any of $x$, $y$, or $z$ is zero, then $v(x, y, z) = 0 != V$, so none of these points are candidates.

Therefore, we solve:

$
nabla s &= lambda nabla v \
x y z &= V \

vec(2 y + 2 z, 2 x + 2 z, 2 x + 2 y) &= lambda vec(y z, x z, x y) \

lambda
&= 2 (y + z) / (y z) \
&= 2 (x + z) / (x z) \
&= 2 (x + y) / (x y) \
$

Equating these expressions for $lambda$ gives
$
(y + z) / (y z) = (x + z) / (x z) = (x + y) / (x y) \
x(y + z) = y(x + z) = z(x + y) \
x y + x z = y x + y z = z x + z y \
\
x y + x z = y x + y z \
x z = y z \
x = y \
\
x y + x z = z x + z y \
x y = z y \
x = z \
\

x = y = z
$

Therefore, the rectangular box with minimum surface area for a given volume has equal side lengths; i.e. it is a cube.

= 13.2

==

The geometric effect of $T_(2, 1/3)$ on a vector $vname(v) in RR^2$ is to scale $vname(v)$ by a factor of $2$ in the $x$ direction and a factor of $1/3$ in the $y$ direction.

#figure(
    image("../images/ex13_2_a.png", width: 40%),
    caption: [The vectors $vname(u) = vec(-1, 1)$ and $vname(v) = vec(1, 2)$, along with their images $vname(u')$ and $vname(v')$ under $T_(2, 1/3)$.]
)

In general, the transformation has the effect of "squishing" $RR^2$ down towards the $x$-axis by a factor of $1/3$ while also "stretching" the $x$ axis outwards, away from the $y$-axis by a factor of $2$.

==

$
&(T_(1/a, 1/b) compose T_(a, b))(vname(x)) \
= &T_(1/a, 1/b)(T_(a, b)(vname(x))) \
= &mat(
    1/a, 0;
    0, 1/b;
) mat(
    a, 0;
    0, b;
) vname(x) \
= &mat(
    1, 0;
    0, 1;
) vname(x) \
= &vname(x)
$

Similarly,

$
&(T_(a, b) compose T_(1/a, 1/b))(vname(x)) \
= &T_(a, b)(T_(1/a, 1/b)(vname(x))) \
= &mat(
    a, 0;
    0, b;
) mat(
    1/a, 0;
    0, 1/b;
) vname(x) \
= &mat(
    1, 0;
    0, 1;
) vname(x) \
= &vname(x)
$

This makes geometric sense because
$T_(a, b)$ has the effect of "expanding" by a factor $a$ in the $x$-direction and $b$ in the $y$-direction,
and $T_(1/a, 1/b)$ has the _inverse_ effect of
"compressing" by a factor of $a$ in the $x$-direction and $b$ in the $y$-direction.

==

$
vname(v) in C
&implies vec(v_1, v_2) in C \
&implies v_1^2 + v_2^2 = 1 \
&implies (a v_1)^2 / a^2 + (b v_2)^2 / b^2 = 1 \
&implies vec(a v_1, b v_2) in E_(a, b) \
&implies T_(a, b)(vname(v)) in E_(a, b)
$

And in reverse,

$
T_(a, b)(vname(v)) in E_(a, b)
&implies vec(a v_1, b v_2) in E_(a, b) \
&implies (a v_1)^2 / a^2 + (b v_2)^2 / b^2 = 1 \
&implies v_1^2 + v_2^2 = 1 \
&implies vec(v_1, v_2) in C \
&implies vname(v) in C
$

==

#figure(
    image("../images/ex13_2_d_1.jpeg", width: 40%),
    caption: [A sketch of the ellipse $x^2 / 4 + y^2 / 9 = 1$.]
)

#figure(
    image("../images/ex13_2_d_2.jpeg", width: 40%),
    caption: [A sketch of the ellipse $x^2 / 4 + 4y^2 = 1$.]
)

= 13.3

==

#box(height: 4.5in, columns(2)[
    #set enum(numbering: "(i)")

    + $ 
        x^2 + 6y^2 &= 10 \
        \
        y = 0 implies x &= plus.minus sqrt(10) \
        3 < &sqrt(10) < 4 \
        \
        x = 0 implies y &= plus.minus sqrt(5 / 3) \
        1 < &sqrt(5 / 3) < 2
    $
    + $ 
        3x^2 + 5y^2 &= 13 \
        \
        y = 0 implies x &= plus.minus sqrt(13 / 3) \
        2 < &sqrt(13 / 3) < 3 \
        \
        x = 0 implies y &= plus.minus sqrt(13 / 5) \
        1 < &sqrt(13 / 5) < 2
    $
    3. $ 
        7x^2 + 2y^2 &= 18 \
        \
        y = 0 implies x &= plus.minus sqrt(18 / 7) \
        1 < &sqrt(18 / 7) < 2 \
        \
        x = 0 implies y &= plus.minus sqrt(6) \
        2 < &sqrt(6) < 3
    $
    + $ 
        5x^2 + y^2 &= 21 \
        \
        y = 0 implies x &= plus.minus sqrt(21 / 5) \
        2 < &sqrt(21 / 5) < 3 \
        \
        x = 0 implies y &= plus.minus sqrt(21) \
        4 < &sqrt(21) < 5
    $
])

==

#figure(
    image("../images/ex13_3_b.jpeg", width: 80%),
    caption: [A sketch of the ellipses i--iv.]
)

==

The general ellipse $A x^2 + B y^2 = C$ is bigger along the $x$-axis when $A < B$, bigger along the $y$-axis when $A > B$, and neither when $A = B$.

= 13.9

==

Let $vname(c)$ be any vector $vec(c_1, c_2, c_3) in RR^3$.

To find the derivative matrix,
we compute the gradients of the components of $f$:

$
(f dot vname(e)_1)(vname(c)) &= -2 c_1 + 3 c_2 + c_3 + 5 \
nabla (f dot vname(e)_1)(vname(c)) &= vec(-2, 3, 1) \
\
(f dot vname(e)_2)(vname(c)) &= -4 c_1 + 0 c_2 - 2 c_3 - 7 \
nabla (f dot vname(e)_2)(vname(c)) &= vec(-4, 0, -2) \
$

Therefore, the derivative matrix is
$
&(D f)(vname(c)) \
= &mat(
    nabla (f dot vname(e)_1)(vname(c));
    nabla (f dot vname(e)_2)(vname(c));
) \
= &mat(
    -2, 3, 1;
    -4, 0, -2;
) \
= &A
$

==

We again start by computing the gradients of the components of $f$:

$
(f dot vname(e)_1)(vname(c)) &= a_11 c_1 + a_12 c_2 + a_13 c_3 + b_1 \
nabla (f dot vname(e)_1)(vname(c)) &= vec(a_11, a_12, a_13) \
\
(f dot vname(e)_2)(vname(c)) &= a_21 c_1 + a_22 c_2 + a_23 c_3 + b_2 \
nabla (f dot vname(e)_2)(vname(c)) &= vec(a_21, a_22, a_23) \
$

And assemble the derivative matrix:

$
&(D f)(vname(c)) \
= &mat(
    nabla (f dot vname(e)_1)(vname(c));
    nabla (f dot vname(e)_2)(vname(c));
) \
= &mat(
    a_11, a_12, a_13;
    a_21, a_22, a_23;
) \
= &A
$

==

For the general case, where $A in RR^(m times n)$ and $vname(b) in RR^m$,
we perform the same steps, but for all $m$ components of $f$:

$
forall i <= m \
\
(f dot vname(e)_i)(vname(c)) = sum_(j = 1)^(n) a_(i j) c_j + b_i \
nabla (f dot vname(e)_i)(vname(c)) = vec(a_(i 1), a_(i 2), dots.v, a_(i n)) \
$

And assemble the derivative matrix:

$
&(D f)(vname(c)) \
= &mat(
    nabla (f dot vname(e)_1)(vname(c));
    nabla (f dot vname(e)_2)(vname(c));
    dots.v;
    nabla (f dot vname(e)_m)(vname(c));
) \
= &mat(
    a_(1 1), a_(1 2), dots.h.c, a_(1 n);
    a_(2 1), a_(2 2), dots.h.c, a_(2 n);
    dots.v, dots.v, dots.down, dots.v;
    a_(m 1), a_(m 2), dots.h.c, a_(m n);
) \
= &A
$

= 14.3

==

$vname(e)_1$ is first rotated to $vec(1 / sqrt(2), -1 / sqrt(2))$,
then stretched in the $x$-direction to $vec(sqrt(2), -1 / sqrt(2))$,
so $f(vname(e)_1) = vec(sqrt(2), -1 / sqrt(2))$.

$vname(e)_2$ is first rotated to $vec(1 / sqrt(2), 1 / sqrt(2))$,
then stretched in the $x$-direction to $vec(sqrt(2), 1 / sqrt(2))$,
so $f(vname(e_2)) = vec(sqrt(2), 1 / sqrt(2))$.

Therefore, $A = mat(
    sqrt(2), sqrt(2);
    -1 / sqrt(2), 1 / sqrt(2);
)$.

==

$
R &= mat(R vname(e_1), R vname(e_2)) \
&= mat(
    1 / sqrt(2), 1 / sqrt(2);
    -1 / sqrt(2), 1 / sqrt(2);
) \
\
M &= mat(M vname(e_1), M vname(e_2)) \
&= mat(
    2, 0;
    0, 1;
) \
\
A &= M R \
&= mat(
    sqrt(2), sqrt(2);
    -1 / sqrt(2), 1 / sqrt(2);
)
$

==

Composing the transformations in the opposite order
gives a different transformation
because rotation changes the effect of stretching a given vector.

For example, consider the vector $vec(0, 1)$.
If we first stretch it (apply $M$), it remains the same and rotation yields $vec(1/sqrt(2), 1/sqrt(2))$;
but if we rotate it first (apply $R$), _then_ stretch it,
we get $M vec(1/sqrt(2), 1/sqrt(2)) = vec(sqrt(2), 1/sqrt(2))$.

$
R M &= mat(
    1 / sqrt(2), 1 / sqrt(2);
    -1 / sqrt(2), 1 / sqrt(2);
) mat(
    2, 0;
    0, 1;
) \
&= mat(
    sqrt(2), 1 / sqrt(2);
    -sqrt(2), 1 / sqrt(2);
)
$

= 14.5

==

$
A &= mat(
    0, -1, 0;
    1, 0, 0;
    0, 0, 1;
) \
A' &= mat(
    1, 0, 0;
    0, 0, -1;
    0, 1, 0;
)
$

==

By matrix multiplication:

$
(T' compose T)(vname(x)) &= A' A vname(x) \
&= mat(
    1, 0, 0;
    0, 0, -1;
    0, 1, 0;
) mat(
    0, -1, 0;
    1, 0, 0;
    0, 0, 1;
) vname(x) \
&= mat(
    0, -1, 0;
    0, 0, -1;
    1, 0, 0;
) vname(x)
$

By evaluation of $(T' compose T)(vname(e)_i)$:

$
(T' compose T)(vname(x)) &= mat(
    (T' compose T)(vname(e)_1),
    (T' compose T)(vname(e)_2),
    (T' compose T)(vname(e)_3);
) vname(x) \
&= mat(
    0, -1, 0;
    0, 0, -1;
    1, 0, 0;
) vname(x)
$

==

By matrix multiplication,

$
(T compose T')(vname(x)) &= A A' vname(x) \
&= mat(
    0, -1, 0;
    1, 0, 0;
    0, 0, 1;
) mat(
    1, 0, 0;
    0, 0, -1;
    0, 1, 0;
) vname(x) \
&= mat(
    0, 0, 1;
    1, 0, 0;
    0, 1, 0;
) vname(x)
$

By evaluation of $(T compose T')(vname(e)_i)$:

$
(T compose T')(vname(x)) &= mat(
    (T compose T')(vname(e)_1),
    (T compose T')(vname(e)_2),
    (T compose T')(vname(e)_3);
) vname(x) \
&= mat(
    0, 0, 1;
    1, 0, 0;
    0, 1, 0;
) vname(x)
$

= 14.6

==

We can compute the columns of the matrix $A$ representing $p$ by taking $p$'s effect on the basis vectors:

$
A &= mat(
    p(vname(e)_1),
    p(vname(e)_2),
    p(vname(e)_3),
    p(vname(e)_4),
) \
&= mat(
    0, 0, 1, 0;
    0, 0, 0, 1;
)
$

And we can similarly find the matrix $B$ representing $i$:

$
B &= mat(
    i(vname(e)_1),
    i(vname(e)_2),
) \
&= mat(
    1, 0;
    0, 1;
    0, 0;
    0, 0;
)
$

==

$(p compose i)$ has the effect of simply zeroing its argument,
since $i$ always returns vectors with zero third and fourth components,
and $p$ returns a vector of the third and fourth components.
Therefore, the matrix $A B$ corresponding to $(p compose i)$ is the zero matrix $mat(0, 0; 0, 0)$.

We can also compute the matrix $A B$ by matrix multiplication:

$
A B &= mat(
    0, 0, 1, 0;
    0, 0, 0, 1;
) mat(
    1, 0;
    0, 1;
    0, 0;
    0, 0;
) \
&= mat(
    0, 0;
    0, 0;
)
$

==

$(i compose p)$ has the effect of replacing the first and second components with the third and fourth, respectively, and zeroing the third and fourth components.
This is because $p$ returns a vector of the third and fourth components,
and $i$ returns a vector with the same first and second components, but zero third and fourth components. Therefore, the matrix $B A$ corresponding to $(i compose p)$ is the matrix

$ mat(
    0, 0, 1, 0;
    0, 0, 0, 1;
    0, 0, 0, 0;
    0, 0, 0, 0;
) $.

We can also compute $B A$ by matrix multiplication:

$
B A &= mat(
    1, 0;
    0, 1;
    0, 0;
    0, 0;
) mat(
    0, 0, 1, 0;
    0, 0, 0, 1;
) \
&= mat(
    0, 0, 1, 0;
    0, 0, 0, 1;
    0, 0, 0, 0;
    0, 0, 0, 0;
)
$

= 14.9

==

$
R vname(v) in H_+
&iff vec((v_1 + v_2) / sqrt(2), (-v_1 + v_2) / sqrt(2)) in H_+ \
&iff ((v_1 + v_2) / sqrt(2))^2 - ((-v_1 + v_2) / sqrt(2))^2 = 1 \
&iff 1/2 ((v_1 + v_2)^2 - (-v^1 + v_2)^2) = 1 \
&iff (v_1^2 + 2 v_1 v_2 + v_2^2) - (v_1^2 - 2 v_1 v_2 + v_2^2) = 2 \
&iff 2v_1 v_2 + 2v_1 v_2= 2 \
&iff v_1 v_2 = 1 / 2
$

Therefore, $v$ lies on the curve defined by $x y = 1/2$
if and only if $R vname(v)$ lies on the curve $H_+$ defined by $x^2 - y^2 = 1$.

We can perform the same steps for $H_-$ and the curve $x^2 - y^2 = -1$:

$
R vname(v) in H_-
&iff vec((v_1 + v_2) / sqrt(2), (-v_1 + v_2) / sqrt(2)) in H_- \
&iff ((v_1 + v_2) / sqrt(2))^2 - ((-v_1 + v_2) / sqrt(2))^2 = -1 \
&iff 1/2 ((v_1 + v_2)^2 - (-v^1 + v_2)^2) = -1 \
&iff (v_1^2 + 2 v_1 v_2 + v_2^2) - (v_1^2 - 2 v_1 v_2 + v_2^2) = -2 \
&iff 2v_1 v_2 + 2v_1 v_2= -2 \
&iff v_1 v_2 = -1/2
$

==

#columns[
    #figure(
        image("../images/ex14_9_b_+.png", width: 80%),
        caption: [The curve $H_+$.]
    )
    #colbreak()
    #figure(
        image("../images/ex14_9_b_-.png", width: 80%),
        caption: [The curve $H_-$.]
    )
]

We know that the coordinate axes are asymptotes of the curves $x y = plus.minus 1/2$,
and that the curves $H_+$ and $H_-$ are 45#sym.degree rotations of $x y = plus.minus 1/2$,
so the rotated coordinate axes, 
and the lines $y = plus.minus x$ are therefore asymptotes of $H_+$ and $H_-$.

==

$T_(2, 3)$ carries $H_+$ to the graph of $x^2/4 - y^2/9 = 1$,
and the asymptotes of $H_+$, $y = plus.minus x$, to $1/3 y = plus.minus 1/2 x$.
Similarly,
$T_(2, 1/2)$ carries $H_-$ to the graph of $x^2/4 - 4y^2 = -1$
and the asymptotes of $H_-$ to $2y = plus.minus 1/2 x$.
We can use this knowledge to graph:

#columns[
    #figure(
        image("../images/ex14_9_c_1.png", width: 80%),
        caption: [The graph of $x^2/4 - y^2/9 = 1$.]
    )
    #colbreak()
    #figure(
        image("../images/ex14_9_c_2.png", width: 80%),
        caption: [The graph of $x^2/4 - 4y^2 = 1$.]
    )
]

= 15.3

==

We compute $A M$ by rote matrix multiplication:

$
A M &= mat(
    1, a, 0;
    0, 1, 0;
    0, 0, 1;
) mat(
    m_11, m_12, m_13;
    m_21, m_22, m_23;
    m_31, m_32, m_33;
) \
&= mat(
    m_11 + a m_21, m_12 + a m_22, m_13 + a m_23;
    m_21, m_22, m_23;
    m_31, m_32, m_33;
)
$
The first row of the matrix $A M$ is also
the first row of $M$ plus $a$ times the second row of $M$.

$M A$ is related to $M$ in that it is the result of
adding $a$ times the first _column_ of $M$ to the second column of $M$.

==

We again compute the entries of the product:

$
B M &= mat(
    0, 1, 0;
    1, 0, 0;
    0, 0, 1;
) mat(
    m_11, m_12, m_13;
    m_21, m_22, m_23;
    m_31, m_32, m_33;
) \
&= mat(
    m_21, m_22, m_23;
    m_11, m_12, m_13;
    m_31, m_32, m_33;
)
$

This matrix product, $B M$,
is also the result of swapping the first and second rows of $M$.

The matrix $M B$ is related to $M$ in that it is the result of
swapping the first and second _columns_ of $M$.

= 15.5

==

$
f(A)
&= 2A^2 + 3A - I \

&= 2 mat(
    1, 2;
    -5, 2;
)^2
+ 3 mat(
    1, 2;
    -5, 2;
)
- mat(
    1, 0;
    0, 1;
) \

&= 2 mat(
    -9, 6;
    -15, -6;
)
+ 3 mat(
    1, 2;
    -5, 2;
)
- mat(
    1, 0;
    0, 1;
) \

&= mat(
    -16, 17;
    -46, -7;
) \
\
f(B)
&= 2B^2 + 3B - I \

&= 2 mat(
    2, 1, 0;
    0, -1, 0;
    0, 0, 3;
)^2
+ 3 mat(
    2, 1, 0;
    0, -1, 0;
    0, 0, 3;
)
- mat(
    1, 0, 0;
    0, 1, 0;
    0, 0, 1;
) \

&= 2 mat(
    4, 1, 0;
    0, 1, 0;
    0, 0, 9;
)
+ 3 mat(
    2, 1, 0;
    0, -1, 0;
    0, 0, 3;
)
- mat(
    1, 0, 0;
    0, 1, 0;
    0, 0, 1;
) \

&= mat(
    13, 5, 0;
    0, -2, 0;
    0, 0, 26;
)
$

==

$
g(A)
&= A^2 - 3A + 12I \

&= mat(
    1, 2;
    -5, 2;
)^2
- 3 mat(
    1, 2;
    -5, 2;
)
+ 12 mat(
    1, 0;
    0, 1;
) \

&= mat(
    -9, 6;
    -15, -6;
)
-3 mat(
    1, 2;
    -5, 2;
)
+ 12 mat(
    1, 0;
    0, 1;
) \

&= mat(
    0, 0;
    0, 0;
) \
&= 0
$

==

#columns[
    $
    h(C) &= C^2 + 2C + 1 \

    &= mat(
        3, -1;
        0, 1;
    )^2
    + 2 mat(
        3, -1;
        0, 1;
    )
    + mat(
        1, 0;
        0, 1;
    ) \

    &= mat(
        9, -4;
        0, 1;
    )
    + 2 mat(
        3, -1;
        0, 1;
    )
    + mat(
        1, 0;
        0, 1;
    ) \

    &= mat(
        16, -6;
        0, 4;
    )
    $

    #colbreak()

    $
    (C + I_2)^2
    &= (
        mat(
            3, -1;
            0, 1;
        )
        + mat(
            1, 0;
            0, 1;
        )
    )^2 \
    &= mat(
        4, -1;
        0, 2;
    )^2 \
    &= mat(
        16, -6;
        0, 4;
    )
    $
]

So $h(C) = (C + I_2)(C + I_2)$.

= 15.9

We can compute the values of $A B$ and $B A$
for any $b_1, b_2, b_4, b_5, b_9 in RR$:

#columns[
    $
    A B
    &= mat(
        2, 0, 0;
        0, 2, 0;
        0, 0, 6;
    ) mat(
        b_1, b_2, 0;
        b_4, b_5, 0;
        0, 0, b_9;
    ) \
    &= mat(
        2 b_1, 2 b_2, 0;
        2 b_4, 2 b_5, 0;
        0, 0, 6 b_9;
    ) \
    $

    #colbreak()

    $
    B A
    &= mat(
        b_1, b_2, 0;
        b_4, b_5, 0;
        0, 0, b_9;
    ) mat(
        2, 0, 0;
        0, 2, 0;
        0, 0, 6;
    ) \
    &= mat(
        2 b_1, 2 b_2, 0;
        2 b_4, 2 b_5, 0;
        0, 0, 6 b_9;
    )
    $
]

Therefore, $A B = B A$ for any $b_1, b_2, b_4, b_5, b_9 in RR$.

However, this is not the case with $A B'$ and $B' A$.
We can use the fact that $B' = B + mat(
    0, 0, 1;
    0, 0, 0;
    0, 0, 0;
)$
to compute the products:

#columns[
    $
    A B'
    &= A (B + mat(
        0, 0, 1;
        0, 0, 0;
        0, 0, 0;
    )) \
    &= A B + A mat(
        0, 0, 1;
        0, 0, 0;
        0, 0, 0;
    ) \
    &= A B + mat(
        0, 0, 2;
        0, 0, 0;
        0, 0, 0;
    ) \
    $

    #colbreak()

    $
    B' A
    &= (B + mat(
        0, 0, 1;
        0, 0, 0;
        0, 0, 0;
    )) A \
    &= B A + mat(
        0, 0, 1;
        0, 0, 0;
        0, 0, 0;
    ) A \
    &= A B + mat(
        0, 0, 6b_9;
        0, 0, 0;
        0, 0, 0;
    )
    $
]

But $6b_9 != 2$ in general,
so $A$ and $B'$ do not commute
for all $b_1, b_2, b_4, b_5, b_9 in RR$.