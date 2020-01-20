program fixedpoint

        !!! the goal of this code is to find the root of the 
        !!! f(x) = x**3 − 6*x**2 + 11*x − 6 = 0
        !!! with the fixed point iteration.
    implicit none
    real(8),parameter:: tol=1e-3            ! tolerance
    integer, parameter:: max_step=100      ! maximum number of iterations
    real(8) :: a                            ! left point
    real(8) :: b                            ! right point
    real(8) :: c                            ! estimated root
    integer :: i                            ! index
    real(8) :: f                            ! we want the root of this function
    real(8) :: signf                            ! we want the root of this function

    a = -2.0
    b = 5.0
    c = 0.0
    c = (a + b)/2.0                         ! calculate the midpoint
    i=0
    
    ! Display the table header and initial data 
    write(*,'(A5,6A20)')'i', 'a', 'b', 'c', 'f(a)', 'f(b)', 'f(c)'
    write(*,'(i5,6F20.5)')i, a, b, c, f(a), f(b), f(c)
    ! write(*,'(i5,6F20.5)')i, a, b, c, f(a), f(b), f(c) ! for the scientific representation of the number uncomment this line and comment the previous line

    ! Evaluate loop until the result is less than the tolerance 
    ! maximum number of iterations is not yet reached

    if (f(c)==0) then   
    ! If the first midpoint gives f(c) = 0, c is the root
        write(*,*) "the root is:", c
    else 
        do while( (abs(f(c))>tol) .and. (i<=max_step) )
            if ( signf(f(c))==signf(f(a)) ) then 
                ! f(c) has same sign as f(a)
                a=c
            else 
                ! f(c) has same sign as f(b)
                b=c
            end if
            c = (a+b)/2.0       ! midpoint update 
            i=i+1               ! index increment
            ! display current data 
            write(*,'(i5,6F20.5)')i, a, b, c, f(a), f(b), f(c)
        end do
    end if

    ! Display results 
    write(*,*) "root is c=",c, "fount after ", i, "iterations."
    write(*,*) "the value of the function f(c) is:",f(c)
    
end program fixedpoint

! function definition 
function f(x)
    implicit none
    real(8)::x
    real(8)::f
    f = 10.0 - x*x;
end function f 

