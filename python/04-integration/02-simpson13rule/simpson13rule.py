# Python code for simpson's 1 / 3 rule 
import math 

# Function to calculate f(x) 
def func( x ): 
	return math.log(x) 

# Function for approximate integral 
def simpsons_( ll, ul, n ): 

	# Calculating the value of h 
	h = ( ul - ll )/n 

	# List for storing value of x and f(x) 
	x = list() 
	fx = list() 
	
	# Calcuting values of x and f(x) 
	i = 0
	while i<= n: 
		x.append(ll + i * h) 
		fx.append(func(x[i])) 
		i += 1

	# Calculating result 
	res = 0
	i = 0
	while i<= n: 
		if i == 0 or i == n: 
			res+= fx[i] 
		elif i % 2 != 0: 
			res+= 4 * fx[i] 
		else: 
			res+= 2 * fx[i] 
		i+= 1
	res = res * (h / 3) 
	return res 
	
# Driver code 
lower_limit = 4 # Lower limit 
upper_limit = 5.2 # Upper limit 
n = 6 # Number of interval 
print("%.6f"% simpsons_(lower_limit, upper_limit, n)) 

