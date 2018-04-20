//# pattern-1, witnesses: 8
@@
expression F1;
identifier s;
@@
 struct target_type s = {
-    .merge = F1,
 };
//# pattern-3, witnesses: 4
@@
expression E0;
expression F1;
@@
- blk_queue_merge_bvec(E0, F1);
