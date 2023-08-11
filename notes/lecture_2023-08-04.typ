#import "../lib.typ": *

#show: lecture-notes.with(
    date: "2023-08-04"
)

= Definite quadratic forms

A quadratic form $q : RR^n -> RR$ is called _positive-definite_
if $ forall vname(x) in RR^n : vname(x) != vname(0) implies q(vname(x)) > 0 $

= Orthogonal matrices

Orthogonal matrices represent transformations which are either
rotations or reflections.

For any rotation matrix $R$,
the quadratic form $q_(R^T R) = v^T v$,
because

$
||R v|| &= ||v|| \
(R v) dot (R v) &= v dot v \
(R v)^T (R v) &= v^T v \
v^T R^T R v &= v^T v \
q_(R^T R) (v) &= v^T v
$

This also implies $R^T R = I_n$,
because every quadratic form is uniquely associated with a symmetric matrix.

This also implies that $R$ is orthonormal because the $i j$-th entry of $R^T R$
is defined as

$
(R^T)_i dot R^j
&= R^i dot R^j \
&= I_(i j) \
&= cases(
    1 "if" i = j,
    0 "if" i != j,
)
$

In general, the following conditions are equivalent
for a transformation $T_A : RR^n -> RR^m$:

+ $T_A$ is length-preserving.
+ $A^T A = I_n$
+ When $n = m$, $A A^T = I_n$
+ The set of $A$'s columns is orthonormal.
+ When $n = m$, the set of $A$'s rows are orthonormal.

The product of two orthogonal matrices is also orthogonal.

= Linear systems

A general linear system of $m$ equations in $n$ variables
is written as

$ A vname(x) = vname(b) $

where $A$ is an $m times n$ matrix,
and $a$ and $b$ are $n$- and $m$-vectors, respectively.