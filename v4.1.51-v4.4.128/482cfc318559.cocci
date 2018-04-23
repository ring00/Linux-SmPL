//# pattern-3, witnesses: 25
@@
expression E0;
expression E1;
@@
- E0->entries[E1]
+ E0->entries
//# pattern-1, witnesses: 3
@@
@@
- entry1 = newinfo->entries[raw_smp_processor_id];
+ entry1 = newinfo->entries;
//# pattern-12, witnesses: 3
@@
identifier table;
identifier total_size;
identifier userptr;
@@
 int compat_copy_entries_to_user(unsigned int total_size, struct xt_table * table, void * userptr)
 {
     <...
- void * loc_cpu_entry = loc_cpu_entry;
- loc_cpu_entry = private->entries[raw_smp_processor_id];
     ...>
 }
//# pattern-6, witnesses: 2
@@
@@
- const void * table_base = table_base;
- table_base = private->entries[smp_processor_id];
- root = get_entry(table_base, private->hook_entry[hook]);
+ root = get_entry(private->entries, private->hook_entry[hook]);
