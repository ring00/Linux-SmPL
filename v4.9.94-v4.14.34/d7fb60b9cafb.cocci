//# pattern-1, witnesses: 2
@@
identifier PV0;
@@
- call_rcu(&PV0->tcfa_rcu, free_tcf)
+ free_tcf(PV0)
