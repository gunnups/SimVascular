#
# python
#

REPLACEME_SV_SPECIAL_COMPILER_SCRIPT

export CC=REPLACEME_CC
export CXX=REPLACEME_CXX

rm -Rf REPLACEME_SV_TOP_BIN_DIR_PYTHON
mkdir -p REPLACEME_SV_TOP_BIN_DIR_PYTHON
chmod u+w,a+rx REPLACEME_SV_TOP_BIN_DIR_PYTHON

rm -Rf REPLACEME_SV_TOP_BLD_DIR_PYTHON
mkdir -p REPLACEME_SV_TOP_BLD_DIR_PYTHON
cd REPLACEME_SV_TOP_BLD_DIR_PYTHON

REPLACEME_SV_CMAKE_CMD -G REPLACEME_SV_CMAKE_GENERATOR \
   -DBUILD_TESTING=OFF \
   -DCMAKE_MACOSX_RPATH=1 \
   -DBUILD_LIBPYTHON_SHARED=ON \
   -DENABLE_SSL=ON \
   -DBUILTIN_SSL=ON \
   -DBUILTIN_HASHLIB=ON \
   -DENABLE_CTYPES=ON \
   -DBUILTIN_CTYPES=ON \
   -DCMAKE_INSTALL_PREFIX=REPLACEME_SV_TOP_BIN_DIR_PYTHON \
   -DCMAKE_BUILD_TYPE=REPLACEME_SV_CMAKE_BUILD_TYPE \
REPLACEME_SV_TOP_SRC_DIR_PYTHON

REPLACEME_SV_MAKE_CMD

REPLACEME_SV_MAKE_CMD install

chmod u+w,a+rx REPLACEME_SV_TOP_BIN_DIR_PYTHON/lib/REPLACEME_SV_PYTHON_LIB_NAME
install_name_tool -id REPLACEME_SV_PYTHON_LIB_NAME REPLACEME_SV_TOP_BIN_DIR_PYTHON/lib/REPLACEME_SV_PYTHON_LIB_NAME
