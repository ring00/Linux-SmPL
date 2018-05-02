//# pattern-2, witnesses: 2
@@
expression E0;
@@
- E0 = !virt_addr_valid(buf)
+ E0 = !virt_addr_valid(buf) || !IS_ALIGNED(buf, chip->buf_align)
