//# pattern-4, witnesses: 34
@@
expression S0;
expression V1;
@@
- printk(S0, V1)
+ pr_err
//# pattern-1, witnesses: 26
@@
expression E1;
expression E2;
expression S0;
@@
- printk(S0, E1, E2)
+ pr_err
//# pattern-13, witnesses: 16
@@
expression S0;
@@
- printk(S0)
+ pr_info
//# pattern-3, witnesses: 11
@@
expression S0;
@@
- printk(S0)
+ pr_info
//# pattern-11, witnesses: 4
@@
expression S0;
@@
- printk(S0, gctx->io_mode & 127)
+ pr_info
//# pattern-17, witnesses: 4
@@
expression S0;
expression V1;
@@
- printk(S0, V1)
+ pr_info
//# pattern-9, witnesses: 2
@@
@@
- printk("4Error while testing ring sync (%d).\n", r)
+ printk("4Error while testing ring sync (%d)\n", r)
//# pattern-10, witnesses: 2
@@
@@
- if (CU16(0) != ATOM_BIOS_MAGIC) {
- "6Invalid BIOS magic.\n";
- }
- if (strncmp(CSTR(ATOM_ATI_MAGIC_PTR), ATOM_ATI_MAGIC, strlen(ATOM_ATI_MAGIC))) {
- "6Invalid ATI magic.\n";
- }
- if (strncmp(CSTR(base + ATOM_ROM_MAGIC_PTR), ATOM_ROM_MAGIC, strlen(ATOM_ROM_MAGIC))) {
- "6Invalid ATOM magic.\n";
- }
+ if (CU16(0) != ATOM_BIOS_MAGIC) {
+ pr_info;
+ }
+ if (strncmp(CSTR(ATOM_ATI_MAGIC_PTR), ATOM_ATI_MAGIC, strlen(ATOM_ATI_MAGIC))) {
+ pr_info;
+ }
+ if (strncmp(CSTR(base + ATOM_ROM_MAGIC_PTR), ATOM_ROM_MAGIC, strlen(ATOM_ROM_MAGIC))) {
+ pr_info;
+ }
//# pattern-15, witnesses: 2
@@
@@
- printk("4amdgpu: No coherent DMA available.\n")
+ printk("4amdgpu: No coherent DMA available\n")
//# pattern-18, witnesses: 2
@@
@@
- printk("4Error while testing BO move.\n")
+ printk("4Error while testing BO move\n")
//# pattern-19, witnesses: 2
@@
@@
- printk("4amdgpu: No suitable DMA available.\n")
+ printk("4amdgpu: No suitable DMA available\n")
