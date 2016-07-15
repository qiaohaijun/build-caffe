source ./config.sh

#CURRENT_FILE=$(cd `dirname $0`;pwd)

DEBUG "[${SRC_DIR}]"
DEBUG "[${TARGET_DIR}]"
DEBUG "[${PYTHON_WGET_LINK}]"
DEBUG "[${PYTHON_TAR}]"

if [ -f ${SRC_DIR}/${PYTHON_TAR} ]; then
    WARN "${SRC_DIR}/${PYTHON_TAR} exist "
else
    INFO "downloading python 2.7.11"
    wget ${PYTHON_WGET_LINK} -O ${SRC_DIR}/${PYTHON_TAR}  
    INFO "python2.7.11 is done"
fi

## uncompress
if [ -d ${SRC_DIR}/${PYTHON_FILE} ] ;then
    WARN "${SRC_DIR}/${PYTHON_FILE} exist, will delete it "
    rm -rf ${SRC_DIR}/${PYTHON_FILE}
fi

cd ${SRC_DIR}/; tar xvfz Python-2.7.11.tgz 

##
cd ${SRC_DIR}/${PYTHON_FILE}; ./configure --prefix=${TARGET_DIR}  --enable-shared CFLAGS=-fPIC ; make -j ; make install
