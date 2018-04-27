//# pattern-6, witnesses: 3
@@
@@
- ADD_COUNTER(iter->counters);
+ struct xt_counters * tmp = tmp;
+ tmp = xt_get_this_cpu_counter(&iter->counters);
+ ADD_COUNTER(*tmp);
//# pattern-8, witnesses: 3
@@
expression E0;
@@
- E0 = iter->counters.pcnt
+ E0 = tmp->pcnt
//# pattern-11, witnesses: 3
@@
@@
- ADD_COUNTER(e->counters);
+ struct xt_counters * counter = counter;
+ counter = xt_get_this_cpu_counter(&e->counters);
+ ADD_COUNTER(*counter);
//# pattern-16, witnesses: 3
@@
expression E0;
@@
- E0 = iter->counters.bcnt
+ E0 = tmp->bcnt
