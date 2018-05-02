//# pattern-3, witnesses: 7
@@
identifier s;
@@
 const struct tpm_class_ops s = {
+    .flags = TPM_OPS_AUTO_STARTUP,
 };
//# pattern-2, witnesses: 4
@@
expression E0;
@@
- if (E0) {
- return -ENODEV;
- }
//# pattern-6, witnesses: 2
@@
@@
- int rc = rc;
- rc = tpm_get_timeouts(chip);
//# pattern-7, witnesses: 2
@@
@@
- tpm_do_selftest(chip);
//# pattern-8, witnesses: 2
@@
@@
- tpm_get_timeouts(chip);
