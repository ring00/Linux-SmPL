//# pattern-2, witnesses: 2
@@
identifier s;
@@
 struct nf_conntrack_l4proto s = {
+    .can_early_drop = sctp_can_early_drop,
 };
//# pattern-3, witnesses: 2
@@
identifier s;
@@
 struct nf_conntrack_l4proto s = {
+    .can_early_drop = dccp_can_early_drop,
 };
//# pattern-4, witnesses: 2
@@
identifier s;
@@
 struct nf_conntrack_l4proto s = {
+    .can_early_drop = tcp_can_early_drop,
 };
