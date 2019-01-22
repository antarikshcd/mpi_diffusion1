!module containing the global data for exercise 2b diffusion problem
module mod_diff
    implicit none

    INTEGER :: Nx, Ny, D
    INTEGER, PARAMETER :: MK = kind(1.0E0)
    REAL :: sim_time ! total simulation time in [s]
    REAL(MK), DIMENSION(:, :), allocatable, target :: T_new, L
    REAL(MK), DIMENSION (:,:), allocatable, target :: T_old
    real(mk), dimension(:,:), pointer :: p_new, p_old
    real(mk) :: laplacian, sq_dx, sq_dy ! laplacian vector
    REAL :: dx,dy,Lx,Ly,dt,dt_limit
    INTEGER ::i,j,k,nstep, info, nstep_start
    logical :: file_exists
    character(len=256) :: inp_file, hotstart_file
    character(8) :: date ! variable for storing date
    character(10) :: time ! variable for storing time
    integer :: timer_start, timer_stop ! system clock counters
    integer :: timer_rate ! system clock count_rate: depends on the system
    real :: e_time ! elapsed time measuring time for the double do loops
    real :: cpu_t1, cpu_t2, cputime_timestep ! cpu times
    

end module mod_diff

