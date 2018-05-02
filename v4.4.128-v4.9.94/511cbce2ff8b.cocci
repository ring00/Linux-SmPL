//# pattern-4, witnesses: 5
@@
expression list listE0;
@@
- blk_iopoll_disable(listE0)
+ irq_poll_disable(listE0)
//# pattern-8, witnesses: 5
@@
expression list listE0;
@@
- blk_iopoll_enable(listE0)
+ irq_poll_enable(listE0)
//# pattern-2, witnesses: 4
@@
expression list listE0;
@@
- blk_iopoll_init(listE0)
+ irq_poll_init(listE0)
//# pattern-5, witnesses: 3
@@
expression list listE0;
@@
- blk_iopoll_sched_prep(listE0)
+ irq_poll_sched_prep(listE0)
//# pattern-9, witnesses: 3
@@
expression list listE0;
@@
- blk_iopoll_sched(listE0)
+ irq_poll_sched(listE0)
//# pattern-3, witnesses: 2
@r0@
identifier fn;
expression P0, P1;
@@
blk_iopoll_init(P0, P1, fn)
@@
identifier budget;
identifier iop;
identifier r0.fn;
@@
- int fn(struct blk_iopoll * iop, int budget)
+ int fn(struct irq_poll * iop, int budget)
 { ... }
//# pattern-6, witnesses: 2
@@
expression list listE0;
@@
- blk_iopoll_complete(listE0)
+ irq_poll_complete(listE0)
