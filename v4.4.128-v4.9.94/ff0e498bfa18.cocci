//# pattern-10, witnesses: 2
@@
expression E0;
identifier dev;
identifier rqd;
@@
 void gennvm_mark_blk_bad(struct nvm_dev * dev, struct nvm_rq * rqd)
 {
     <...
- gennvm_blk_set_type(dev, &E0, 2)
+ gennvm_blk_set_type(dev, &E0, NVM_BLK_ST_BAD)
     ...>
 }
//# pattern-12, witnesses: 2
@@
expression E0;
@@
- E0->type
+ E0->state
