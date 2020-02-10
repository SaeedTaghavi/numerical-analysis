# Python3 Program to interpolate 
# using Bessel's interpolation 

# calculating u mentioned in the 
# formula 
def ucal(u, n): 

	if (n == 0): 
		return 1; 

	temp = u; 
	for i in range(1, int(n / 2 + 1)): 
		temp = temp * (u - i); 

	for i in range(1, int(n / 2)): 
		temp = temp * (u + i); 

	return temp; 

# calculating factorial of 
# given number n 
def fact(n): 

	f = 1; 
	for i in range(2, n + 1): 
		f *= i; 

	return f; 

# Number of values given 
n = 6; 
x = [25, 26, 27, 28, 29, 30]; 

# y[][] is used for difference 
# table with y[][0] used for input 
y = [[0 for i in range(n)] 
		for j in range(n)]; 
y[0][0] = 4.000; 
y[1][0] = 3.846; 
y[2][0] = 3.704; 
y[3][0] = 3.571; 
y[4][0] = 3.448; 
y[5][0] = 3.333; 

# Calculating the central 
# difference table 
for i in range(1, n): 
	for j in range(n - i): 
		y[j][i] = y[j + 1][i - 1] - y[j][i - 1]; 

# Displaying the central 
# difference table 
for i in range(n): 
	for j in range(n - i): 
		print(y[i][j], "\t", end = " "); 
	print(""); 

# value to interpolate at 
value = 27.4; 

# Initializing u and sum 
sum = (y[2][0] + y[3][0]) / 2; 

# k is origin thats is f(0) 
k = 0; 
if ((n % 2) > 0): # origin for odd 
	k = int(n / 2); 
else: 
	k = int(n / 2 - 1); # origin for even 

u = (value - x[k]) / (x[1] - x[0]); 

# Solving using bessel's formula 
for i in range(1, n): 

	if (i % 2): 
		sum = sum + ((u - 0.5) *
				ucal(u, i - 1) *
			y[k][i]) / fact(i); 
	else: 
		sum = sum + (ucal(u, i) * (y[k][i] +
					y[k - 1][i]) / (fact(i) * 2)); 
		k -= 1; 

print("Value at", value, "is", round(sum, 5)); 

# This code is contributed by mits 

