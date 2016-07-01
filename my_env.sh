# LD_LIBRARY_PATH
unset LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/search/odin/caffe-deps/lib/:$LD_LIBRARY_PATH
# cudnn
export LD_LIBRARY_PATH=/search/odin/cudnn_v4007/cuda/lib64/:$LD_LIBRARY_PATH

# PATH
export PATH=/search/odin/caffe-deps/bin/:$PATH
unset CXX
unset CC
export CXX="g++ -std=c++11"
export CC="gcc -std=c99"
