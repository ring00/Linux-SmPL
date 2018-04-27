//# pattern-1, witnesses: 15
@@
expression E0;
expression E1;
@@
- E0->limits.max_discard_sectors = E1
+ blk_queue_max_discard_sectors(E0, E1)
