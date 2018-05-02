//# pattern-2, witnesses: 3
@@
expression E0;
expression E1;
expression E2;
@@
- nand_bch_init(mtd, E0->size, E1->bytes, &E2)
+ nand_bch_init(mtd)
