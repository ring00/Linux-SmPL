//# pattern-1, witnesses: 3
@@
@@
- preempt_enable;
//# pattern-2, witnesses: 3
@@
@@
- preempt_disable;
//# pattern-4, witnesses: 2
@@
@@
- struct list_head actions = LIST_HEAD(actions);
- tcf_exts_to_list(f->exts, &actions);
+ tcf_exts_stats_update(f->exts, bytes, packets, lastuse);
//# pattern-5, witnesses: 2
@@
@@
- struct tc_action * a = a;
- struct list_head actions = LIST_HEAD(actions);
