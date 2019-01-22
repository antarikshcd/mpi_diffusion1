subroutine update_field(p_old, p_new, T_old, T_new)
    USE mod_diff, ONLY:MK! contains allocation subroutine
    implicit none
    real(MK), dimension(:, :), pointer:: p_new
    real(MK), dimension(:, :), pointer:: p_old
    real(MK), dimension(:, :), pointer :: swap
    real(MK), dimension(:, :), target:: T_new
    real(MK), dimension(:, :), target:: T_old

    ! p_old should point to the T_new and p_new should point to 
    nullify(p_new)
    nullify(p_old)
    p_old => T_new
    p_new => T_old
    

end subroutine update_field