

# fixed-point method

- [x] finish the code
- [ ] compelete the documentation-find a way other than the github readme, because github does not render latex for the mathematics
- [ ] Push my commits to GitHub


In numerical analysis, Newton's method, also known as the Newton–Raphson method, named after Isaac Newton and Joseph Raphson, is a root-finding algorithm which produces successively better approximations to the roots (or zeroes) of a real-valued function. The most basic version starts with a single-variable function f defined for a real variable x, the function's derivative f ′, and an initial guess x0 for a root of f. If the function satisfies sufficient assumptions and the initial guess is close, then

![x1 relation](./img/x1.svg)

is a better approximation of the root than x0. Geometrically, (x1, 0) is the intersection of the x-axis and the tangent of the graph of f at (x0, f (x0)): that is, the improved guess is the unique root of the linear approximation at the initial point. The process is repeated as

![recurrence relation](./img/recurrent-relation.svg)

until a sufficiently precise value is reached. 


You can find more about the newton method [here](https://en.wikipedia.org/wiki/Newton%27s_method).

There are some plots, flowchart and animation that are interesting and helpful.


