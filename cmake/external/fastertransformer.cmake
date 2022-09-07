set(FASTERTRANSFORMER_DIR ${PROJECT_SOURCE_DIR}/external/FasterTransformer)

if (onnxruntime_BUILD_WEBASSEMBLY)
  execute_process(COMMAND  git apply --ignore-space-change --ignore-whitespace ${PROJECT_SOURCE_DIR}/patches/fastertransformer/DisableBFloat16Support2.patch WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}/${FASTERTRANSFORMER_DIR})
endif()

add_definitions(-DUSE_FASTERTRANSFORMER)
include_directories(${FASTERTRANSFORMER_DIR}/src/fastertransformer/models)

add_subdirectory(${FASTERTRANSFORMER_DIR} EXCLUDE_FROM_ALL)
set_target_properties(transformer-static PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR})

