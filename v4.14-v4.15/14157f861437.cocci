//# pattern-3, witnesses: 4
@@
expression IL0;
statement S1;
@@
- if (chip->chipsize > IL0 << 20) { S1 }
+ if (chip->options & NAND_ROW_ADDR_3) { S1 }
