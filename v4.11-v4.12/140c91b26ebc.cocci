//# pattern-5, witnesses: 2
@@
expression EC0;
@@
- p->update_no_reboot_bit(p, EC0)
+ p->update_no_reboot_bit(p->no_reboot_priv, EC0)
