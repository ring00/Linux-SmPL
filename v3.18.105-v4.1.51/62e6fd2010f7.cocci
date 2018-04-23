//# pattern-1, witnesses: 3
@@
@@
- return 0;
+ return xt_check_entry_offsets(e, e->target_offset, e->next_offset);
//# pattern-2, witnesses: 3
@@
expression E0;
@@
- const struct xt_entry_target * t = t;
- t = E0;
- if (e->target_offset + t->u.target_size > e->next_offset) {
- return -EINVAL;
- }
//# pattern-3, witnesses: 3
@@
@@
- if (e->target_offset + sizeof(unsigned long) > e->next_offset) {
- return -EINVAL;
- }
