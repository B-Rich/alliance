## Process this file with automake to produce Makefile.in

bin_PROGRAMS = scapin

AM_CFLAGS = @ALLIANCE_CFLAGS@ \
         -DSCAPIN_DEFAULT_PARAM_NAME=\"etc/sxlib.scapin\"

scapin_LDADD = @ALLIANCE_LIBS@ \
-lMlu -lMcl -lMel -lMhl -lMvg -lMlo -lMut -lMal -lRcn -lMsl -lMgl -lAut

scapin_SOURCES = \
scan_insert.c scan_insert.h scan_main.c scan_main.h \
scan_param.c scan_param.h scan_path.c scan_path.h
