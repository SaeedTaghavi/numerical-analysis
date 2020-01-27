def secant_method(f, x0: int, x1: int, iterations: int) -> float:
    """Return the root calculated using the secant method."""
    xs = [x0, x1] + iterations * [None]  # Allocate x's vector

    for i, x in enumerate(xs):
        if i < iterations:
            x1 = xs[i+1]
            xs[i+2] = x1 - f(x1) * (x1 - x) / (f(x1) - f(x)) # fill component xs[i+2]
    
    return xs[-1]  # Return the now filled last entry


def f_example(x):
    return x**2 - 612

root = secant_method(f_example, 10, 30, 5)

print("Root: {}".format(root))  # Root: 24.738633748750722