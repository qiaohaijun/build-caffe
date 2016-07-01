source ./config.sh

WGETRC=~/.wgetrc
INFO 'backup $WGETRC'
mv $WGETRC ${WGETRC}.bk
cecho -r "[DEBUG] set wget squid proxy"
if [  -f ~/.wgetrc ]; then
	cecho -r "[WARN] ~/.wgetrc is exist!"	
else
	cecho -g  "[INFO] begin set wget proxy"
	touch ${WGETRC}

	echo "https_proxy = http://${PROXY_HOST}:${PROXY_PORT}" >> ${WGETRC}
	echo "http_proxy = http://${PROXY_HOST}:${PROXY_PORT}"  >> ${WGETRC}
	echo "ftp_proxy = http://${PROXY_HOST}:${PROXY_PORT}" >> ${WGETRC}
	echo "use_proxy = on" >> ${WGETRC}
	cecho -g  "[INFO] end set wget proxy"

fi
