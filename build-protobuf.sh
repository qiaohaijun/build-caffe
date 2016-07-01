source ./config.sh
INFO "build protobuf "
DEBUG "[${PROTOBUF_WGET_LINK}]"
DEBUG "[${PROTOBUF_FILE}]"
DEBUG "[${PROTOBUF_TAR}]"
DEBUG "[${TARGET_DIR}]"


if [ -f ${SRC_DIR}/${PROTOBUF_TAR} ]; then
	WARN "${SRC_DIR}/${PROTOBUF_TAR} exist "
	WARN "continue downloading the ${PROTOBUF_TAR}"
	wget -c ${PROTOBUF_WGET_LINK} -P ${SRC_DIR}
	
else
	INFO "downloading protobuf"
	wget -c ${PROTOBUF_WGET_LINK} -P ${SRC_DIR}
	INFO "protobuf is done"
fi



# uncompress
INFO "untar the ${PROTOBUF_TAR}"
if [ -d ${SRC_DIR}/${PROTOBUF_FILE} ] ;then
	WARN "${SRC_DIR}/${PROTOBUF_FILE}  exist, will be deleted"
fi
cd ${SRC_DIR}; tar xvjf ${PROTOBUF_TAR};

# config and make

cd ${SRC_DIR}/${PROTOBUF_FILE} ; \
	 ./configure --prefix=${TARGET_DIR}; \
	 make -j ; \
	 make install

INFO "clean phrase"
rm -rf ${SRC_DIR}/${PROTOBUF_FILE} 
