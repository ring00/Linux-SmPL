//# pattern-6, witnesses: 10
@@
expression E0;
@@
- E0->name
+ E0->profile->name
//# pattern-2, witnesses: 4
@@
identifier s;
@@
- struct blk_integrity s = {
+ struct blk_integrity_profile s = {
-    .tuple_size = sizeof(unsigned long),
-    .tag_size = 0,
 };
//# pattern-13, witnesses: 2
@@
@@
- bi->verify_fn
+ bi->profile->verify_fn
//# pattern-15, witnesses: 2
@@
@@
- bi->generate_fn
+ bi->profile->generate_fn
//# pattern-17, witnesses: 2
@@
@@
- bi->name
+ bi->profile->name
