real(8) function force (x)
  implicit none
  real(8) :: x
  
  force = x - x**3
end function force


subroutine verlet(x, v, step_num, pos_array)
! Routine for integrating equation of motion
! input: 
!  x : initial position
!  v : initial velocity
!  step_num : number of time steps
! output:
!  pos_array :
!   array containing positions
!  
! Requires : a function force(x) which calculates the force

  implicit none
  real(8) :: x, v, temp_f, h, force
  real(8) :: pos_array(:)
  integer :: t, step_num
  external :: force

    h = 0.001 ! h is the time step
    temp_f = force(x)
    do t = 1, step_num
      v = v + 0.5*h*temp_f
      x = x + h*v
      temp_f = force(x)
      v = v + 0.5*h*temp_f
      pos_array(t) = x
    end do
end subroutine verlet
