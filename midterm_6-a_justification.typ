#import "lib.typ": *

#set page(numbering: "1/1")

#let note(content) = text(
    style: "italic",
    weight: "bold",
    size: 0.9em,
    content
)

Suppose there is a function $f : RR^2 -> RR$ such that

$
f_x = e^x^2 sin y
#h(0.25in)
"and"
#h(0.25in)
f_y = e^x^2 cos y
$

Then, because $f$ is a scalar field,
we can use the gradient theorem to compute the difference between
the values of $f$ at $(0, 0)$ and any point $(x_1, y_1) in RR^2$.

In particular, let us examine two curves beginning at $(0, 0)$ and ending at $(x_1, y_1)$:

1. The curve (call it $cal(C)$) which goes in a straight line from $(0, 0)$ to $(x_1, 0)$ along the x-axis, and then straight from $(x_1, 0)$ to $(x_1, y_1)$ along the line $x = x_1$.
2. The curve (call it $cal(C)'$) which goes in a straight line from $(0, 0)$ to $(0, y_1)$ along the y-axis, and then straight from $(0, y_1)$ to $(x_1, y_1)$ along the line $y = y_1$.

For these paths, the line integral from the gradient theorem can be computed using regular integration (which is the only kind of integration I know how to do):

$
integral_cal(C) nabla f dot dif vname(r)
&= integral_0^x_1 f_x (x, 0) dif x + integral_0^y_1 f_y (x_1, y) dif y \

integral_(cal(C)') nabla f dot dif vname(r)
&= integral_0^y_1 f_y (0, y) dif y + integral_0^x_1 f_x (x, y_1) dif x
$

#note[
    I want to note that at the time I took the exam,
    I was not actually aware of either the gradient theorem or the line integral.
    I was thinking of the problem purely in terms of the 3D graph of $f$,
    and taking slices parallel to the $x$- and $y$-planes.
    In those slices, I reasoned, $f$ should behave like a single-variable function of $y$ or $x$,
    so I could just use the fundamental theorem of calculus in two perpindicular slices and add the results.
]

So by the gradient theorem,

$
f(x_1, y_1) - f(0, 0)
&= integral_cal(C) nabla f dot dif vname(r) \
&= integral_(cal(C)') nabla f dot dif vname(r) \
$

We equate the two line integrals and evaluate:

$
integral_cal(C) nabla f dot dif vname(r)
&= integral_(cal(C)') nabla f dot dif vname(r) \

integral_0^x_1 f_x (x, 0) dif x + integral_0^y_1 f_y (x_1, y) dif y
&= integral_0^y_1 f_y (0, y) dif y + integral_0^x_1 f_x (x, y_1) dif x \

integral_0^x_1 e^x^2 sin 0 dif x + integral_0^y_1 e^(x_1^2) cos y dif y
&= integral_0^y_1 e^0^2 cos y dif y + integral_0^x_1 e^(x^2) sin y_1 dif x \

integral_0^x_1 0 dif x + e^(x_1^2) integral_0^y_1 cos y dif y
&= integral_0^y_1 cos y dif y + sin y_1 integral_0^x_1 e^(x^2) dif x \

e^(x_1^2) (sin y_1 - sin 0)
&= (sin y_1 - sin 0) + sin y_1 integral_0^x_1 e^(x^2) dif x \

e^(x_1^2) sin y_1
&= (1 + integral_0^x_1 e^(x^2) dif x) sin y_1 \
$

#note[
    This is where I stopped on the exam,
    and simply wrote that they are inequal,
    but I'll continue here.
]

Let us investigate the case where $y_1 = pi / 2$:

$
e^(x_1^2) sin pi/2
&= (1 + integral_0^x_1 e^(x^2) dif x) sin pi/2 \

e^(x_1^2)
&= 1 + integral_0^x_1 e^(x^2) dif x \

(dif) / (dif x_1) e^(x_1^2)
&= (dif) / (dif x_1) (1 + integral_0^x_1 e^(x^2) dif x) \

2 x_1 e^(x_1^2)
&= dif / (dif x_1) integral_0^x_1 e^(x^2) dif x \

2 x_1 e^(x_1^2)
&= e^(x_1^2) \

2 x_1
&= 1 \
$

And in the case that $x_1 = 0$:

$
2 (0) &= 1 \

0 &= 1
$

Which is a contradiction,
so the premise that $f$ exists is false.