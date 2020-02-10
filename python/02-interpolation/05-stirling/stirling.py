# Python3 program to demonstrate Stirling 
# Approximation 
import math 

# Function to calculate value using 
# Stirling formula 
def Stirling(x, fx, x1, n): 

	y1 = 0; N1 = 1; d = 1; 
	N2 = 1; d2 = 1; 
	temp1 = 1; temp2 = 1; 
	k = 1; l = 1; 
	delta = [[0 for i in range(n)] 
				for j in range(n)]; 

	h = x[1] - x[0]; 
	s = math.floor(n / 2); 
	a = x[s]; 
	u = (x1 - a) / h; 

	# Preparing the forward difference 
	# table 
	for i in range(n - 1): 
		delta[i][0] = fx[i + 1] - fx[i]; 
	for i in range(1, n - 1): 
		for j in range(n - i - 1): 
			delta[j][i] = (delta[j + 1][i - 1] -
						delta[j][i - 1]); 

	# Calculating f(x) using the Stirling formula 
	y1 = fx[s]; 

	for i in range(1, n): 
		if (i % 2 != 0): 
			if (k != 2): 
				temp1 *= (pow(u, k) - pow((k - 1), 2)); 
			else: 
				temp1 *= (pow(u, 2) - pow((k - 1), 2)); 
			k += 1; 
			d *= i; 
			s = math.floor((n - i) / 2); 
			y1 += (temp1 / (2 * d)) * (delta[s][i - 1] +
									delta[s - 1][i - 1]); 
		else: 
			temp2 *= (pow(u, 2) - pow((l - 1), 2)); 
			l += 1; 
			d *= i; 
			s = math.floor((n - i) / 2); 
			y1 += (temp2 / (d)) * (delta[s][i - 1]); 

	print(round(y1, 3)); 

# Driver Code 
n = 5; 
x = [0, 0.5, 1.0, 1.5, 2.0 ]; 
fx = [ 0, 0.191, 0.341, 0.433, 0.477]; 

# Value to calculate f(x) 
x1 = 1.22; 
Stirling(x, fx, x1, n); 

# This code is contributed by mits 

