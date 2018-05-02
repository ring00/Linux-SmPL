//# pattern-2, witnesses: 3
@@
expression V0;
@@
- rproc->fw_ops = &V0;
//# pattern-3, witnesses: 2
@@
expression ME0;
expression ME1;
@@
- const struct rproc_fw_ops * elf_ops = elf_ops;
- elf_ops = rproc->fw_ops;
- ME0 = ME1;
