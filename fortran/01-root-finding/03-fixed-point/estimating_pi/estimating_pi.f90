program test
   implicit none
   integer, parameter :: max_step = 1000
   real(8), parameter :: error = 1e-9
   real(8), parameter :: pi = 4.0*atan(1.0)
   real(8):: x, g, f
   integer :: i

   x = 3.0
   do i = 1, max_step
      x = g(x)
!         print *, x, g(x), f(x)
      if (f(x) < error) then
         print *, "iteration", i
         print *, "the root is", x
         print *, "the value of f(x) is", f(x)
         print *, "the real pi is", pi
         stop
      end if

   end do
   print *, "the root is", x
   print *, "the real pi is", pi
end program test

function g(x)
   implicit none
   real(8) :: x
   real(8) :: g
!g = (x*x*x) - (6.0*(x*x))+(12.0*x)-6.0
!g = (-(x*x*x) + (6.0*x*x) +6.0)/11.0
   g = x + sin(x)
end function g

function f(x)
   implicit none
   real(8) ::x
   real(8)::f
!f=x*x*x - 6.0*x*x + 11.0*x -6.0
   f = sin(x)
end function f
