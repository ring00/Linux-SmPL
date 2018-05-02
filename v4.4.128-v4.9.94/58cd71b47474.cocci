//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct acpi_device_ops i = {
    .remove = fn,
};
@@
expression E0;
identifier adev;
@@
 int acpi_nfit_remove(struct acpi_device * adev)
 {
     <...
- struct acpi_nfit_desc * acpi_desc = dev_get_drvdata(&adev->dev);
- E0;
     ...>
 }
//# pattern-3, witnesses: 2
@@
@@
- if (!acpi_desc->nvdimm_bus) {
- }
//# pattern-4, witnesses: 2
@@
@@
- acpi_desc->nvdimm_bus = nvdimm_bus_register(dev, &acpi_desc->nd_desc);
