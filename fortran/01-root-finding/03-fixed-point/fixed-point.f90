program fixedpoint

   !!! the goal of this code is to find the root of the
   !!! f(x) = x**3 − 6*x**2 + 11*x − 6 = 0
   !!! with the fixed point iteration.
   !!! x =1/11 (−x**3 + 6*x**2 + 6) = g(x)
   implicit none
   real(8), parameter:: tol = 1e-10            ! tolerance
   integer, parameter:: max_step = 1000      ! maximum number of iterations
   real(8) :: a                            ! left point
   real(8) :: b                            ! right point
   real(8) :: f                            ! we want the root of this function
   real(8) :: g                            ! the auxilary function g(x)-x=f(x)=0
   real(8) :: x                            ! the root
   integer :: i                            ! index
   a = 2.5
   b = 4.0
   x = 3.5
   i = 0
   ! Display the table header and initial data
   write (*, '(A5,4A20)') 'i', 'x(i)', 'g(x(i))', 'x(i+1)', 'f(x(i+1))'
   write (*, '(i5,4F20.5)') i, x, g(x), g(x), f(g(x))

   ! Evaluate loop until the result is less than the tolerance
   ! maximum number of iterations is not yet reached

   do i = 1, max_step
      x = g(x)
      if (x > b .or. x < a) then
         write (*, *) "the sequence is not converging!!! something is wrong!"
      end if
      write (*, '(i5,4F20.5)') i, x, g(x), g(x), f(g(x))
      if (f(x) < tol) then
         print *, "iteration", i
         print *, "the root is", x
         print *, "the value of f(x) is", f(x)
         stop
      end if
   end do

   print *, "the root is", x
   print *, "the value of f(x) is", f(x)

end program fixedpoint

! function definition
function g(x)
   implicit none
   real(8)::x
   real(8)::g
   g = (-x*x*x + 6.0*x*x + 6.0)/11.0
end function g

function f(x)
   implicit none
   real(8) ::x
   real(8) ::f
   f = x*x*x - 6.0*x*x + 11.0*x - 6.0
end function f
