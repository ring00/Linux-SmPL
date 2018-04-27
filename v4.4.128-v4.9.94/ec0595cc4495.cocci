//# pattern-3, witnesses: 20
@@
@@
- tcfc_head
+ tcfa_head
//# pattern-2, witnesses: 5
@@
expression E0;
@@
- E0->tcfc_bindcnt
+ E0->tcfa_bindcnt
//# pattern-19, witnesses: 4
@@
expression E0;
@@
- E0->tcfc_refcnt
+ E0->tcfa_refcnt
//# pattern-27, witnesses: 4
@@
expression E0;
@@
- E0->tcfc_lock
+ E0->tcfa_lock
//# pattern-25, witnesses: 3
@@
expression E0;
@@
- E0->tcfc_tm
+ E0->tcfa_tm
//# pattern-4, witnesses: 2
@@
expression E0;
@@
- E0->tcfc_bstats
+ E0->tcfa_bstats
//# pattern-8, witnesses: 2
@@
@@
- tcfc_rcu
+ tcfa_rcu
//# pattern-10, witnesses: 2
@@
expression E0;
@@
- E0->tcfc_rate_est
+ E0->tcfa_rate_est
//# pattern-14, witnesses: 2
@@
expression E0;
@@
- E0 = &p->tcfc_act
+ E0 = p
//# pattern-23, witnesses: 2
@@
expression E0;
@@
- E0->tcfc_index
+ E0->tcfa_index
