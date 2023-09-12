export CMAKE_INCLUDE_PATH="${PREFIX}/include"
export CMAKE_LIBRARY_PATH="${PREFIX}/lib"

mkdir build && cd build
cmake -DCMAKE_INSTALL_PREFIX="$PREFIX" \
  -Denable_smpi=OFF \
  -DSIMGRID_PYTHON_LIBDIR="${PREFIX}/lib/python${PY_VER}/site-packages" \
  -GNinja ..
ninja
ninja install
