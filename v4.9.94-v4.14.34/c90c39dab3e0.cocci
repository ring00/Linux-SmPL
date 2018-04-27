//# pattern-3, witnesses: 10
@@
expression V0;
@@
- V0.attrbuf
+ attrbuf
//# pattern-4, witnesses: 7
@@
expression V0;
@@
- V0.attrbuf
+ genl_family_attrbuf(&V0)
