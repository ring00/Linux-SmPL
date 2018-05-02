//# pattern-1, witnesses: 2
@@
identifier PV0;
expression list listE1;
@@
- return PV0->flags & -2147483648;
+ return PV0->flags & -2147483648 || virtio_legacy_is_little_endian(listE1);
