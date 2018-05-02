//# pattern-3, witnesses: 6
@@
expression IL0;
@@
- acpi_device_wakeup(adev, IL0, false)
+ acpi_device_wakeup_disable(adev)
