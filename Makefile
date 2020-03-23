PREFIX?=	/usr/local
BIN_DEST=	${PREFIX}/bin
MAN_DEST=	${PREFIX}/share/man
SCRIPTS=	ssm-ssh

install: ${SCRIPTS} ${SCRIPTS:=.1.gz}
	install -m 555 ${SCRIPTS} ${BIN_DEST}
	install -m 444 ${SCRIPTS:=.1.gz} ${MAN_DEST}/man1

%.1: %
	help2man -N -o $@ $<

%.gz: %
	gzip -c $< > $@

clean:
	rm -f ${SCRIPTS:=.1.gz}
