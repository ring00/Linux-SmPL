//# pattern-2, witnesses: 30
@@
expression E0;
@@
- E0->ecclayout
+ E0
//# pattern-1, witnesses: 5
@@
identifier fn;
identifier from;
typedef loff_t;
identifier mtd;
identifier ops;
@@
 int fn(struct mtd_info * mtd, loff_t from, struct mtd_oob_ops * ops)
 {
     <...
- this->ecclayout
+ mtd
     ...>
 }
//# pattern-3, witnesses: 4
@@
expression IL1;
identifier s;
@@
 struct nand_ecclayout s = {
-    .oobavail = IL1,
 };
//# pattern-4, witnesses: 2
@r0@
identifier i, fn;
@@
struct mtd_blktrans_ops i = {
    .add_mtd = fn,
};
@@
identifier mtd;
identifier tr;
@@
 void mtdswap_add_mtd(struct mtd_blktrans_ops * tr, struct mtd_info * mtd)
 {
     <...
- oinfo->oobavail
+ mtd->oobavail
     ...>
 }
//# pattern-5, witnesses: 2
@@
identifier fn;
identifier from;
typedef loff_t;
identifier mtd;
identifier ops;
@@
 int fn(struct mtd_info * mtd, loff_t from, struct mtd_oob_ops * ops)
 {
     <...
- chip->ecc.layout
+ mtd
     ...>
 }
