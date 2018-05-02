//# pattern-1, witnesses: 5
@@
expression V0;
identifier fn;
typedef loff_t;
identifier mtd;
identifier ops;
identifier to;
@@
 int fn(struct mtd_info * mtd, loff_t to, struct mtd_oob_ops * ops)
 {
     <...
- if (ops->mode == MTD_OPS_AUTO_OOB) {
- V0 = mtd->oobavail;
- }
+ V0 = mtd_oobavail(mtd, ops);
     ...>
 }
//# pattern-3, witnesses: 2
@@
identifier fn;
identifier from;
typedef loff_t;
identifier mtd;
identifier ops;
identifier s;
@@
  uint32_t s = {
 };
int fn(struct mtd_info * mtd, loff_t from, struct mtd_oob_ops * ops)
 {
     <...
 uint32_t s = {
 };
     ...>
 }
