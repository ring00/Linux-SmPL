//# pattern-7, witnesses: 16
@@
expression E0;
@@
- E0->blk_addr
+ E0->new_blkaddr
//# pattern-8, witnesses: 7
@@
expression E0;
@@
- E0->blk_addr
+ E0->old_blkaddr
//# pattern-6, witnesses: 3
@@
expression ME0;
@@
- fio.blk_addr = ME0
+ fio.new_blkaddr = fio.old_blkaddr = ME0
