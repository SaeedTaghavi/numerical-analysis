

# fixed-point method

- [x] finish the code
- [ ] compelete the documentation-find a way other than the github readme, because github does not render latex for the mathematics
- [ ] Push my commits to GitHub


Suppose that the equation f(x) = 0 is written in the form x = g(x); that is,

f(x) = x − g(x) = 0.

Then any fixed point $\xi$ of $g(x)$ is a root of f(x) = 0 because

f(x\*) = x\* − g(x\*) = x\* − x\* = 0.

Thus, a root of f(x) = 0 can be found by finding a fixed point of x = g(x), which corresponds to f(x) = 0.

Finding a root of f(x) = 0 by finding a fixed point of x = g(x) immediately suggests an iterative procedure of the following type


Start with an initial guess x0 of the root and form a sequence {xk} defined by

 x_{k+1} = g(x_k), k = 0, 1, 2, ... 

If the sequence {x_k} converges, x\* will be a root of f(x)=0.

<!-- 
then $ \lim_{k \rightarrow \infty} x_k = \xi $ will be a root of $f(x) = 0$
 -->
The question therefore rises:

Given f(x) = 0 in [a, b].

How do we write f(x) = 0 in the form x = g(x) such that the sequence {x_k} is defined by 

x_{k+1} = g(x_k);

will converge to the root x = ξ for any choice of the initial approximation x_0?


The simplest way to write f(x) = 0 in the form x = g(x) is to add $x$ on both sides, that is,
x = f(x) + x = g(x).
But it does not very often work.
the goal of this code is to find the root of the 
f(x) = x\*\*3 − 6\*x\*\*2 + 11\*x − 6 = 0
with the fixed point iteration.
we define g(x) = x + f(x) = x\*\*3 − 6\*x\*\*2 + 12\*x − 6
We know that there is a root of f(x) in [2.5, 4]; namely x = 3.
Let’s start the iteration xk+1 = g(xk) with x0 = 3.5.
Then we have:
x1 = g(x0) = g(3.5) = 5.3750,
x2 = g(x1) = g(5.3750) = 40.4434,
x3 = g(x2) = g(40.4434) = 5.6817 × 10\*\*4,
and x4 = g(x3) = g(5.6817 × 10\*\*4) = 1.8340 × 10\*\*14
.
The sequence {xk} is clearly diverging

You can find more about the fixed-point method [here](https://en.wikipedia.org/wiki/Fixed-point_iteration).
There are some plots, flowchart and animation that are interesting and helpful.


