//# pattern-2, witnesses: 5
@@
identifier buf;
identifier chip;
identifier fn;
identifier mtd;
identifier oob_required;
identifier page;
@@
 int fn(struct mtd_info * mtd, struct nand_chip * chip, const uint8_t * buf, int oob_required, int page)
 {
     <...
- return 0;
+ return nand_prog_page_end_op(chip);
     ...>
 }
//# pattern-20, witnesses: 3
@@
expression E0;
identifier buf;
identifier chip;
identifier fn;
identifier mtd;
identifier oob_required;
identifier page;
@@
 int fn(struct mtd_info * mtd, struct nand_chip * chip, const uint8_t * buf, int oob_required, int page)
 {
     <...
- chip->write_buf(mtd, buf, E0)
+ nand_prog_page_begin_op(chip, page, 0, buf, E0)
     ...>
 }
//# pattern-6, witnesses: 2
@@
expression EC0;
identifier buf;
identifier fn;
identifier mtd;
identifier nand;
identifier oob_required;
identifier page;
@@
 int fn(struct mtd_info * mtd, struct nand_chip * nand, const uint8_t * buf, int oob_required, int page)
 {
     <...
- write_page(mtd, nand, buf, EC0)
+ write_page(mtd, nand, buf, page, EC0)
     ...>
 }
//# pattern-7, witnesses: 2
@@
identifier buf;
identifier chip;
identifier fn;
identifier mtd;
identifier oob_required;
identifier page;
@@
 int fn(struct mtd_info * mtd, struct nand_chip * chip, uint8_t * buf, int oob_required, int page)
 {
     <...
- chip->read_buf(mtd, buf, mtd->writesize)
+ nand_read_page_op(chip, page, 0, buf, mtd->writesize)
     ...>
 }
//# pattern-15, witnesses: 2
@@
identifier chip;
identifier fn;
identifier mtd;
identifier page;
@@
 int fn(struct mtd_info * mtd, struct nand_chip * chip, int page)
 { ... }
//# pattern-39, witnesses: 2
@@
identifier buf;
identifier chip;
identifier data_len;
identifier mtd;
identifier offset;
identifier oob_required;
identifier page;
identifier raw;
typedef uint32_t;
@@
 int nand_write_page(struct mtd_info * mtd, struct nand_chip * chip, uint32_t offset, int data_len, const uint8_t * buf, int oob_required, int page, int raw)
 {
     <...
- if (nand_standard_page_accessors(&chip->ecc)) {
- }
     ...>
 }
//# pattern-41, witnesses: 2
@@
@@
- chip->ecc.options |= NAND_ECC_CUSTOM_PAGE_ACCESS;
