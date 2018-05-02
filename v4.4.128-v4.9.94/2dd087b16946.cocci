//# pattern-14, witnesses: 3
@@
expression E1;
expression IL0;
identifier buf;
identifier len;
typedef loff_t;
identifier mtd;
identifier retlen;
identifier to;
@@
 int sst_write(struct mtd_info * mtd, loff_t to, size_t len, size_t * retlen, const u_char * buf)
 {
     <...
- nor->write(nor, to, IL0, retlen, E1)
+ nor->write(nor, to, IL0, E1)
     ...>
 }
