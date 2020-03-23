PREFIX?=	/usr/local
BIN_DEST=	${PREFIX}/bin
MAN_DEST=	${PREFIX}/man
SCRIPTS=	ssm-ssh

install: ${SCRIPTS} ${SCRIPTS:=.1}

${SCRIPTS}: $@
	install -m 555 $@ ${BIN_DEST}

${SCRIPTS:=.1}: $@
	install -m 444 $@ ${MAN_DEST}/1

.PHONY: ${SCRIPTS}
