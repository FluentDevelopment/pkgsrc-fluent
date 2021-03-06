$NetBSD$

Fix undefined S_IRUSR|S_IWUSR|S_IRGRP|S_IROTH constants by including sys/stat.h

--- src/utils.c.orig	2015-06-22 05:21:14.000000000 +0000
+++ src/utils.c
@@ -22,6 +22,7 @@
 #include <config.h>
 
 #include <sys/param.h>
+#include <sys/stat.h>
 #include <sys/types.h>
 
 #include <errno.h>
