//# pattern-12, witnesses: 12
@@
expression E0;
@@
- chip->cmdfunc(mtd, NAND_CMD_READ0, E0, page)
+ nand_read_page_op(chip, page, E0, NULL, 0)
//# pattern-30, witnesses: 8
@@
expression E1;
expression E2;
expression IL0;
@@
- chip->cmdfunc(mtd, IL0, E1, E2);
//# pattern-26, witnesses: 3
@@
expression V0;
@@
- chip->cmdfunc(mtd, NAND_CMD_RNDOUT, V0, -1)
+ nand_change_read_column_op(chip, V0, NULL, 0, false)
//# pattern-31, witnesses: 3
@@
expression E0;
expression ME1;
identifier chip;
identifier fn;
identifier mtd;
identifier page;
@@
 int fn(struct mtd_info * mtd, struct nand_chip * chip, int page)
 {
     <...
- chip->write_buf(mtd, E0, ME1);
     ...>
 }
//# pattern-32, witnesses: 3
@@
expression E0;
identifier chip;
identifier fn;
identifier mtd;
identifier page;
@@
 int fn(struct mtd_info * mtd, struct nand_chip * chip, int page)
 {
     <...
- chip->cmdfunc(mtd, NAND_CMD_SEQIN, E0, page);
     ...>
 }
//# pattern-8, witnesses: 2
@@
identifier chip;
identifier fn;
identifier mtd;
identifier page;
@@
 int fn(struct mtd_info * mtd, struct nand_chip * chip, int page)
 {
     <...
- return 0;
+ return nand_read_oob_op(chip, page, 0, chip->oob_poi, mtd->oobsize);
     ...>
 }
//# pattern-29, witnesses: 2
@@
identifier chip;
identifier fn;
identifier mtd;
identifier page;
@@
 int fn(struct mtd_info * mtd, struct nand_chip * chip, int page)
 {
     <...
- int status = status;
- status = chip->waitfunc(mtd, chip);
- return ;
+ return nand_prog_page_op(chip, page, mtd->writesize, chip->oob_poi, mtd->oobsize);
     ...>
 }
//# pattern-60, witnesses: 2
@@
expression E0;
@@
- E0->cmdfunc(mtd, NAND_CMD_STATUS, -1, -1)
+ nand_status_op(E0, NULL)
//# pattern-74, witnesses: 2
@@
identifier chip;
identifier fn;
identifier mtd;
identifier page;
@@
 int fn(struct mtd_info * mtd, struct nand_chip * chip, int page)
 {
     <...
- chip->read_buf(mtd, chip->oob_poi, mtd->oobsize);
     ...>
 }
//# pattern-78, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
@@
- chip->cmdfunc(mtd, NAND_CMD_READOOB, E0, page);
- chip->read_buf(mtd, E1, E2);
+ nand_read_oob_op(chip, page, E0, E1, E2);
