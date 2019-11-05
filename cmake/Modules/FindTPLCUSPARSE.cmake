
FIND_PACKAGE(CUDA)

IF (NOT CUDA_FOUND)
  INCLUDE(FindPackageHandleStandardArgs)
  FIND_PACKAGE_HANDLE_STANDARD_ARGS(CUDA DEFAULT_MSG CUDA_FOUND)
ENDIF()

KOKKOSKERNELS_CREATE_IMPORTED_TPL(KokkosKernels::CUSPARSE LIBRARY ${CUDA_cusparse_LIBRARY})
KOKKOSKERNELS_EXPORT_IMPORTED_TPL(KokkosKernels::CUSPARSE)

