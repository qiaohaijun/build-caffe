source ./config.sh

#CURRENT_FILE=$(cd `dirname $0`;pwd)

DEBUG "[${SRC_DIR}]"
DEBUG "[${TARGET_DIR}]"
DEBUG "[${BOOST_WGET_LINK}]"
DEBUG "[${BOOST_TAR}]"

if [ -f ${SRC_DIR}/${BOOST_TAR} ]; then
    WARN "${SRC_DIR}/${BOOST_TAR} exist "
else
    INFO "downloading boost"
    wget ${BOOST_WGET_LINK} -O ${SRC_DIR}/${BOOST_TAR}  
    INFO "boost is done"
fi


## uncompress
if [ -d ${SRC_DIR}/${BOOST_FILE} ] ;then
    WARN "${SRC_DIR}/${BOOST_FILE} exist, will delete it "
#rm -rf ${SRC_DIR}/${BOOST_FILE}
fi

INFO "untar ${BOOST_TAR}"
#cd ${SRC_DIR}; tar xvjf ${BOOST_TAR} ;

##
INFO "compile"
cd ${SRC_DIR}/${BOOST_FILE}; \
	./bootstrap.sh ; \
	./b2 install  threading=multi --prefix=${TARGET_DIR}

