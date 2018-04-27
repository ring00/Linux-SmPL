//# pattern-2, witnesses: 6
@@
identifier s;
@@
 struct tcp_congestion_ops s = {
+    .undo_cwnd = tcp_reno_undo_cwnd,
 };
