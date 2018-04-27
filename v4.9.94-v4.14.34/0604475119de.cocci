//# pattern-2, witnesses: 2
@@
identifier s;
@@
 struct proto s = {
+    .leave_memory_pressure = tcp_leave_memory_pressure,
 };
