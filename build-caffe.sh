source ./config.sh

INFO "build caffe"
INFO "git clone caffe "
DEBUG "[${SRC_DIR}]"
DEBUG "[${TARGET_DIR}]"

cd $GITHUB_DIR; git clone https://github.com/BVLC/caffe.git

