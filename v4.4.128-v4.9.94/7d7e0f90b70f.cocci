//# pattern-2, witnesses: 15
@@
identifier s;
@@
 struct blk_mq_ops s = {
-    .map_queue = blk_mq_map_queue,
 };
//# pattern-1, witnesses: 8
@@
expression E0;
expression list listE1;
@@
- E0->mq_ops->map_queue(listE1)
+ blk_mq_map_queue(listE1)
