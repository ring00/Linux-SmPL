//# pattern-10, witnesses: 7
@@
@@
- lun->vlun.blocks
+ lun->blocks
//# pattern-8, witnesses: 3
@@
@@
- lun->vlun.nr_free_blocks
+ lun->nr_free_blocks
//# pattern-2, witnesses: 2
@@
@@
- &lun->vlun.lock
+ &lun->lock
//# pattern-5, witnesses: 2
@r0@
identifier i, fn;
@@
struct nvmm_type i = {
    .get_blk = fn,
};
@@
identifier dev;
identifier flags;
identifier vlun;
@@
- struct nvm_block * gen_get_blk(struct nvm_dev * dev, struct nvm_lun * vlun, unsigned long flags)
+ struct nvm_block * gen_get_blk(struct nvm_dev * dev, struct nvm_lun * lun, unsigned long flags)
 {
     <...
- vlun->lock
+ lun->lock
     ...>
 }
//# pattern-6, witnesses: 2
@r1@
identifier i, fn;
@@
struct nvmm_type i = {
    .get_blk = fn,
};
@@
identifier dev;
identifier flags;
identifier lun;
@@
 struct nvm_block * gen_get_blk(struct nvm_dev * dev, struct nvm_lun * lun, unsigned long flags)
 {
     <...
- lun->vlun.nr_free_blocks
+ lun->nr_free_blocks
     ...>
 }
