//# pattern-1, witnesses: 2
@@
identifier PV0;
@@
- PV0->type == FWNODE_ACPI
+ is_acpi_device_node(PV0)
//# pattern-4, witnesses: 2
@@
identifier PV0;
@@
- PV0->type == FWNODE_ACPI_DATA
+ is_acpi_data_node(PV0)
