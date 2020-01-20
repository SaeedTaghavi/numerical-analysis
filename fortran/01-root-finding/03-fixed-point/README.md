

# fixed-point method

Suppose that the equation $f(x) = 0$ is written in the form $x = g(x)$; that is,

$$f(x) = x − g(x) = 0$$.

Then any fixed point $\xi$ of $g(x)$ is a root of $f(x) = 0$ because
$$f(\xi) = \xi − g(\xi) = \xi − \xi = 0$$.

Thus, a root of $f(x) = 0$ can be found by finding a fixed point of $x = g(x)$, which corresponds to $f(x) = 0$.

Finding a root of $f(x) = 0$ by finding a fixed point of $x = g(x)$ immediately suggests an iterative procedure of the following type
Start with an initial guess $x_0$ of the root and form a sequence ${x_k}$ defined by

$$ x_{k+1} = g(x_k), k = 0, 1, 2, ... $$

If the sequence ${x_k}$ converges, then $ \lim_{k \rightarrow \infty} x_k = \xi $ will be a root of $f(x) = 0$

The question therefore rises:

Given $f(x) = 0$ in $[a, b]$.

How do we write $f(x) = 0$ in the form $x = g(x)$ such that the sequence ${x_k}$ is defined by 

$$x_{k+1} = g(x_k)$$;

will converge to the root $x = \xi$ for any choice of the initial approximation $x_0$?

The simplest way to write $f(x) = 0$ in the form $x = g(x)$ is to add $x$ on both sides, that is,
$x = f(x) + x = g(x)$.
But it does not very often work.



You can find more about the fixed-point method [here](https://en.wikipedia.org/wiki/Fixed-point_iteration).
There are some plots, flowchart and animation that are interesting and helpful.



