//# pattern-1, witnesses: 3
@@
expression list listE0;
@@
- unsigned long pcnt = pcnt;
- pcnt = xt_percpu_counter_alloc(listE0);
- if (IS_ERR_VALUE(pcnt)) {
- }
+ if (!xt_percpu_counter_alloc(&e->counters)) {
+ }
//# pattern-2, witnesses: 3
@@
expression list listE0;
@@
- unsigned long pcnt = pcnt;
- pcnt = xt_percpu_counter_alloc(listE0);
- e->counters.pcnt = pcnt;
