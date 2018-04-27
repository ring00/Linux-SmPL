//# pattern-3, witnesses: 12
@@
expression F1;
identifier s;
@@
 struct target_type s = {
-    .merge = F1,
 };
//# pattern-4, witnesses: 5
@@
expression F1;
identifier s;
@@
 struct md_personality s = {
-    .mergeable_bvec = F1,
 };
//# pattern-6, witnesses: 4
@@
expression E0;
expression F1;
@@
- blk_queue_merge_bvec(E0, F1);
