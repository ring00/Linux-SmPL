//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier adev;
@@
- struct acpi_nfit_desc * acpi_nfit_desc_init(struct acpi_device * adev)
+ void acpi_nfit_desc_init(struct acpi_nfit_desc * acpi_desc, struct device * dev)
 {
     <...
- struct acpi_nfit_desc * acpi_desc = acpi_desc;
- acpi_desc = devm_kzalloc(dev, sizeof(unsigned long), GFP_KERNEL);
     ...>
 }
//# pattern-3, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier acpi_desc;
identifier dev;
@@
 void acpi_nfit_desc_init(struct acpi_nfit_desc * acpi_desc, struct device * dev)
 {
     <...
- struct acpi_nfit_desc * acpi_desc = acpi_desc;
- struct device * dev = &adev->dev;
- acpi_desc = devm_kzalloc(dev, sizeof(unsigned long), GFP_KERNEL);
     ...>
 }
