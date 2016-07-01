source ./config.sh
INFO "build protobuf "
DEBUG "[${FOLLY_WGET_LINK}]"
DEBUG "[${FOLLY_FILE}]"
DEBUG "[${FOLLY_TAR}]"
DEBUG "[${TARGET_DIR}]"


if [ -f ${SRC_DIR}/${FOLLY_TAR} ]; then
	WARN "${SRC_DIR}/${FOLLY_TAR} exist "
else
	INFO "downloading folly"
	wget ${FOLLY_WGET_LINK} -P ${SRC_DIR}
	INFO "folly is done"
fi


# uncompress
INFO "untar the ${FOLLY_TAR}"
if [ -d ${SRC_DIR}/${FOLLY_FILE} ] ;then
	WARN "${SRC_DIR}/${FOLLY_FILE}  exist, will be deleted"
fi
cd ${SRC_DIR}; tar xvzf ${FOLLY_TAR};

# config and make

cd ${SRC_DIR}/${FOLLY_FILE} ; cd folly; \
	autoreconf268  -isv ;\
	LDFLAGS="-L/search/odin/caffe-deps/lib/ " \
	CPPFLAGS="-I/search/odin/caffe-deps/include/  " \
	./configure --prefix=${TARGET_DIR} --enable-static --enable-shared --with-boost-libdir=/search/odin/caffe-deps/lib/ ; \
	 make -j ; \
	 make install

INFO "clean phrase"
rm -rf ${SRC_DIR}/${FOLLY_FILE} 
