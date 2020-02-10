// CPP Program to interpolate using Bessel's interpolation 
#include <bits/stdc++.h> 
using namespace std; 

// caculating u mentioned in the formula 
float ucal(float u, int n) 
{ 
	if (n == 0) 
		return 1; 

	float temp = u; 
	for (int i = 1; i <= n / 2; i++) 
		temp = temp * (u - i); 

	for (int i = 1; i < n / 2; i++) 
		temp = temp * (u + i); 

	return temp; 
} 

// calculating factorial of given number n 
int fact(int n) 
{ 
	int f = 1; 
	for (int i = 2; i <= n; i++) 
		f *= i; 

	return f; 
} 

int main() 
{ 
	// Number of values given 
	int n = 6; 
	float x[] = { 25, 26, 27, 28, 29, 30 }; 

	// y[][] is used for difference table 
	// with y[][0] used for input 
	float y[n][n]; 
	y[0][0] = 4.000; 
	y[1][0] = 3.846; 
	y[2][0] = 3.704; 
	y[3][0] = 3.571; 
	y[4][0] = 3.448; 
	y[5][0] = 3.333; 

	// Calculating the central difference table 
	for (int i = 1; i < n; i++) 
		for (int j = 0; j < n - i; j++) 
			y[j][i] = y[j + 1][i - 1] - y[j][i - 1]; 

	// Displaying the central difference table 
	for (int i = 0; i < n; i++) { 
		for (int j = 0; j < n - i; j++) 
			cout << setw(4) << y[i][j] << "\t"; 
		cout << endl; 
	} 

	// value to interpolate at 
	float value = 27.4; 

	// Initializing u and sum 
	float sum = (y[2][0] + y[3][0]) / 2; 

	// k is origin thats is f(0) 
	int k; 
	if (n % 2) // origin for odd 
		k = n / 2; 
	else
		k = n / 2 - 1; // origin for even 

	float u = (value - x[k]) / (x[1] - x[0]); 

	// Solving using bessel's formula 
	for (int i = 1; i < n; i++) { 
		if (i % 2) 
			sum = sum + ((u - 0.5) * 
				ucal(u, i - 1) * y[k][i]) / fact(i); 
		else
			sum = sum + (ucal(u, i) * 
				(y[k][i] + y[--k][i]) / (fact(i) * 2)); 
	} 

	cout << "Value at " << value << " is " << sum << endl; 

	return 0; 
} 

