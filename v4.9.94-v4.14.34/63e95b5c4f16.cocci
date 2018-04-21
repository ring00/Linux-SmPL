//# pattern-1, witnesses: 2
@@
expression EC0;
identifier fn;
identifier index;
identifier mapping;
@@
 int fn(struct address_space * mapping, unsigned long index)
 {
     <...
- dax_wake_mapping_entry_waiter(mapping, index, EC0)
+ dax_wake_mapping_entry_waiter(mapping, index, entry, EC0)
     ...>
 }
//# pattern-7, witnesses: 2
@@
expression E0;
@@
- E0->index
+ E0->entry_start
