source ./config.sh
INFO "yum install the needed software"

# leveldb-devel
INFO "leveldb-devel"
yum install -y leveldb-devel 

# lmdb-devel
INFO "lmdb-devel"
yum install -y lmdb-devel

# opencv24-devel
INFO "opencv24-devel"
yum install -y opencv24-devel

# devtoolset-2-gcc
INFO "devtoolset-2-gcc"
yum install -y devtoolset-2-gcc

# devtoolset-2-gcc-c++
INFO "devtoolset-2-gcc-c++"
yum install -y devtoolset-2-gcc-c++

INFO "devtoolset-2-binutils-devel"
yum install -y devtoolset-2-binutils-devel

INFO "devtoolset-2-binutils-devel"
yum install -y devtoolset-2-gcc-gfortran

# devtoolset-3-gcc
INFO "devtoolset-3-gcc"
yum install -y devtoolset-3-gcc

# devtoolset-3-gcc-c++
INFO "devtoolset-3-gcc-c++"
yum install -y devtoolset-3-gcc-c++

INFO "devtoolset-3-binutils-devel"
yum install -y devtoolset-3-binutils-devel

INFO "devtoolset-3-binutils-devel"
yum install -y devtoolset-3-gcc-gfortran


INFO "automake16"
yum install -y automake16

INFO "autoconf268"
yum install -y autoconf268

INFO "cmake"
yum install -y cmake

INFO "hdf5-devel"
yum install -y hdf5-devel

INFO "snappy-devel"
yum install -y snappy-devel

INFO "libevent-devel"
yum install -y libevent-devel
###########################################
if [ ! -d ${SRC_DIR} ]; then
    WARN "${SRC_DIR} is not exist, will create it"
    mkdir -p ${SRC_DIR}
fi

