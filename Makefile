#
# $Lassitude: software/sc/Makefile,v 1.7 2006/11/11 01:23:49 stb Exp $
#

### compile options

# C compiler to use
CC?=	cc

# compile with debugging
CFLAGS+=	-Wall -g

# Enable this for operating systems that have a broken poll(2)
# implementation:
#   Mac OS X 10.4
CFLAGS+=	-DHAS_BROKEN_POLL

# device to use if none given on command line
#CFLAGS+=	-DDEFAULTDEVICE='"cuad0"'

# default speed to use
#CFLAGS+=	-DDEFAULTSPEED='"9600"'

# default parameters to use
#CFLAGS+=	-DDEFAULTPARMS='"8n1"'

all:	sc

sc:	sc.c
	${CC} ${CFLAGS} -o sc sc.c

clean:
	rm -f *.o sc *~
