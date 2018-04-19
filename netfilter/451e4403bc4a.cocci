//# pattern-1, witnesses: 3
@@
@@
- xt_compat_check_entry_offsets(e, e->target_offset, e->next_offset)
+ xt_compat_check_entry_offsets(e, e->elems, e->target_offset, e->next_offset)
//# pattern-2, witnesses: 3
@@
@@
- xt_check_entry_offsets(e, e->target_offset, e->next_offset)
+ xt_check_entry_offsets(e, e->elems, e->target_offset, e->next_offset)
