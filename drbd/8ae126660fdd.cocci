//# pattern-4, witnesses: 12
@@
expression F1;
identifier s;
@@
 struct target_type s = {
-    .merge = F1,
 };
//# pattern-3, witnesses: 6
@@
expression F1;
identifier s;
@@
 struct md_personality s = {
-    .mergeable_bvec = F1,
 };
//# pattern-7, witnesses: 5
@@
expression E0;
expression F1;
@@
- blk_queue_merge_bvec(E0, F1);
//# pattern-5, witnesses: 4
@@
expression E0;
@@
- if (E0->merge_bvec_fn) {
- }
//# pattern-8, witnesses: 2
@@
expression E0;
expression E1;
@@
- E0 || E1 || test_bit(Unmerged, &rdev->flags)
+ E0 || E1
