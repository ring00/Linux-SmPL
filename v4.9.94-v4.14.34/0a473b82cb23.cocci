//# pattern-13, witnesses: 4
@@
@@
- if (t->parms.flags & IP6_TNL_F_USE_ORIG_FWMARK) {
- }
+ if (t->parms.flags & IP6_TNL_F_USE_ORIG_FWMARK) {
+ }
//# pattern-5, witnesses: 3
@@
expression E0;
expression E1;
expression E2;
expression E5;
expression IL3;
expression IL4;
@@
- E0 + nla_total_size(E1) + nla_total_size(E2) + nla_total_size(IL3) + nla_total_size(IL4) + E5
+ E0 + nla_total_size(E1) + nla_total_size(E2) + nla_total_size(IL3) + nla_total_size(IL4) + nla_total_size(4) + E5
//# pattern-11, witnesses: 2
@@
identifier s;
@@
- const struct nla_policy [20] s = {
+ const struct nla_policy [21] s = {
+    . = ,
 };
