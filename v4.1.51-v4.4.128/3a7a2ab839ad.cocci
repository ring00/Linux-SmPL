//# pattern-4, witnesses: 2
@@
expression E0;
@@
- acpi_dev_prop_read(to_acpi_node(fwnode), propname, DEV_PROP_STRING, val, E0)
+ acpi_node_prop_read(fwnode, propname, DEV_PROP_STRING, val, E0)
//# pattern-5, witnesses: 2
@@
expression list listE0;
@@
- to_acpi_node(listE0)
+ to_acpi_device_node(listE0)
