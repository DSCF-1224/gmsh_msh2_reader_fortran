!> Version: experimental
!> Fortran module for reading |GmshReferenceManualMshFileFormat2|
module gmsh_msh2_reader

    use, non_intrinsic :: gmsh_msh_format_fortran



    implicit none



    private

    public :: gmsh_msh2_data_type



    !> Version: experimental
    !> Derived type for reading |GmshReferenceManualMshFileFormat2|
    type :: gmsh_msh2_data_type

        private

        !> Derived type for reading `$MeshFormat` ~ `$EndMeshFormat`  
        !> [Documentation for this derived type](https://dscf-1224.github.io/gmsh_msh_format_fortran/type/gmsh_msh_format_type.html)
        type(gmsh_msh_format_type) :: msh_format



        contains



        procedure, nopass, private :: gmsh_msh2_read_file



        generic, public :: read_file => gmsh_msh2_read_file

    end type gmsh_msh2_data_type



    contains



    subroutine gmsh_msh2_read_file(file, iostat, iomsg)
        !! Read |GmshReferenceManualMshFileFormat2| file

        character(*), intent(in) :: file

        integer, intent(out) :: iostat

        character(*), intent(inout) :: iomsg



        integer :: file_unit



        open( &!
            newunit = file_unit , &!
            file    = file      , &!
            action  = 'read'    , &!
            status  = 'old'     , &!
            iostat  = iostat    , &!
            iomsg   = iomsg(:)    &!
        )

        if (iostat .ne. 0) return

        close( &!
            unit = file_unit   , &!
            iostat  = iostat   , &!
            iomsg   = iomsg(:)   &!
        )

    end subroutine gmsh_msh2_read_file

end module gmsh_msh2_reader
