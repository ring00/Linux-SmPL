//# pattern-2, witnesses: 2
@@
identifier s;
@@
 struct svc_serv_ops s = {
-    .svo_setup = svc_set_num_threads,
+    .svo_setup = svc_set_num_threads_sync,
 };
