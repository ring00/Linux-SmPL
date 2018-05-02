//# pattern-3, witnesses: 2
@r0@
identifier fn;
expression P0;
@@
acpi_table_parse(P0, fn)
@@
identifier r0.fn;
identifier table;
@@
 int fn(struct acpi_table_header * table)
 {
     <...
- if (!table) {
- return -EINVAL;
- }
     ...>
 }
//# pattern-5, witnesses: 2
@r1@
identifier fn;
expression P0;
@@
acpi_table_parse(P0, fn)
@@
expression S2;
expression V0;
expression V1;
identifier r1.fn;
identifier table;
@@
 int fn(struct acpi_table_header * table)
 {
     <...
- V0 = table;
- if (!V1) {
- printk(S2);
- return -ENODEV;
- }
     ...>
 }
