// C++ code for the implementation 
// of Linear extrapolation 

#include <bits/stdc++.h> 
using namespace std; 

// Consider a structure 
// to keep each pair of x and y together 
struct Data { 
	double x, y; 
}; 

// Function to calculate 
// the linear extrapolation 
double extrapolate(Data d[], double x) 
{ 
	double y; 
	y = d[0].y 
		+ (x - d[0].x) 
			/ (d[1].x - d[0].x) 
			* (d[1].y - d[0].y); 

	return y; 
} 

// Driver Code 
int main() 
{ 
	// Sample dataset 
	Data d[] = { { 1.2, 2.7 }, { 1.4, 3.1 } }; 

	// Sample x value 
	double x = 2.1; 

	// Finding the extrapolation 
	cout << "Value of y at x = 2.1 : "
		<< extrapolate(d, x); 

	return 0; 
} 

