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

    end type gmsh_msh2_data_type

end module gmsh_msh2_reader
