//# pattern-1, witnesses: 7
@@
expression E0;
expression E1;
identifier arg;
identifier fn;
identifier new;
identifier old;
identifier sch;
@@
 int fn(struct Qdisc * sch, unsigned long arg, struct Qdisc * new, struct Qdisc ** old)
 {
     <...
- sch_tree_lock(sch);
- *old = E0;
- E1 = new;
- qdisc_tree_decrease_qlen(*old, *old->q.qlen);
- qdisc_reset(*old);
- sch_tree_unlock(sch);
+ *old = qdisc_replace(sch, new, &E1);
     ...>
 }
//# pattern-3, witnesses: 2
@@
expression E2;
expression ME0;
expression ME1;
identifier arg;
identifier fn;
identifier new;
identifier old;
identifier sch;
@@
 int fn(struct Qdisc * sch, unsigned long arg, struct Qdisc * new, struct Qdisc ** old)
 {
     <...
- sch_tree_lock(sch);
- *old = ME0;
- ME1 = new;
- if (E2) {
- qdisc_tree_decrease_qlen(*old, *old->q.qlen);
- qdisc_reset(*old);
- }
- sch_tree_unlock(sch);
+ *old = qdisc_replace(sch, new, &ME1);
     ...>
 }
//# pattern-4, witnesses: 2
@r0@
identifier i, fn;
@@
struct Qdisc_class_ops i = {
    .graft = fn,
};
@@
identifier arg;
identifier new;
identifier old;
identifier r0.fn;
identifier sch;
@@
 int fn(struct Qdisc * sch, unsigned long arg, struct Qdisc * new, struct Qdisc ** old)
 {
     <...
- sch_tree_lock(sch);
- cl;
- *old = cl->qdisc;
- cl->qdisc = new;
- sch_tree_unlock(sch);
+ *old = qdisc_replace(sch, new, &cl->qdisc);
     ...>
 }
