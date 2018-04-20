//# pattern-2, witnesses: 6
@@
expression IL1;
expression S0;
expression V2;
expression V3;
@@
- acpi_get_table_with_size(S0, IL1, &V2, &V3)
+ acpi_get_table(S0, IL1, &V2)
//# pattern-3, witnesses: 3
@@
expression V0;
expression V1;
expression V2;
@@
- acpi_size  = V0;
- early_acpi_os_unmap_memory(V1, V2);
+ acpi_put_table(V1);
//# pattern-4, witnesses: 2
@@
expression E0;
expression E1;
expression V2;
@@
- acpi_size tbl_size = tbl_size;
- acpi_get_table_with_size(E0, E1, &V2, &tbl_size);
+ acpi_get_table(E0, E1, &V2);
