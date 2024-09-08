set(OPENOCD_DIR "${CMAKE_SOURCE_DIR}/openocd")
set(VSCODE_DIR "${CMAKE_SOURCE_DIR}/.vscode")

foreach(opt IN LISTS CMX_DEBUGGER_OPT)
    string(APPEND OPENOCD_OPT \"${opt}\",)
endforeach()

function(vscode_debug)
    set(PROJ_ELF_PATH "${CMAKE_BINARY_DIR}/${CMAKE_PROJECT_NAME}.elf")
    file(MAKE_DIRECTORY "${VSCODE_DIR}")
    configure_file(
        "${OPENOCD_DIR}/vscode-debug.in"
        "${VSCODE_DIR}/launch.json"
        @ONLY
    )
endfunction()