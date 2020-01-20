program fixedpoint

        !!! the goal of this code is to find the root of the 
        !!! f(x) = x**3 − 6*x**2 + 11*x − 6 = 0
        !!! with the fixed point iteration.
        !!! x =1/11 (−x**3 + 6*x**2 + 6) = g(x)
        !!! Then 
        !!! (i) for all x ∈ [2.5, 4], g(x) ∈ [2.5, 4] (Note that g(2.5) = 2.5341 and g(4) = 3.4545).
        !!! (ii) g'(x) = 1/11 (−3*x**2 + 12*x) steadily decreases in [2.5, 4] and remains less than 1 for all x in (2.5, 4). (Note that 
        !!! g′(2.5) = 1.0227 and g′(4) = 0.)
        !!! Thus, both hypotheses of Theorem 1.6 are satisfied. So, according to this theorem, for any x0 in [2.5, 4], 
        !!! the sequence {xk} should converge to the fixed point.
        !!!
        !!!

    implicit none
    real(8),parameter:: tol=1e-3            ! tolerance
    integer, parameter:: max_step=10       ! maximum number of iterations
    real(8) :: a                            ! left point
    real(8) :: b                            ! right point
    real(8) :: f                            ! we want the root of this function
    real(8) :: g                            ! 
    real(8) :: x,temp                            ! the root
    integer :: i                            ! index
    a = 2.5
    b = 4.0
    x=3.5
    i = 0
    ! Display the table header and initial data 
    write(*,'(A5,4A20)')'i', 'x(i)' , 'g(x(i))', 'x(i+1)', 'f(x(i+1))'
    write(*,'(i5,4F20.5)')i, x, b, c, f(a), f(b), f(c)
    ! write(*,'(i5,6F20.5)')i, a, b, c, f(a), f(b), f(c) ! for the scientific representation of the number uncomment this line and comment the previous line

    ! Evaluate loop until the result is less than the tolerance 
    ! maximum number of iterations is not yet reached

    do i =1,max_step
        x=g(x)
        print*,x
    end do

    ! Display results 
!    write(*,*) "root is c=",c, "fount after ", i, "iterations."
!    write(*,*) "the value of the function f(c) is:",f(c)
    
end program fixedpoint

! function definition 
function g(x)
    implicit none
    real(8)::x
    real(8)::g
    g =(-x*x*x+6.0*x*x+6.0)/11.0
end function g

