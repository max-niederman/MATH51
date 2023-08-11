#import "../lib.typ": *

#show: lecture-notes.with(
    date: "2023-08-02",
)

= Hyperplane normal with Gram-Schmidt process

An alternative method to find the normal vector of a hyperplane
is to use the Gram-Schmidt process on the set of vectors $ { vname(v)_1, vname(v)_2, ... vname(v)_n, vname(v)' } $
where $vname(v)'$ is a vector that does not lie on the hyperplane.
The vector in the resultant orthogonal basis corresponding to $vname(v)'$
will be the normal vector to the hyperplane.

= Orthogonal complement of a subspace

The orthogonal complement, $V^perp$, of a space $V subset.eq RR^n$ is the set

$ { vname(v)' in RR^n | vname(v) in V implies vname(v) perp vname(v)' } $

The dimension of this space is $n - dim(V)$.

== Proof

Let ${ vname(v)_1, vname(v)_2, ..., vname(v)_k }$ be a basis for $V$,
and ${ vname(v)_1, ... vname(v)_k, vname(v)_(k+1), ... vname(v)_n}$ be a basis for $RR^n$.

We can apply the Gram-Schmidt process to the second set of vectors
to get the orthogonal basis ${ vname(w)_1, vname(w)_2, ..., vname(w)_n }$,
with ${ vname(w)_1, vname(w)_2, ..., vname(w)_k }$ being an orthogonal basis of $V$.

Then for any $vname(x) in V^T$,
we have by the Fourier Formula that
$ vname(x) = sum_(i=1)^k a_i vname(w)_i $
with $a_i = (vname(x) dot vname(w)_i) / (vname(w)_i dot vname(w)_i)$.
This is zero for $i <= k$, so
$
vname(x) &= sum_(i=k+1)^n a_i vname(w)_i \
vname(x) &in span{ vname(w)_(k+1), ..., vname(w)_n }
$.

So ${ vname(w)_(k+1), ..., vname(w)_n }$ is a basis of $V^perp$,
and $V^perp$ has dimension $n - k$.

= Transpose

The matrix transpose moves "across" dot products:

$ A u dot v = u dot A^T v $

= Quadratic forms

Let $A$ be a symmetric $n times n$ matrix, then define the quadratic form $q_A : RR^n -> R$

$ q_A (v) = v^T A v $

