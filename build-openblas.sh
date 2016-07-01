source ./config.sh

#CURRENT_FILE=$(cd `dirname $0`;pwd)

DEBUG "[${SRC_DIR}]"
DEBUG "[${TARGET_DIR}]"
DEBUG "[${OPENBLAS_WGET_LINK}]"
DEBUG "[${OPENBLAD_TAR}]"

if [ -f ${SRC_DIR}/${OPENBLAS_TAR} ]; then
    WARN "${SRC_DIR}/${OPENBLAS_TAR} exist "
else
    INFO "downloading gflags"
    wget ${OPENBLAS_WGET_LINK} -O ${SRC_DIR}/${OPENBLAS_TAR}  
    INFO "gflags is done"
fi


# uncompress

## uncompress
if [ -d ${SRC_DIR}/${OPENBLAS_FILE} ] ;then
    WARN "${SRC_DIR}/${OPENBLAS_FILE} exist, will delete it "
    rm -rf ${SRC_DIR}/${OPENBLAS_FILE}
fi

INFO "untar ${OPENBLAS_TAR}"
cd ${SRC_DIR}; tar xvzf ${OPENBLAS_TAR} ;


### configure

cd ${SRC_DIR}/${OPENBLAS_FILE}; make -j 32; make install PREFIX=${TARGET_DIR}
