//# pattern-2, witnesses: 2
@@
identifier mtd;
identifier page_addr;
@@
 void execmd_read_page_sector(struct mtd_info * mtd, int page_addr)
 {
     <...
- flctl->mtd.ecc_stats
+ mtd->ecc_stats
     ...>
 }
