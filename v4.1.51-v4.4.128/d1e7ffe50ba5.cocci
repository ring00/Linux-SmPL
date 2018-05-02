//# pattern-1, witnesses: 4
@@
expression E0;
expression V1;
@@
- acpi_ns_handle_to_pathname(E0, &V1)
+ acpi_ns_handle_to_pathname(E0, &V1, FALSE)
