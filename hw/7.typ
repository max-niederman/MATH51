#import "../lib.typ": *

#show: homework.with(
    title: "Math 51 Homework #7"
)

= 22.5

== a

$
U U^(-1) &= I_4 \

mat(
    4, 2, -4, 8;
    0, -3, 6, 12;
    0, 0, 1, 4;
    0, 0, 0, 2;
)
mat(
    1/4, a, b, c;
    0, -1/3, d, e;
    0, 0, 1, f;
    0, 0, 0, 1/2;
)
&= I_4 \

4 a - 1/3 (2) &= 0 \
a &= 1/6 \

-3 d + 6 &= 0 \
d &= 2 \

f + 1/2 (4) &= 0 \
f &= -2 \

mat(
    4, 2, -4, 8;
    0, -3, 6, 12;
    0, 0, 1, 4;
    0, 0, 0, 2;
)
mat(
    1/4, 1/6, b, c;
    0, -1/3, 2, e;
    0, 0, 1, -2;
    0, 0, 0, 1/2;
)
&= I_4 \

4 b + 2(2) + 1(-4) &= 0 \
4 b &= 0 \
b &= 0 \

-3 e - 2(6) + 1/2 (12) &= 0 \
-3 e - 6 &= 0 \
e &= -2 "(this is cursed)" \

mat(
    4, 2, -4, 8;
    0, -3, 6, 12;
    0, 0, 1, 4;
    0, 0, 0, 2;
)
mat(
    1/4, 1/6, 0, c;
    0, -1/3, 2, -2;
    0, 0, 1, -2;
    0, 0, 0, 1/2;
)
&= I_4 \

4 c + 2(-2) - 2(-4) + 1/2 (8) &= 0 \
4c + 8 &= 0 \
c &= -2 \

U^(-1) &= mat(
    1/4, 1/6, 0, -2;
    0, -1/3, 2, -2;
    0, 0, 1, -2;
    0, 0, 0, 1/2;
)
$

And to check that this is correct:

$
U U^(-1)
&=
mat(
    4, 2, -4, 8;
    0, -3, 6, 12;
    0, 0, 1, 4;
    0, 0, 0, 2;
) mat(
    1/4, 1/6, 0, -2;
    0, -1/3, 2, -2;
    0, 0, 1, -2;
    0, 0, 0, 1/2;
) \

&=
mat(
    1/4 (4), 4/6 - 2/3, 4 - 4, -2(4) -2(2) -2(-4) + 1/2 (8);
    0, -1/3 (-3), 2(-3) + 6, -2(-3) -2(6) + 1/2 (12);
    0, 0, 1, -2 + 1/2 (4);
    0, 0, 0, 1/2 (2);
) \

&=
mat(
    1, 0, 0, 0;
    0, 1, 0, 0;
    0, 0, 1, 0;
    0, 0, 0, 1;
) \

&= I_4
$

== b

$
U vname(x) &= vname(b) \
U^(-1) U vname(x) &= U^(-1) vname(b) \
vname(x) &= U^(-1) vname(b) \
\
vec(x_1, x_2, x_3, x_4)
&= mat(
    1/4, 1/6, 0, -2;
    0, -1/3, 2, -2;
    0, 0, 1, -2;
    0, 0, 0, 1/2;
)
vec(b_1, b_2, b_3, b_4) \
\
x_1 &= 1/4 b_1 + 1/6 b_2 - 2 b_4 \
x_2 &= -1/3 b_2 + 2 b_3 - 2 b_4 \
x_3 &= b_3 - 2 b_4 \
x_4 &= 1/2 b_4 \
$

#pagebreak()
And we check the linear system from 22.1 (a):

$
x_1 &= 1/4 (8) + 1/6 (-6) - 2 (6) \
&= 2 - 1 - 12 \
&= -11 \

x_2 &= -1/3 (-6) + 2 (2) - 2 (6) \
&= 2 + 4 - 12 \
&= -6 \

x_3 &= 2 - 2 (6) \
&= 2 - 12 \
&= -10 \

x_4 &= 1/2 (6) \
&= 3 \
\
\
4 x_1 + 2 x_2 - 4 x_3 + 8 x_4
&= 4 (-11) + 2 (-6) - 4 (-10) + 8 (3) \
&= -44 - 12 + 40 + 24 \
&= 8 \
\
0 x_1 - 3 x_2 + 6 x_3 + 12 x_4
&= 0 (-11) - 3 (-6) + 6 (-10) + 12 (3) \
&= 0 + 18 - 60 + 36 \
&= -6 \
\
0 x_1 + 0 x_2 + 1 x_3 + 4 x_4
&= 0 (-11) + 0 (-6) + 1 (-10) + 4 (3) \
&= 0 + 0 - 10 + 12 \
&= 2 \
\
0 x_1 + 0 x_2 + 0 x_3 + 2 x_4
&= 0 (-11) + 0 (-6) + 0 (-10) + 2 (3) \
&= 0 + 0 + 0 + 6 \
&= 6 \
$

= 22.7

== a

$
mat(
    1, 0, 0;
    5, 2, 0;
    3, -4, -1;
)
mat(
    3, 2, -2;
    0, 1, 1;
    0, 0, -4;
)
&=
mat(
    3(1), 2(1), -2(1);
    3(5), 2(5) + 1(2), -2(5) + 1(2);
    3(3), 2(3) + 1(-4), -2(3) + 1(-4) -4(-1);
) \
&=
mat(
    3, 2, -2;
    15, 12, -8;
    9, 2, -6;
)
$

== b

$
L L^(-1) &= I_3 \

mat(
    1, 0, 0;
    5, 2, 0;
    3, -4, -1;
)
mat(
    1, 0, 0;
    a, 1/2, 0;
    b, c, -1;
)
&= I_3 \
5 + 2a &= 0 \
a &= -5/2 \
1/2 (-4) - c &= 0 \
c &= -2 \

mat(
    1, 0, 0;
    5, 2, 0;
    3, -4, -1;
)
mat(
    1, 0, 0;
    -5/2, 1/2, 0;
    b, -2, -1;
)
&= I_3 \
3 -4(-5/2) -b &= 0 \
3 + 10 - b &= 0 \
b &= 13 \

L^(-1) &= mat(
    1, 0, 0;
    -5/2, 1/2, 0;
    13, -2, -1;
) \

L L^(-1)
&=
mat(
    1, 0, 0;
    5, 2, 0;
    3, -4, -1;
)
mat(
    1, 0, 0;
    -5/2, 1/2, 0;
    13, -2, -1;
) \
&=
mat(
    1, 0, 0;
    1(5) - 5/2 (2), 1/2(2), 0;
    1(3) - 5/2(-4) + 13(-1), 1/2(-4) - 2(-1), 0;
) \
&= mat(
    1, 0, 0;
    0, 1, 0;
    0, 0, 1;
) \
&= I_3
$

$
U U^(-1) &= I_3 \

mat(
    3, 2, -2;
    0, 1, 1;
    0, 0, -4;
)
mat(
    1/3, a, b;
    0, 1, c;
    0, 0, -1/(4);
)
&= I_3 \

3a + 2 &= 0 \
a &= -2/3 \

c - 1/4 &= 0 \
c &= 1/4 \

mat(
    3, 2, -2;
    0, 1, 1;
    0, 0, -4;
)
mat(
    1/3, -2/3, b;
    0, 1, 1/4;
    0, 0, -1/4;
)
&= I_3 \

3b + 2(1/4) -2(-1/4) &= 0 \
3b + 1 &= 0 \
b &= -1/3 \

U^(-1) &= mat(
    1/3, -2/3, -1/3;
    0, 1, 1/4;
    0, 0, -1/4;
) \

U U^(-1)
&=
mat(
    3, 2, -2;
    0, 1, 1;
    0, 0, -4;
)
mat(
    1/3, -2/3, -1/3;
    0, 1, 1/4;
    0, 0, -1/4;
) \
&=
mat(
    1/3 (3), -2/3 (3) + 1(2), -1/3 (3) + 1/4 (2) - 1/4 (-2);
    0, 1(1), 1/4 (1) - 1/4 (1);
    0, 0, -1/4 (-4);
) \
&=
mat(
    1, 0, 0;
    0, 1, 0;
    0, 0, 1;
) \
&= I_3
$

#pagebreak()
== c

$
U^(-1) L^(-1)
&=
mat(
    1/3, -2/3, -1/3;
    0, 1, 1/4;
    0, 0, -1/4;
)
mat(
    1, 0, 0;
    -5/2, 1/2, 0;
    13, -2, -1;
) \
&=
mat(
    1 (1/3) - 5/2 (-2/3) + 13 (-1/3), 1/2 (-2/3) - 2 (-1/3), -1(-1/3);
    -5/2 (1) + 13(1/4), 1/2 (1) - 2(1/4), -1(1/4);
    13(-1/4), -2(-1/4), -1(-1/4);
) \
&=
mat(
    1/3 + 5/3 - 13/3, -1/3 + 2/3, 1/3;
    -10/4 + 13/4, 1/2 - 1/2, -1/4;
    -13/4, 1/2, 1/4;
) \
&=
mat(
    -7/3, 1/3, 1/3;
    3/4, 0, -1/4;
    -13/4, 1/2, 1/4;
)
$

Finally, we can check that this is really the inverse of $A$:

$
A U^(-1) L^(-1)
&=
A (U^(-1) L^(-1)) \
&=
mat(
    3, 2, -2;
    15, 12, -8;
    9, 2, -6;
)
mat(
    -7/3, 1/3, 1/3;
    3/4, 0, -1/4;
    -13/4, 1/2, 1/4;
) \
&=
mat(
    -7 + 3/2 + 13/2, 1 - 1, 1 - 1/2 - 1/2;
    -35 + 9 + 26, 5 - 4, 5 - 3 - 2;
    -21 + 3/2 + 39/2, 3 - 3, 3 - 1/2 - 3/2;
) \
&=
mat(
    1, 0, 0;
    0, 1, 0;
    0, 0, 1;
) \
&= I_3
$

= 22.8

== a

$
&mat(
    1 slash sqrt(3), sqrt(2 slash 3), 0;
    1 slash sqrt(3), -1 slash sqrt(6), -1 slash sqrt(2);
    1 slash sqrt(3), -1 slash sqrt(6), 1 slash sqrt(2);
)
mat(
    sqrt(3), 4 slash sqrt(3), -5 slash sqrt(3);
    0, sqrt(2 slash 3), -1 slash sqrt(6);
    0, 0, 1 slash sqrt(2);
) \
= &mat(
    sqrt(3) slash sqrt(3),
    4 slash sqrt(3) sqrt(3) + sqrt(2 slash 3) sqrt(2 slash 3),
    -5 slash sqrt(3) sqrt(3) - sqrt(2 slash 3) slash sqrt(6);

    sqrt(3) slash sqrt(3),
    4 slash sqrt(3) sqrt(3) - sqrt(2 slash 3) slash sqrt(6),
    -5 slash sqrt(3) sqrt(3) + 1 slash sqrt(6) sqrt(6) - 1 slash sqrt(2) sqrt(2);

    sqrt(3) slash sqrt(3),
    4 slash sqrt(3) sqrt(3) - sqrt(2 slash 3) slash sqrt(6),
    -5 slash sqrt(3) sqrt(3) + 1 slash sqrt(6) sqrt(6) + 1 slash sqrt(2) sqrt(2);
) \
= &mat(
    1, 4/3 + 2/3, -5/3 - 1/3;
    1, 4/3 - 1/3, -5/3 + 1/6 - 1/2;
    1, 4/3 - 1/3, -5/3 + 1/6 + 1/2;
) \
= &mat(
    1, 2, -2;
    1, 1, -2;
    1, 1, -1;
)
$

== b

I'll start by decomposing $R$
into the product of a diagonal matrix and a matrix with integer entries:

$
R
&=
mat(
    1/sqrt(3), 0, 0;
    0, 1/sqrt(6), 0;
    0, 0, 1/sqrt(2);
)
mat(
    3, 4, -5;
    0, 2, -1;
    0, 0, 1;
) \

R^(-1)
&=
mat(
    3, 4, -5;
    0, 2, -1;
    0, 0, 1;
)^(-1) 
mat(
    sqrt(3), 0, 0;
    0, sqrt(6), 0;
    0, 0, sqrt(2);
)
$

#pagebreak()
Then I need only to find the inverse of the integer matrix:

$
mat(
    3, 4, -5;
    0, 2, -1;
    0, 0, 1;
)
mat(
    1/3, a, b;
    0, 1/2, c;
    0, 0, 1;
)
&= I_3 \

3 a + 2 &= 0 \
a &= -2/3 \

2 c - 1 &= 0 \
c &= 1/2 \

3 b + 4 c - 5 &= 0 \
3 b + 4 (1/2) - 5 &= 0 \
3 b - 3 &= 0 \
b &= 1 \
$

And finally, I multiply it all together:

$
R^(-1)
&=
mat(
    1/3, -2/3, 1;
    0, 1/2, 1/2;
    0, 0, 1;
)
mat(
    sqrt(3), 0, 0;
    0, sqrt(6), 0;
    0, 0, sqrt(2);
) \

&= mat(
    sqrt(3)/3, -2/3 sqrt(6), sqrt(2);
    0, sqrt(6)/2, sqrt(2)/2;
    0, 0, sqrt(2);
)
$

Then I'll check that this is really the inverse of $R$:

$
R R^(-1)
&=
mat(
    sqrt(3), 4 slash sqrt(3), -5 slash sqrt(3);
    0, sqrt(2 slash 3), -1 slash sqrt(6);
    0, 0, 1 slash sqrt(2);
)
mat(
    sqrt(3)/3, -2/3 sqrt(6), sqrt(2);
    0, sqrt(6)/2, sqrt(2)/2;
    0, 0, sqrt(2);
) \

&=
mat(
    1,
    -2 sqrt(2) + 2 sqrt(2),
    sqrt(6) + (2 sqrt(2)) / sqrt(3)  - (5 sqrt(2)) / sqrt(3);

    0,
    (sqrt(6) sqrt(2)) / (2 sqrt(3)),
    (sqrt(2) sqrt(2)) / (2 sqrt(3)) - sqrt(2) / sqrt(6);

    0,
    0,
    sqrt(2) / sqrt(2)
) \

&=
mat(
    1, 0, 0;
    0, 1, 0;
    0, 0, 1;
) \
&= I_3
$

#pagebreak()
== c

$
A^(-1)
&= R^(-1) Q^(-1) \
&=
mat(
    sqrt(3)/3, -2/3 sqrt(6), sqrt(2);
    0, sqrt(6)/2, sqrt(2)/2;
    0, 0, sqrt(2);
)
mat(
    1 slash sqrt(3), 1 slash sqrt(3), 1 slash sqrt(3);
    sqrt(2 slash 3), -1 slash sqrt(6), -1 slash sqrt(6);
    0, -1 slash sqrt(2), 1 slash sqrt(2);
) \
&=
mat(
    1/sqrt(3), -(2 sqrt(2))/sqrt(3), sqrt(2);
    0, sqrt(3)/sqrt(2), 1/sqrt(2);
    0, 0, sqrt(2);
)
mat(
    1 / sqrt(3), 1 / sqrt(3), 1 / sqrt(3);
    sqrt(2)/sqrt(3), -1 / (sqrt(2) sqrt(3)), -1 / (sqrt(2) sqrt(3));
    0, -1 / sqrt(2), 1 / sqrt(2);
) \
&=
mat(
    1/3 - 4/3,
    1/3 + 2/3 - 1,
    1/3 + 2/3 + 1;

    1,
    -1/2 - 1/2,
    -1/2 + 1/2;

    0,
    -1,
    1;
) \
&=
mat(
    -1, 0, 2;
    1, -1, 0;
    0, -1, 1;
) \
\
A A^(-1)
&=
mat(
    1, 2, -2;
    1, 1, -2;
    1, 1, -1;
)
mat(
    -1, 0, 2;
    1, -1, 0;
    0, -1, 1;
) \
&=
mat(
    -1 + 2, -2 + 2, 2 - 2;
    -1 + 1, -1 + 2, 2 - 2;
    -1 + 1, -1 + 1, 2 - 1;
) \
&=
mat(
    1, 0, 0;
    0, 1, 0;
    0, 0, 1;
) \
&= I_3
$

= 22.11

== a

$
Q R = Q' R' \
Q^(-1) Q R = Q^(-1) Q' R' \
Q^(-1) Q R R'^(-1) = Q^(-1) Q' R' R'^(-1) \
I_3 R R'^(-1) = Q^(-1) Q' I_3 \
R R'^(-1) = Q^(-1) Q' \
$

=== Orthogonality of $Q^(-1) Q'$

The columns of $Q^(-1) Q'$ are $Q^(-1) Q'$ multiplied by each of the basis vectors.
Because both $Q^(-1)$ and $Q'$ are orthogonal, they are length preserving.
Therefore, each column of $Q^(-1) Q'$ is, like the basis vectors, a unit vector.

Now suppose we have two orthogonal vectors $vname(v)$ and $vname(w)$:

$
&(Q^(-1) Q' vname(v)) dot (Q^(-1) Q' vname(w)) \
= &(Q^(-1) Q' vname(v))^T (Q^(-1) Q' vname(w)) \
= &(vname(v)^T Q'^T Q^(-1)^T) (Q^(-1) Q' vname(w)) \
= &vname(v)^T Q'^(-1) Q Q^(-1) Q' vname(w) \
= &vname(v)^T Q'^(-1) I_n Q' vname(w) \
= &vname(v)^T Q'^(-1) Q' vname(w) \
= &vname(v)^T I_n vname(w) \
= &vname(v)^T vname(w) \
= &vname(v) dot vname(w) \
= &0 \
$

If we let $vname(v)$ and $vname(w)$ be different basis vectors,
then we see that the columns of $Q^(-1) Q'$ are orthogonal to each other.

Therefore,
$Q^(-1) Q'$ is an orthogonal matrix.

=== Upper Triangularity of $R R'^(-1)$

We know that $R$ and $R'$ are both upper triangular matrices.

The inverse of an upper triangular matrix is also upper triangular,
so $R'^(-1)$ is upper triangular.

Furthermore,
the product of two upper triangular matrices is upper triangular,
so $R R'^(-1)$ is upper triangular.

The diagonal entries of the inverse of an upper triangular matrix
are the reciprocals of the diagonal entries of the matrix,
so the diagonal entries of $R'^(-1)$ are positive.

The diagonal entries of the product of two upper triangular matrices
are the entry-wise products of the diagonal entries of the two matrices,
and $R$ and $R'^(-1)$ have all positive diagonal entries,
so $R R'^(-1)$ has all positive diagonal entries.

#pagebreak()
== b

$
Q^(-1) Q' &= I_n \
Q Q^(-1) Q' &= Q I_n \
I_n Q' &= Q I_n \
Q' &= Q \
$

$
R R'^(-1) &= I_n \
R R'^(-1) R' &= I_n R' \
R I_n &= I_n R' \
R &= R' \
$

== c

Let $M in RR^(n times n)$ be orthogonal and upper triangular with positive diagonal entries.

The first column of $M$ can have only one nonzero entry, its first, because $M$ is upper triangular.
This entry must have absolute value $1$, because each column of $M$ is a unit vector.
This entry also lies on the diagonal, so it must be positive.
Taken together, the first column of $M$ must be $vname(e)_1$.

Every other column of $M$ is orthogonal to its first column,
so their first entries must all be zero.
The second column, therefore, can only have one nonzero entry, its second.
Like with the first column, this entry must be $1$, so the second column is $vname(e)_2$.

This process continues for all $n$ columns and we have that
$M = mat(vname(e)_1, vname(e)_2, ..., vname(e)_n) = I_n$.

Combining with the results of Part a and b yields:

- Part a: $Q^(-1) Q' = R R'^(-1)$ is orthogonal and upper triangular with positive diagonal entries.
- Part b: if $Q^(-1) Q' = I_n$, $Q = Q'$ and $R = R'$.
- Part c: if a square matrix is orthogonal and upper triangular with positive diagonal entries, it is the identity matrix.
- $Q^(-1) Q' = I_n$
- $Q = Q'$ and $R = R'$

= 23.4

$
vec(0, 1) &= -vec(1, 1) + vec(1, 2) \
A vec(0, 1) &= A (-vec(1, 1) + vec(1, 2)) \
A vec(0, 1) &= -vec(2, 2) + vec(3, 6) \
A vec(0, 1) &= vec(1, 4) \
$

= 23.7

== a

$
(A vname(v)) dot vname(w) &= vname(v) dot (A^T vname(w)) \
(A vname(v)) dot vname(w) &= vname(v) dot (A vname(w)) \
lambda vname(v) dot vname(w) &= vname(v) dot mu vname(w) \
$

== b

$
lambda vname(v) dot vname(w) &= vname(v) dot mu vname(w) \
lambda vname(v) dot vname(w) &= mu vname(v) dot vname(w) \
$

If $vname(v)$ and $vname(w)$ are not orthogonal,
then we can divide both sides by $vname(v) dot vname(w)$ to get:
$lambda = mu$.
This is a contradiction, so $vname(v)$ and $vname(w)$ must be orthogonal.

= 23.10

== a

$
vname(w) times vname(v)
&= vec(
    w_2 v_3 - w_3 v_2,
    w_3 v_1 - w_1 v_3,
    w_1 v_2 - w_2 v_1
) \
&= - vec(
    w_3 v_2 - w_2 v_3,
    w_1 v_3 - w_3 v_1,
    w_2 v_1 - w_1 v_2
) \
&= - vec(
    v_2 w_3 - v_3 w_2,
    v_3 w_1 - v_1 w_3,
    v_1 w_2 - v_2 w_1
) \
&= - (vname(v) times vname(w)) \
\
\
vname(v) times vname(v)
&= vec(
    v_2 v_3 - v_3 v_2,
    v_3 v_1 - v_1 v_3,
    v_1 v_2 - v_2 v_1
) \
&= vec(
    0,
    0,
    0
) \
&= vname(0)
$

== b

$
vname(v) times vname(w)
&=
det mat(
    -1, 2;
    3, 3;
) vname(e)_1
- det mat(
    2, 1;
    3, 3;
) vname(e)_2
+ det mat(
    2, 1;
    -1, 2;
) vname(e)_3 \
&= -9 vname(e)_1 - 3 vname(e)_2 + 5 vname(e)_3 \
&= vec(-9, -3, 5) \
\
vname(w) times vname(u)
&=
det mat(
    2, 3;
    3, -2;
) vname(e)_1
- det mat(
    1, 4;
    3, -2;
) vname(e)_2
+ det mat(
    1, 4;
    2, 3;
) vname(e)_3 \
&= -13 vname(e)_1 + 14 vname(e)_2 - 5 vname(e)_3 \
&= vec(-13, 14, -5) \
\
(vname(v) times vname(w)) times vname(u)
&=
vec(-9, -3, 5) times vec(4, 3, -2) \
&=
det mat(
    -3, 3;
    5, -2;
) vname(e)_1
- det mat(
    -9, 4;
    5, -2;
) vname(e)_2
+ det mat(
    -9, 4;
    -3, 3;
) vname(e)_3 \
&= -9 vname(e)_1 + 2 vname(e)_2 - 15 vname(e)_3 \
&= vec(-9, 2, -15) \
$

$
v times (w times u)
&= vec(2, -1, 3) times vec(-13, 14, -5) \
&=
det mat(
    -1, 14;
    3, -5;
) vname(e)_1
- det mat(
    2, -13;
    3, -5;
) vname(e)_2
+ det mat(
    2, -13;
    -1, 14;
) vname(e)_3 \
&= -37 vname(e)_1 - 29 vname(e)_2 + 15 vname(e)_3 \
&= vec(-37, -29, 15) \
$

== c

$
(c vname(v)) times vname(w)
&= vec(
    (c v_2) w_3 - (c v_3) w_2,
    (c v_3) w_1 - (c v_1) w_3,
    (c v_1) w_2 - (c v_2) w_1
) \
&= vec(
    c v_2 w_3 - c v_3 w_2,
    c v_3 w_1 - c v_1 w_3,
    c v_1 w_2 - c v_2 w_1
) \
&= c vec(
    v_2 w_3 - v_3 w_2,
    v_3 w_1 - v_1 w_3,
    v_1 w_2 - v_2 w_1
) \
&= c (vname(v) times vname(w)) \
$

$
(vname(v) + vname(v)') times vname(w)
&= vec(
    v_1 + v_1',
    v_2 + v_2',
    v_3 + v_3'
) times vname(w) \
&= vec(
    (v_2 + v_2') w_3 - (v_3 + v_3') w_2,
    (v_3 + v_3') w_1 - (v_1 + v_1') w_3,
    (v_1 + v_1') w_2 - (v_2 + v_2') w_1
) \
&= vec(
    (v_2 w_3 - v_3 w_2) + (v_2' w_3 - v_3' w_2),
    (v_3 w_1 - v_1 w_3) + (v_3' w_1 - v_1' w_3),
    (v_1 w_2 - v_2 w_1) + (v_1' w_2 - v_2' w_1)
) \
&= vname(v) times vname(w) + vname(v)' times vname(w) \
$

== d

$
(vname(v) times vname(w)) dot vname(v)
&= vec(-9, -3, 5) dot vec(2, -1, 3) \
&= -18 + 3 + 15 \
&= 0 \
\
(vname(v) times vname(w)) dot vname(w)
&= vec(-9, -3, 5) dot vec(1, 2, 3) \
&= -9 - 6 + 15 \
&= 0
$

So $vname(v) times vname(w)$ is orthogonal to
$vname(v)$ and $vname(w)$.

$
||vname(v) times vname(w)||^2
&= (-9)^2 + (-3)^2 + 5^2 \
&= 81 + 9 + 25 \
&= 115 \
\
||vname(v)||^2 ||vname(w)||^2 sin^2 theta
&=
||vname(v)||^2
||vname(w)||^2
(1 - (vname(v) dot vname(w))^2 / (||vname(v)||^2 ||vname(w)||^2)) \
&=
||vname(v)||^2 ||vname(w)||^2
- (vname(v) dot vname(w))^2 \
&=
(2^2 + 1^2 + 3^2)(1^2 + 2^2 + 3^2)
- (2 - 2 + 9)^2 \
&= 14^2 - 9^2 \
&= 115 \
\
||vname(v) times vname(w)||^2 &= ||vname(v)||^2 ||vname(w)||^2 sin^2 theta \
||vname(v) times vname(w)|| &= ||vname(v)|| ||vname(w)|| sin theta \
$

= 24.4

== a

Let $k$ be a positive integer such that $A^k$ is symmetric.

$
A^(k + 1) &= A^k A \
(A^(k + 1))^T &= (A^k A)^T \
(A^(k + 1))^T &= A^T (A^k)^T \
(A^(k + 1))^T &= A A^k \
(A^(k + 1))^T &= A^(k + 1) \
$

So $A^(k+1)$ is also symmetric.

We already know that $A^1 = A$ is symmetric,
so by induction $A^k$ is symmetric for all positive integers $k$.

== b

If $A$ has an eigenvalue of $0$,
then there is some nonzero $vname(v)$ (an eigenvector) such that

$
A vname(v)
&= 0 vname(v) \
&= vname(0) \
$

So $A$ is not invertible, because its null space has a nonzero vector.

On the other hand,
if $A$ is invertible then it cannot map any nonzero vector to $vname(0)$,
(what would be the result of $A^(-1) vname(0)$?)
so it cannot have an eigenvalue of $0$, or it would have a nonzero eigenvector mapping to $vname(0)$.

Therefore, $A$ is invertible iff all its eigenvalues are nonzero.

= 24.5

== a

The $(i, j)$ entry of $M^T M$, $(M^T M)_(i j)$ is defined by:

$
(M^T M)_(i j)
&= sum_(k = 1)^n (M^T)_(k j) M_(i k) \
&= sum_(k = 1)^n M_(j k) M_(i k) \
&= sum_(k = 1)^n (M^T)_(k i) M_(j k) \
&= (M^T M)_(j i)
$

So $M^T M$ is symmetric.

== b

$
q(vname(x))
&= vname(x) dot (M^T M vname(x)) \
&= vname(x)^T M^T M vname(x) \
&= (vname(x)^T M^T) (M vname(x)) \
&= (M vname(x))^T (M vname(x)) \
&= (M vname(x)) dot (M vname(x)) \
&= ||M vname(x)||^2
$

The squared length of a vector is always nonnegative,
so $q$ is positive-semidefinite.

== c

The length of a vector is zero iff the vector is the zero vector.
Therefore, $||M vname(x)||^2 = vname(0)$ exactly when $M x = vname(0)$.

If $N(M) = {vname(0)}$, the only such $vname(x)$ is $vname(0)$,
and $q$ is therefore positive-definite.
If $N(M) != {vname(0)}$, then there is some $vname(x) != vname(0)$ such that $M vname(x) = vname(0)$,
so $q(vname(x)) = vname(0)$ and $q$ is not positive-definite.
