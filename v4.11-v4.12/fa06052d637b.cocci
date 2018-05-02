//# pattern-4, witnesses: 2
@@
@@
- bdi_destroy(mtd_bdi);
- kfree(mtd_bdi);
+ bdi_put(mtd_bdi);
