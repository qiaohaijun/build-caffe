source ./config.sh

DEBUG "[${SRC_DIR}]"
DEBUG "[${TARGET_DIR}]"
DEBUG "[${DOUBLE_CONVERSION_WGET_LINK}]"
DEBUG "[${OPENBLAD_TAR}]"

if [ -f ${SRC_DIR}/${DOUBLE_CONVERSION_TAR} ]; then
    WARN "${SRC_DIR}/${DOUBLE_CONVERSION_TAR} exist "
else
    INFO "downloading gflags"
    wget ${DOUBLE_CONVERSION_WGET_LINK} -O ${SRC_DIR}/${DOUBLE_CONVERSION_TAR}  
    INFO "gflags is done"
fi
## uncompress
if [ -d ${SRC_DIR}/${DOUBLE_CONVERSION_FILE} ] ;then
    WARN "${SRC_DIR}/${DOUBLE_CONVERSION_FILE} exist, will delete it "
    rm -rf ${SRC_DIR}/${DOUBLE_CONVERSION_FILE}
fi

INFO "untar ${DOUBLE_CONVERSION_TAR}"
cd ${SRC_DIR}; tar xvzf ${DOUBLE_CONVERSION_TAR} ; 

INFO "build "
cd ${SRC_DIR}/${DOUBLE_CONVERSION_FILE}; \
	cmake -DBUILD_SHARED_LIBS=ON  -DCMAKE_INSTALL_PREFIX=/search/odin/caffe-deps/ . ; \
	make; \
	make install


