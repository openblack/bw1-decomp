###
###   mpg123  Makefile
###

# Where to install binary and manpage on "make install":

PREFIX=/usr/local
BINDIR=$(PREFIX)/bin
MANDIR=$(PREFIX)/man
SECTION=1

###################################################
######                                       ######
######   End of user-configurable settings   ######
######                                       ######
###################################################

nothing-specified:
	@echo ""
	@echo "You must specify the system which you want to compile for:"
	@echo ""
	@echo "make linux           Linux"
	@echo "make freebsd         FreeBSD"
	@echo "make solaris         Solaris 2.x (tested: 2.5 and 2.5.1) using SparcWorks cc"
	@echo "make solaris-gcc     Solaris 2.x using GNU cc (somewhat slower)"
	@echo "make sunos           SunOS 4.x (tested: 4.1.4)"
	@echo "make hpux            HP/UX 9/10, /7xx"
	@echo "make sgi             SGI running IRIX"
	@echo "make dec             DEC Unix (tested: 3.2 and 4.0), OSF/1"
	@echo "make ultrix          DEC Ultrix (tested: 4.4)"
	@echo "make aix             IBM AIX (tested: 4.2)"
	@echo "make os2             IBM OS/2"
	@echo "make generic         try this one if your system isn't listed above"
	@echo ""
	@echo "Please read the file INSTALL for additional information."
	@echo ""

linux-devel:
	$(MAKE) OBJECTS='decode_i386.o dct64_i386.o' \
        CC=gcc LDFLAGS= \
        CFLAGS='-DREAL_IS_FLOAT -DLINUX -Wall -g -m486 \
            -funroll-all-loops \
            -finline-functions -ffast-math' \
        mpg123

linux-profile:
	$(MAKE) OBJECTS='decode_i386.o dct64_i386.o' \
        CC=gcc LDFLAGS='-pg' \
        CFLAGS='-DREAL_IS_FLOAT -DLINUX -Wall -pg -m486 \
            -funroll-all-loops \
            -finline-functions -ffast-math' \
        mpg123

linux:
	$(MAKE) CC=gcc LDFLAGS= \
		OBJECTS='decode_i386.o dct64_i386.o getbits.o' \
		CFLAGS='-DI386_ASSEM -DREAL_IS_FLOAT -DLINUX -Wall -O2 -m486 \
			-fomit-frame-pointer -funroll-all-loops \
			-finline-functions -ffast-math' \
		mpg123

linux-sajber:
	$(MAKE) CC=gcc LDFLAGS= \
		OBJECTS='decode_i386.o dct64_i386.o getbits.o control.o' \
		CFLAGS='-DFRONTEND -DI386_ASSEM -DREAL_IS_FLOAT -DLINUX -Wall -O2 -m486\
			-fomit-frame-pointer -funroll-all-loops \
			-finline-functions -ffast-math' \
		sajberplay


#### the following defines are for experimental use ... 
#
#CFLAGS='-pg -DI386_ASSEM -DREAL_IS_FLOAT -DLINUX -Wall -O2 -m486 -funroll-all-loops -finline-functions -ffast-math' mpg123
#CFLAGS='-DI386_ASSEM -O2 -DREAL_IS_FLOAT -DLINUX -Wall -g'
#CFLAGS='-DI386_ASSEM -DREAL_IS_FLOAT -DLINUX -Wall -O2 -m486 -fomit-frame-pointer -funroll-all-loops -finline-functions -ffast-math -malign-loops=2 -malign-jumps=2 -malign-functions=2'

freebsd:
	$(MAKE) CC=cc LDFLAGS= \
		OBJECTS='decode_i386.o dct64_i386.o getbits_.o' \
		CFLAGS='-Wall -ansi -pedantic -O4 -m486 -fomit-frame-pointer \
			-funroll-all-loops -ffast-math -DROT_I386 \
			-DI386_ASSEM -DREAL_IS_FLOAT -DUSE_MMAP' \
		mpg123

solaris:
	$(MAKE) CC=cc LDFLAGS='-lsocket -lnsl' OBJECTS='decode.o dct64.o' \
		CFLAGS='-fast -native -xO5 -DSOLARIS -DREAL_IS_FLOAT \
			-DUSE_MMAP' \
		mpg123

solaris-gcc:
	$(MAKE) CC=gcc LDFLAGS='-lsocket -lnsl' OBJECTS='decode.o dct64.o' \
		CFLAGS='-O2 -Wall -DSOLARIS -DREAL_IS_FLOAT -DUSE_MMAP \
			-funroll-all-loops -finline-functions' \
		mpg123

sunos:
	$(MAKE) CC=gcc LDFLAGS= OBJECTS='decode.o dct64.o' \
		CFLAGS='-O2 -DSUNOS -DREAL_IS_FLOAT -DUSE_MMAP \
			-funroll-loops' \
		mpg123

hpux:
	$(MAKE) CC=cc LDFLAGS= OBJECTS='decode.o dct64.o' \
		CFLAGS='-DREAL_IS_FLOAT -Aa +O3 -D_HPUX_SOURCE -DHPUX' \
		mpg123

sgi:
	$(MAKE) CC=cc LDFLAGS= OBJECTS='decode.o dct64.o' AUDIO_LIB=-laudio \
		CFLAGS='-O2 -DSGI -DREAL_IS_FLOAT -DUSE_MMAP' \
		mpg123

dec:
	$(MAKE) CC=cc LDFLAGS= OBJECTS='decode.o dct64.o' \
		CFLAGS='-std1 -warnprotos -O4 -DUSE_MMAP' \
		mpg123

ultrix:
	$(MAKE) CC=cc LDFLAGS= OBJECTS='decode.o dct64.o' \
		CFLAGS='-std1 -O2 -DULTRIX' \
		mpg123

aix:
	$(MAKE) LDFLAGS= OBJECTS='decode.o dct64.o' \
		CFLAGS='-O -DAIX -DUSE_MMAP' \
		mpg123
os2:
	$(MAKE) CC=gcc LDFLAGS= \
		OBJECTS='decode_i386.o dct64_i386.o' \
		CFLAGS='-DREAL_IS_FLOAT -DOS2 -Wall -O2 -m486 \
		-fomit-frame-pointer -funroll-all-loops \
		-finline-functions -ffast-math' \
		LIBS='-los2me -lsocket' \
		mpg123.exe

generic:
	$(MAKE) LDFLAGS= OBJECTS='decode.o dct64.o' \
		CFLAGS='-O' \
		mpg123


sajberplay: mpg123.o common.o $(OBJECTS) decode_2to1.o decode_4to1.o \
		tabinit.o audio.o layer1.o layer2.o layer3.o buffer.o \
		getlopt.o httpget.o xfermem.o Makefile
	$(CC) $(CFLAGS) $(LDFLAGS)  mpg123.o tabinit.o common.o layer1.o \
		layer2.o layer3.o audio.o buffer.o decode_2to1.o \
		decode_4to1.o getlopt.o httpget.o xfermem.o $(OBJECTS) \
		-o sajberplay -lm $(AUDIO_LIB)

mpg123: mpg123.o common.o $(OBJECTS) decode_2to1.o decode_4to1.o \
		tabinit.o audio.o layer1.o layer2.o layer3.o buffer.o \
		getlopt.o httpget.o xfermem.o Makefile
	$(CC) $(CFLAGS) $(LDFLAGS)  mpg123.o tabinit.o common.o layer1.o \
		layer2.o layer3.o audio.o buffer.o decode_2to1.o \
		decode_4to1.o getlopt.o httpget.o xfermem.o $(OBJECTS) \
		-o mpg123 -lm $(AUDIO_LIB)

mpg123.exe: mpg123.o common.o $(OBJECTS) decode_2to1.o decode_4to1.o \
	tabinit.o audio.o layer1.o layer2.o layer3.o buffer.o \
	getlopt.o httpget.o Makefile 
	$(CC) $(CFLAGS) $(LDFLAGS)  mpg123.o tabinit.o common.o layer1.o \
		layer2.o layer3.o audio.o buffer.o decode_2to1.o \
		decode_4to1.o getlopt.o httpget.o $(OBJECTS) \
		-o mpg123.exe -lm $(LIBS)

tst:
	gcc $(CFLAGS) -S decode.c

layer1.o:	mpg123.h
layer2.o:	mpg123.h
layer3.o:	mpg123.h huffman.h get1bit.h
decode.o:	mpg123.h
decode_int.o:	mpg123.h
decode_2to1.o:	mpg123.h
decode_4to1.o:	mpg123.h
decode_i386.o:	mpg123.h
common.o:	mpg123.h tables.h
mpg123.o:	mpg123.h getlopt.h xfermem.h version.h
mpg123.h:	audio.h
audio.o:	mpg123.h
buffer.o:	mpg123.h xfermem.h
getbits.o:	mpg123.h
getbits_.o:	mpg123.h
tabinit.o:	mpg123.h
getlopt.o:	getlopt.h
httpget.o:	mpg123.h
dct64.o:	mpg123.h
dct64_i386.o:	mpg123.h
xfermem.o:	xfermem.h

clean:
	rm -f *.o *core *~ mpg123 gmon.out sajberplay

prepared-for-install:
	@if [ ! -x mpg123 ]; then \
		echo '###' ; \
		echo '###  Before doing "make install", you have to compile the software.' ; \
		echo '### Type "make" for more information.' ; \
		echo '###' ; \
		exit 1 ; \
	fi

install:	prepared-for-install
	strip mpg123
	if [ -x /usr/ccs/bin/mcs ]; then /usr/ccs/bin/mcs -d mpg123; fi
	cp -f mpg123 $(BINDIR)
	chmod 755 $(BINDIR)/mpg123
	cp -f mpg123.1 $(MANDIR)/man$(SECTION)
	chmod 644 $(MANDIR)/man$(SECTION)/mpg123.1
	if [ -r $(MANDIR)/windex ]; then catman -w -M $(MANDIR) $(SECTION); fi

dist:	clean
	DISTNAME="`basename \`pwd\``" ; \
	sed '/prgDate/s_".*"_"'`date +%Y/%m/%d`'"_' version.h > version.new; \
	mv -f version.new version.h; \
	cd .. ; \
	rm -f "$$DISTNAME".tar.gz "$$DISTNAME".tar ; \
	tar cvf "$$DISTNAME".tar "$$DISTNAME" ; \
	gzip -9 "$$DISTNAME".tar
