source ./cecho.sh
source ./util.sh


INFO "source /opt/rh/devtoolset-3/enable"
#source /opt/rh/devtoolset-3/enable

#unset CXX
#export CXX="g++ -std=c++11"

#ROOT_DIR="$(cd `dirname $0`;pwd)"
ROOT_DIR="/tmp/caffe-deps/"
SRC_DIR="${ROOT_DIR}/src/"
TARGET_DIR="/opt/local/caffe-deps/"
GITHUB_DIR="${ROOT_DIR}/github/"

mkdir ${ROOT_DIR}
mkdir ${SRC_DIR}
mkdir ${TARGET_DIR}
mkdir ${GITHUB_DIR}


DEBUG "ROOT_DIR [${ROOT_DIR}]" 
DEBUG "SRC_DIR  [${SRC_DIR}]" 

# protobuf 2.5.0

# squid proxy
PROXY_HOST="qiaohaijun.sogou-inc.com"
PROXY_PORT=3128

# target dir


#  protobuf 2.5.0
PROTOBUF_WGET_LINK="https://github.com/google/protobuf/releases/download/v2.5.0/protobuf-2.5.0.tar.bz2"
PROTOBUF_FILE="protobuf-2.5.0"
PROTOBUF_TAR="protobuf-2.5.0.tar.bz2"

# gflags 2.1.2
GFLAGS_WGET_LINK="https://github.com/gflags/gflags/archive/v2.1.2.tar.gz"
GFLAGS_FILE="gflags-2.1.2"
GFLAGS_TAR="gflags-2.1.2.tar.gz"


#OpenBlas
OPENBLAS_WGET_LINK="https://codeload.github.com/xianyi/OpenBLAS/tar.gz/v0.2.17"
OPENBLAS_TAR="OpenBLAS-0.2.17.tar.gz"
OPENBLAS_FILE="OpenBLAS-0.2.17"


# glog

GLOG_WGET_LINK="https://github.com/google/glog/archive/v0.3.4.tar.gz"
GLOG_FILE="glog-0.3.4"
GLOG_TAR="glog-0.3.4.tar.gz"

#python 2.7.11
PYTHON_WGET_LINK="https://www.python.org/ftp/python/2.7.11/Python-2.7.11.tgz"
PYTHON_FILE="Python-2.7.11"
PYTHON_TAR="Python-2.7.11.tgz"


# boost
BOOST_WGET_LINK="http://freefr.dl.sourceforge.net/project/boost/boost/1.60.0/boost_1_60_0.tar.bz2"
BOOST_TAR="boost_1_60_0.tar.bz2"
BOOST_FILE="boost_1_60_0"

# caffe

# double conversion
DOUBLE_CONVERSION_WGET_LINK="https://github.com/google/double-conversion/archive/v1.1.5.tar.gz"
DOUBLE_CONVERSION_TAR="double-conversion-1.1.5.tar.gz"
DOUBLE_CONVERSION_FILE="double-conversion-1.1.5"


# folly
FOLLY_WGET_LINK="https://github.com/facebook/folly/archive/deprecate-dynamic-initializer.tar.gz"
FOLLY_TAR="deprecate-dynamic-initializer.tar.gz"
FOLLY_FILE="folly-deprecate-dynamic-initializer"
