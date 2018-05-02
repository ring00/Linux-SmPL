//# pattern-1, witnesses: 5
@@
@@
- ACPI_STRTOUL_BASE16
+ ACPI_IMPLICIT_CONVERSION
//# pattern-2, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
@@
- acpi_ut_strtoul64(E0, E1, &E2)
+ acpi_ut_strtoul64(E0, &E2)
