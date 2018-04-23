//# pattern-3, witnesses: 6
@@
expression V0;
expression V1;
expression V2;
expression list listE3;
@@
- genl_register_family_with_ops_groups(&V0, V1, V2)
+ genl_register_family(listE3)
//# pattern-8, witnesses: 5
@@
identifier s;
@@
 struct genl_family s = {
+    . = 0,
 };
//# pattern-6, witnesses: 4
@@
expression V0;
expression V1;
expression list listE2;
@@
- genl_register_family_with_ops(&V0, V1)
+ genl_register_family(listE2)
