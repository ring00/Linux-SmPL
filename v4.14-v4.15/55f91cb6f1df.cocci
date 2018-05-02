//# pattern-7, witnesses: 3
@@
identifier new_smi;
@@
 int try_smi_init(struct smi_info * new_smi)
 {
     <...
- rv = ipmi_smi_add_proc_entry(new_smi->intf, "type", &smi_type_proc_ops, new_smi);
     ...>
 }
//# pattern-10, witnesses: 2
@@
@@
- rv = ipmi_smi_add_proc_entry(ssif_info->intf, "type", &smi_type_proc_ops, ssif_info);
