//# pattern-1, witnesses: 2
@@
expression F1;
identifier s;
@@
 struct proto s = {
-    .backlog_rcv = F1,
+    .memory_allocated = &udp_memory_allocated,
+    .sysctl_mem = sysctl_udp_mem,
 };
