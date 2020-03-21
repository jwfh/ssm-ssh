PREFIX?=	/usr/local
BIN_DEST=	${PREFIX}/bin
SCRIPTS=	ssm-ssh

install: ${SCRIPTS}

${SCRIPTS}: $@
	install -m 555 $@ ${BIN_DEST}

.PHONY: ${SCRIPTS}
