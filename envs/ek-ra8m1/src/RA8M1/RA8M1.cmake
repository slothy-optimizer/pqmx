SET(RA8M1_CMAKE_ASM_FLAGS "-mcpu=cortex-m85")
SET(RA8M1_CMAKE_C_FLAGS "-mcpu=cortex-m85")
SET(RA8M1_CMAKE_CXX_FLAGS "-mcpu=cortex-m85")
SET(RA8M1_CMAKE_EXE_LINKER_FLAGS "-mcpu=cortex-m85")

if(CMAKE_C_COMPILER_ID STREQUAL "GNU")
    list(APPEND RA8M1_CMAKE_EXE_LINKER_FLAGS "-T;fsp.ld;--specs=nano.specs")
elseif(CMAKE_C_COMPILER_ID STREQUAL "Clang")
    list(APPEND RA8M1_CMAKE_EXE_LINKER_FLAGS "-T;fsp.lld")
endif()

SET(RA8M1_CMAKE_DEFINITIONS "RA8M1;_RA_CORE=CM85;_RA_ORDINAL=1;_RENESAS_RA_")

# source directories
file(GLOB_RECURSE HAL_Files
    ${CMAKE_CURRENT_LIST_DIR}/ra/*.c
    ${CMAKE_CURRENT_LIST_DIR}/ra/*.cpp
    ${CMAKE_CURRENT_LIST_DIR}/ra_gen/*.c
    ${CMAKE_CURRENT_LIST_DIR}/ra_gen/*.cpp
    ${CMAKE_CURRENT_LIST_DIR}/lib/*.c
)

target_sources(hal_lib PRIVATE ${HAL_Files})
target_compile_definitions(hal_lib PUBLIC SEGGER_RTT_MODE_DEFAULT=SEGGER_RTT_MODE_BLOCK_IF_FIFO_FULL)

target_compile_options(hal_lib
    PUBLIC
    $<$<CONFIG:Debug>:${RA8M1_DEBUG_FLAGS}>
    $<$<CONFIG:Release>:${RA8M1_RELEASE_FLAGS}>
    $<$<CONFIG:MinSizeRel>:${RA8M1_MIN_SIZE_RELEASE_FLAGS}>
    $<$<CONFIG:RelWithDebInfo>:${RA8M1_RELEASE_WITH_DEBUG_INFO}>)

target_compile_options(hal_lib PUBLIC $<$<COMPILE_LANGUAGE:ASM>:${RA8M1_CMAKE_ASM_FLAGS}>)
target_compile_options(hal_lib PUBLIC $<$<COMPILE_LANGUAGE:C>:${RA8M1_CMAKE_C_FLAGS}>)
target_compile_options(hal_lib PUBLIC $<$<COMPILE_LANGUAGE:CXX>:${RA8M1_CMAKE_CXX_FLAGS}>)

target_link_options(hal_lib PUBLIC ${RA8M1_CMAKE_EXE_LINKER_FLAGS})

target_compile_definitions(hal_lib PUBLIC ${RA8M1_CMAKE_DEFINITIONS})

target_include_directories(hal_lib
    PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/ra/arm/CMSIS_5/CMSIS/Core/Include
    ${CMAKE_CURRENT_LIST_DIR}/ra/fsp/inc
    ${CMAKE_CURRENT_LIST_DIR}/ra/fsp/inc/api
    ${CMAKE_CURRENT_LIST_DIR}/ra/fsp/inc/instances
    ${CMAKE_CURRENT_LIST_DIR}/ra_cfg/fsp_cfg
    ${CMAKE_CURRENT_LIST_DIR}/ra_cfg/fsp_cfg/bsp
    ${CMAKE_CURRENT_LIST_DIR}/ra_gen
    ${CMAKE_CURRENT_LIST_DIR}/lib/SEGGER_RTT
)

target_link_directories(hal_lib
    PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/script
)
