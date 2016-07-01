source ./config.sh

#CURRENT_FILE=$(cd `dirname $0`;pwd)

DEBUG "[${SRC_DIR}]"
DEBUG "[${TARGET_DIR}]"
DEBUG "[${GFLAGS_WGET_LINK}]"
DEBUG "[${GFLAGS_TAR}]"

if [ -f ${SRC_DIR}/${GFLAGS_TAR} ]; then
    WARN "${SRC_DIR}/${GFLAGS_TAR} exist "
    WARN "continue downloading ${GFLAGS_TAR}"
    wget -c ${GFLAGS_WGET_LINK} -O ${SRC_DIR}/${GFLAGS_TAR}
else
    INFO "downloading gflags"
    wget ${GFLAGS_WGET_LINK} -O ${SRC_DIR}/${GFLAGS_TAR}  
    INFO "gflags is done"
fi


## uncompress
if [ -d ${SRC_DIR}/${GFLAGS_FILE} ] ;then
	WARN "${SRC_DIR}/${GFLAGS_FILE} exist, will delete it "
	rm -rf ${SRC_DIR}/${GFLAGS_FILE}
fi

INFO "untar ${GFLAGS_TAR}"
cd ${SRC_DIR}; tar xvzf ${GFLAGS_TAR} ;

### 
cd ${SRC_DIR}/${GFLAGS_FILE}; \
mkdir build; cd build; \
export CXXFLAGS="-fPIC" && cmake -DBUILD_SHARED_LIBS=on -DCMAKE_INSTALL_PREFIX=${TARGET_DIR} .. && make VERBOSE=1 ;\
make -j ; make install	


