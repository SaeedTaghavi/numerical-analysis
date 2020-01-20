#include<iostream>
#include<math.h>

using namespace std;

double f(double x) {
	return  x*x*x - 6.0*x*x + 11.0*x - 6.0;
}

double g(double x) {
	return (-(x*x*x) + (6.0*x*x) +6.0)/11.0;
}

const double pi = 3.1415926;
const int max_iteration=1000;
const double tol=1e-5;
int main() {
    double x=3.5;
    for (int i=0;i<=max_iteration;i++){
    	x= g(x);
    	if (f(x)<tol) {
    		cout<<"iteration " <<i<<endl;
    		cout<<"the root is "<<x<<endl;
    		cout<< "the value of f(x) is:"<<f(x)<<endl;
    		return 0;
    	}
    	//cout <<x<<endl;
    }
    	cout<<"iteration " <<max_iteration<<endl;
    	cout<<"the root is "<<x<<endl;
    	cout<< "the value of f(x) is:"<<f(x)<<endl;
    	return 0;
}


