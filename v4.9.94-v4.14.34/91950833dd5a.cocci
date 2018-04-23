//# pattern-1, witnesses: 14
@@
expression F1;
identifier s;
@@
 struct nf_conntrack_l4proto s = {
-    .print_tuple = F1,
 };
//# pattern-2, witnesses: 3
@@
expression F1;
identifier s;
@@
 struct nf_conntrack_l3proto s = {
-    .print_tuple = F1,
 };
