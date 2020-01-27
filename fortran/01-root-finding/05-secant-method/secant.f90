program newton
        !!! the goal of this program is to find the root of the equation cos(x)=x^3 with secant method
        !!! from the equation we can write: f(x) = cos(x) - x*x*x 
        !!! with the initial guess x0 = 0.5, x1 = 0.9
        implicit none
        real (8) :: f, x0, x1, x2
        integer :: i 
        x0=10.0
        x1=30.0
        x0=0.50
        x1=1.0
        print*,"initial guess is: ",x0,x1
        do i=1,10
                x2 = x1 - ( f(x1) ) * ( x1-x0 ) /( f(x1) -f(x0) )
                print*, x1,x2
                x0=x1
                x1=x2
        end do

end program newton

function f(x)
        implicit none
        real (8) :: f
        real (8) :: x
        f = cos(x) - x*x*x   !!! x0=0.50 ; x1= 1.0
        ! f = x**2.0 - 612.0 !!! x0=10.0 ; x1= 30.0
end function f
