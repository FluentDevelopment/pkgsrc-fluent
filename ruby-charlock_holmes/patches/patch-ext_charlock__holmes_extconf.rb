$NetBSD$

--- ext/charlock_holmes/extconf.rb.orig	2017-07-14 06:55:31.000000000 +0000
+++ ext/charlock_holmes/extconf.rb
@@ -53,5 +53,8 @@ have_library 'icudata' or abort 'libicud
 $CFLAGS << ' -Wall -funroll-loops'
 $CFLAGS << ' -Wextra -O0 -ggdb3' if ENV['DEBUG']
 
+# Needed for ICU to ensure char16_t and friends are defined
+$CXXFLAGS << ' -std=c++0x'
+
 ENV['RUBYOPT'] = rubyopt
 create_makefile 'charlock_holmes/charlock_holmes'
