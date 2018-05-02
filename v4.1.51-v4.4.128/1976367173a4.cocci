//# pattern-1, witnesses: 3
@@
identifier s;
@@
 struct mtd_info * s = {
 };
//# pattern-4, witnesses: 2
@@
@@
- flash->mtd
+ flash->spi_nor.mtd
