//# pattern-3, witnesses: 3
@@
identifier PV0;
@@
- PV0->flags.visited = false;
+ acpi_device_clear_enumerated(PV0);
//# pattern-1, witnesses: 2
@@
expression EC0;
identifier device;
@@
 void acpi_bus_attach(struct acpi_device * device)
 {
     <...
- device->flags.visited = EC0;
     ...>
 }
