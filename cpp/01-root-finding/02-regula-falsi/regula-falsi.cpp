#include <stdio.h>
#include <math.h>

double f(double x)
{
   return cos(x) - x*x*x;
}
/* s,t: endpoints of an interval where we search
   e: half of upper bound for relative error
   m: maximal number of iterations */
double FalsiMethod(double s, double t, double e, int m)
{
   double r,fr;
   int n, side=0;
   /* starting values at endpoints of interval */
   double fs = f(s);
   double ft = f(t);

   for (n = 0; n < m; n++)
   {

       r = (fs*t - ft*s) / (fs - ft);
       if (fabs(t-s) < e*fabs(t+s)) break;
       fr = f(r);

       if (fr * ft > 0)
       {
         /* fr and ft have same sign, copy r to t */
         t = r; ft = fr;
         if (side==-1) fs /= 2;
         side = -1;
       }
       else if (fs * fr > 0)
       {
         /* fr and fs have same sign, copy r to s */
         s = r;  fs = fr;
         if (side==+1) ft /= 2;
         side = +1;
       }
       else
       {
         /* fr * f_ very small (looks like zero) */
         break;
       } 
    }
    return r;
}

int main(void)
{
    printf("%0.15f\n", FalsiMethod(0, 1, 5E-15, 100));
    return 0;
}
