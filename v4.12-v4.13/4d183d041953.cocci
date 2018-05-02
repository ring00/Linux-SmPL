//# pattern-2, witnesses: 5
@@
expression list listE0;
@@
- acpi_pm_device_sleep_wake(listE0)
+ acpi_pm_set_device_wakeup(listE0)
//# pattern-1, witnesses: 3
@@
expression list listE0;
@@
- acpi_pm_device_run_wake(listE0)
+ acpi_pm_set_device_wakeup(listE0)
