//# pattern-4, witnesses: 2
@@
expression list listE0;
@@
- uuid_le_to_bin(listE0)
+ guid_parse(listE0)
//# pattern-5, witnesses: 2
@@
expression list listE0;
@@
- uuid_be_to_bin(listE0)
+ uuid_parse(listE0)
