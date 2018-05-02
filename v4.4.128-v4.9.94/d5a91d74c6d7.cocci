//# pattern-6, witnesses: 3
@@
identifier d;
identifier fn;
@@
 int fn(const struct dmi_system_id * d)
 {
     <...
- printk("5ACPI: DMI detected: %s\n", d->ident)
+ pr_notice
     ...>
 }
//# pattern-2, witnesses: 2
@@
expression list listE0;
@@
- acpi_cmdline_osi_linux(listE0)
+ acpi_osi_setup_linux(listE0)
//# pattern-5, witnesses: 2
@@
expression S0;
@@
- printk_once(S0, , )
+ pr_notice_once(, )
//# pattern-7, witnesses: 2
@@
expression list listE0;
@@
- acpi_cmdline_osi_darwin(listE0)
+ acpi_osi_setup_darwin(listE0)
