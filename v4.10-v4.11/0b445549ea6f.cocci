//# pattern-1, witnesses: 3
@@
expression E1;
identifier s;
@@
 const struct s3c2410_wdt_variant s = {
+    .quirks = E1 | 1 << 2,
 };
