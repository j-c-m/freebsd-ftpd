#	@(#)Makefile	8.2 (Berkeley) 4/4/94

PROG=	ftpd
CFLAGS+=-DSETPROCTITLE
SRCS=	ftpd.c ftpcmd.c logwtmp.c popen.c
LDADD=	-lcrypt
MAN8=	ftpd.8
CLEANFILES+=ftpcmd.c y.tab.h

.include <bsd.prog.mk>
