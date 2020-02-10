# Python3 code for the implementation of 
# Linear extrapolation 

# Function to calculate the linear 
# extrapolation 
def extrapolate(d, x): 
	y = (d[0][1] + (x - d[0][0]) /
		(d[1][0] - d[0][0]) *
		(d[1][1] - d[0][1])); 

	return y; 

# Driver Code 

# Sample dataset 
d = [[ 1.2, 2.7 ], [1.4, 3.1 ]]; 

# Sample x value 
x = 2.1; 

# Finding the extrapolation 
print("Value of y at x = 2.1 :", 
			extrapolate(d, x)); 

# This code is contributed by mits 

