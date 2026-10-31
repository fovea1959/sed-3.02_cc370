#!/bin/bash 

SRC=sed-3.02/sed
LIB=sed-3.02/lib

for f in \
       $SRC/sed.c \
       $SRC/compile.c \
       $SRC/execute.c \
       $SRC/utils.c \
       $LIB/getopt.c \
       $LIB/getopt1.c \
       $LIB/regex.c \

do	
  FILENAME_NO_EXT=$(basename "$f" .c)
 
  cc370 -c -o ${FILENAME_NO_EXT}.o -DHAVE_CONFIG_H=1 -I . -I $SRC -I $LIB $f 
done

ld370 -xmit -o sed.out --blocksize 6144 --entry @@CRT0 -L/usr/lib/cc370/cc370/lib -lcc370rt -lc *.o
rm *.o
upload-ld370.py --dsn mvscus.linklib --xmit sed.out.xmit --out sed.out.jcl

ncat --send-only -w1 localhost 33506 < sed.out.jcl

