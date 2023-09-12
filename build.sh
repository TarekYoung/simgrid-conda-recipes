#!/bin/bash

CMAKE_PLATFORM_FLAGS+=(-DCMAKE_OSX_SYSROOT="${CONDA_BUILD_SYSROOT}")

mkdir build && cd build || exit
cmake -DCMAKE_INSTALL_PREFIX="$PREFIX" \
  -DSIMGRID_PYTHON_LIBDIR="${SP_DIR}" \
  "${CMAKE_PLATFORM_FLAGS[@]}" \
  -GNinja ..
ninja
ninja install
