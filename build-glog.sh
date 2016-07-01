source ./config.sh

DEBUG "[${SRC_DIR}]"
DEBUG "[${TARGET_DIR}]"
DEBUG "[${GLOG_WGET_LINK}]"
DEBUG "[${GLOG_TAR}]"

if [ -f ${SRC_DIR}/${GLOG_TAR} ]; then
    WARN "${SRC_DIR}/${GLOG_TAR} exist "
    WARN "continue downloading ${GLOG_TAR}"
    wget -c  ${GLOG_WGET_LINK} -O ${SRC_DIR}/${GLOG_TAR}  
else
    INFO "downloading glog"
    wget ${GLOG_WGET_LINK} -O ${SRC_DIR}/${GLOG_TAR}  
    INFO "glog is done"
fi

## uncompress
if [ -d ${SRC_DIR}/${GLOG_FILE} ] ;then
    WARN "${SRC_DIR}/${GLOG_FILE} exist, will delete it "
    rm -rf ${SRC_DIR}/${GLOG_FILE}
fi

INFO "untar ${GLOG_TAR}"
cd ${SRC_DIR}; tar xzvf ${GLOG_TAR};

## configure
cd ${SRC_DIR}/${GLOG_FILE} ; LDFLAGS="-L${TARGET_DIR}/lib" CPPFLAGS="-I${TARGET_DIR}/include/" ./configure --prefix=${TARGET_DIR}; make -j; make install

