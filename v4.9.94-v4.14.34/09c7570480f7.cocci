//# pattern-2, witnesses: 4
@@
expression E0;
@@
- if (E0) {
- xfrm_garbage_collect(net);
- }
//# pattern-3, witnesses: 2
@@
expression E0;
@@
- xfrm_garbage_collect(E0);
//# pattern-8, witnesses: 2
@@
expression F1;
identifier s;
@@
 struct dst_ops s = {
-    .gc = F1,
 };
//# pattern-9, witnesses: 2
@@
expression V0;
expression V1;
@@
- V0->flo.ops = &V1;
