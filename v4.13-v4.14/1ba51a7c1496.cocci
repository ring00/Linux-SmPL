//# pattern-3, witnesses: 3
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
typedef bool;
identifier dev;
identifier enable;
@@
 int acpi_pm_set_device_wakeup(struct device * dev, bool enable)
 {
     <...
- struct acpi_device * adev = adev;
- adev = ACPI_COMPANION(dev);
- if (!E0) {
- }
     ...>
 }
//# pattern-10, witnesses: 2
@@
expression list listE0;
@@
- acpi_pm_set_device_wakeup(listE0)
+ acpi_pm_set_bridge_wakeup(listE0)
