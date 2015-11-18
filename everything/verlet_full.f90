program verlet_full

  real(8) :: x, v
  real(8) :: pos_array(100)
  
  x = 1.0_8
  v = -0.5*sqrt(2.0_8)
  call verlet(x, v, pos_array)
  print *, pos_array
 
contains


real(8) function force (x)
  implicit none
  real(8) :: x
  
  force = - x + x**3
end function force


subroutine verlet(x, v, pos_array)
  implicit none
  real(8) :: x, v, temp_f, h
  real(8) :: pos_array(:)
  integer :: t, step_num

    h = 0.001 ! h is the time step
    step_num = 100
    temp_f = force(x)
    do t = 1, step_num
      v = v + 0.5*h*temp_f
      x = x + h*v
      temp_f = force(x)
      v = v + 0.5*h*temp_f
      pos_array(t) = x
      print *, temp_f, x, v
    end do
end subroutine verlet
end program verlet_full
