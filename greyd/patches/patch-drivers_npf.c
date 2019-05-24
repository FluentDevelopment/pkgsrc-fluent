$NetBSD$

Support for various combinations of NPF API variants which have
differing function signatures on NetBSD 6, 7 & 8.

--- drivers/npf.c.orig	2015-06-22 05:21:14.000000000 +0000
+++ drivers/npf.c
@@ -130,12 +130,16 @@ Mod_fw_replace(FW_handle_T handle, const
         return 0;
 
     ncf = npf_config_create();
+#if defined(__NetBSD__) && __NetBSD_Version__ <= 699002600
     nt = npf_table_create(TABLE_ID, NPF_TABLE_HASH);
-    
+#else
+    /* Support named tables - npf_table_create takes 3 arguments */
+    nt = npf_table_create(table, TABLE_ID, NPF_TABLE_HASH);
+#endif    
     /* This should somehow be atomic. */
     LIST_EACH(cidrs, entry) {
         if((cidr = List_entry_value(entry)) != NULL
-            && IP_str_to_addr_mask(cidr, &n, &m) != -1) 
+	   && IP_str_to_addr_mask(cidr, &n, &m, (sa_family_t*)&af) != -1) 
         {
             ret = sscanf(cidr, "%39[^/]/%u", parsed, &maskbits);
             if(ret != 2 || maskbits == 0 || maskbits > IP_MAX_MASKBITS)
@@ -147,7 +151,13 @@ Mod_fw_replace(FW_handle_T handle, const
     }
 
     npf_table_insert(ncf, nt);
+
+#if defined(__NetBSD__) && __NetBSD_Version__ <= 799005200
     npf_config_submit(ncf, fwh->npfdev);
+#else
+    /* TODO: handle errors returned from npf_config_submit by passing npf_error_t * */
+    npf_config_submit(ncf, fwh->npfdev, NULL);
+#endif
     npf_config_destroy(ncf);
     npf_table_destroy(nt);
     nt = NULL;
