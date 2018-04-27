//# pattern-2, witnesses: 4
@@
expression EC0;
@@
- __this_cpu_write(tee_active, EC0)
+ __this_cpu_write(nf_skb_duplicated, EC0)
//# pattern-1, witnesses: 2
@@
@@
- __this_cpu_read(tee_active)
+ __this_cpu_read(nf_skb_duplicated)
