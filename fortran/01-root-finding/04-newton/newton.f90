program newton
        !!! the goal of this program is to find the root of the equation cos(x)=x^3 with newton method
        !!! from the equation we can write: f(x) = cos(x) - x*x*x and f'(x) = -sin(x) - 3*x*x
        !!! with the initial guess x0 = 0.5
        implicit none
        real (8) :: f, x0, x1
        real (8) :: dfdx
        integer :: i 
        x0=0.5
        print*,"initial guess is: ",x0
        do i=1,10
                x1 = x0 - ( f(x0) ) / ( dfdx(x0) )
                print*, x1
                x0=x1
        end do

end program newton

function f(x)
        implicit none
        real (8) :: f
        real (8) :: x
        f = cos(x) - x*x*x
end function f

function dfdx(x)
        implicit none
        real (8) :: dfdx
        real (8) :: x
        dfdx= -sin(x) - 3.0*x*x 
end function dfdx
