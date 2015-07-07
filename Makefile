
all: ndkbuild

# Brody NOTE: gluegentools is included as a git submodule, but for sqlcipher other
# dependencies are simply included by git clone.
init:
	git submodule update --init
	git clone https://github.com/libtom/libtomcrypt.git
	git clone https://github.com/sqlcipher/sqlcipher.git
	cd sqlcipher && ./configure --enable-tempstore=yes && make sqlite3.c

regen:
	java -cp gluegentools/antlr.jar:gluegentools/gluegen.jar com.jogamp.gluegen.GlueGen -I. -Ecom.jogamp.gluegen.JavaEmitter -CSQLiteNative.cfg native/sqlc.h
	sed -i.orig 's/^import/\/\/import/' java/io/liteglue/SQLiteNative.java

# NOTE: adding v (verbose) flag for the beginning stage:
ndkbuild:
	rm -rf lib libs
	ndk-build
	mv libs lib
	jar cf sqlcipher-native-driver.jar lib

clean:
	rm -rf obj lib libs sqlite-native-driver.jar

