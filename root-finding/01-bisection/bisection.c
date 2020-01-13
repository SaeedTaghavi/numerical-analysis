#include<stdio.h>
#include<math.h>

/* SIGN function definition as a macro */
#define sign(x) (x > 0) ? 1 : ((x < 0) ? -1 : 0)

/* functions prototype */
float f (float x);
int f_disp (int i, float a, float b, float c);

int main(void){
 float a = -2; /* left point */
 float b = 5; /* right point */
 float TOL = 1E-2; /* tolerance */
 float NMAX = 1000; /* maximum number of iterations */
 float c = 0; /* estimated root */
 int i = 0; /* index */
 
 c = (a + b)/2; /* calculate the midpoint */
 
 /* Display the table header and initial data */
 printf("i\ta\t\tb\t\tc\t\tf(a)\t\tf(b)\t\tf(c)\n");
 f_disp(i, a, b, c);
 
 /* Evaluate loop until the result is less than the tolerance
 * maximum number of iterations is not yet reached*/
 
 if (f(c) == 0){
  /* If the first midpoint gives f(c) = 0, c is the root */
  printf("Root is: %f \n", c);}
  else{
   while ((fabs(f(c)) > TOL) && (i<=NMAX)){
    if (sign(f(c)) == sign(f(a))){
     /* f(c) has same sign as f(a) */
     a = c;}
    else{
     /* f(c) has same sign as f(b) */
     b = c;} 
    c = (a+b)/2; /* midpoint update */
    f_disp(i+1, a, b, c); /* display current data */
    i++; /* index increment */}}
 
 /* Display results */
 printf("\nRoot is c=%.7f found after %d iterations\n", c, i);
 printf("The value of the function f(c) is: %.10f\n", f(c));
 return 0;}

/* function definition */
float f (float x){
 float y;
 y = 10 - x*x;
 return y;}

/* display function definition */
int f_disp (int i, float a, float b, float c){
 printf("%d\t%.7f\t%.7f\t%.7f\t", i, a, b, c);
 printf("%.7f\t%.7f\t%.7f\n", f(a), f(b), f(c));
 return 0;}
