//# pattern-1, witnesses: 4
@@
expression E0;
@@
- E0->nr_open_blocks;
//# pattern-10, witnesses: 3
@@
@@
- NVM_BLK_ST_OPEN
+ NVM_BLK_ST_TGT
//# pattern-7, witnesses: 2
@@
@@
- struct nvm_block * blk = rblk->parent;
