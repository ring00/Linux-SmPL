//# pattern-1, witnesses: 2
@@
expression EC0;
@@
- if (status & NAND_STATUS_FAIL && chip->errstat) {
- status = chip->errstat(mtd, chip, EC0, status, page);
- }
