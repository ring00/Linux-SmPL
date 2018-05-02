//# pattern-2, witnesses: 2
@@
expression list listE0;
@@
- fmc->op->write_ee(listE0)
+ fmc_write_ee(listE0)
//# pattern-5, witnesses: 2
@r0@
identifier i, fn;
@@
struct fmc_driver i = {
    .probe = fn,
};
@@
expression V0;
identifier fmc;
identifier r0.fn;
@@
 int fn(struct fmc_device * fmc)
 {
     <...
- if (fmc->op->validate) {
- index = fmc->op->validate(fmc, &V0);
- }
+ index = fmc_validate(fmc, &V0);
     ...>
 }
