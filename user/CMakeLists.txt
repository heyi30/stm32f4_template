target_sources(${CMAKE_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/app/AttitudeTask.cc
)
target_include_directories(stm32cubemx INTERFACE
    ${CMAKE_CURRENT_LIST_DIR}/app
)
