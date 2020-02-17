// CPP program to implement Simpson's rule 
#include<iostream> 
using namespace std; 

// Given function to be integrated 
float func( float x) 
{ 
	return (1 / ( 1 + x * x )); 
} 

// Function to perform calculations 
float calculate(float lower_limit, float upper_limit, 
				int interval_limit ) 
{ 
	float value; 
	float interval_size = (upper_limit - lower_limit) 
						/ interval_limit; 
	float sum = func(lower_limit) + func(upper_limit); 

	// Calculates value till integral limit 
	for (int i = 1 ; i < interval_limit ; i++) 
	{ 
		if (i % 3 == 0) 
			sum = sum + 2 * func(lower_limit + i * interval_size); 
		else
			sum = sum + 3 * func(lower_limit + i * interval_size); 
	} 
	return ( 3 * interval_size / 8 ) * sum ; 
} 

// Driver Code 
int main() 
{ 
	int interval_limit = 10; 
	float lower_limit = 1; 
	float upper_limit = 10; 
	float integral_res = calculate(lower_limit, upper_limit, 
								interval_limit); 

	cout << integral_res; 
	return 0; 
} 

