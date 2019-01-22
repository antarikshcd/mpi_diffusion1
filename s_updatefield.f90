subroutine update_field(T_old, T_new)
    USE mod_diff, ONLY:MK! contains allocation subroutine
    implicit none
    real(MK), dimension(:, :), pointer :: swap
    real(MK), dimension(:, :) :: T_new
    real(MK), dimension(:, :) :: T_old

    ! p_old should point to the T_new and p_new should point to 
    allocate(swap(size(T_old,1), size(T_old,2)))

    swap = T_new

    T_old = swap

    deallocate(swap)
    
    !deallocate(swap)

end subroutine update_field