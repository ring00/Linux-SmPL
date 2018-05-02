//# pattern-1, witnesses: 3
@@
@@
- chip->cmdfunc(mtd, NAND_CMD_RESET, -1, -1)
+ nand_reset(chip)
