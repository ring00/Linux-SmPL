//# pattern-4, witnesses: 5
@@
expression E1;
expression S0;
@@
- acpi_info(_acpi_module_name, 7123, S0, E1)
+ acpi_info(S0, E1)
//# pattern-7, witnesses: 3
@@
expression S0;
@@
- acpi_info(_acpi_module_name, 7123, S0)
+ acpi_info(S0)
