//# pattern-1, witnesses: 3
@@
expression V0;
@@
- V0.acpi_node.companion = adev
+ V0.fwnode = acpi_fwnode_handle(adev)
