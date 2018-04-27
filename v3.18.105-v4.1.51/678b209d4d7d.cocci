//# pattern-11, witnesses: 2
@r0@
identifier i, fn;
@@
struct Qdisc_ops i = {
    .change = fn,
};
@@
identifier opt;
identifier r0.fn;
identifier sch;
@@
 int fn(struct Qdisc * sch, struct nlattr * opt)
 {
     <...
- unsigned int qlen = qlen;
+ unsigned int qlen = qlen;
     ...>
 }
//# pattern-12, witnesses: 2
@r1@
identifier i, fn;
@@
struct Qdisc_ops i = {
    .change = fn,
};
@@
identifier opt;
identifier r1.fn;
identifier sch;
@@
 int fn(struct Qdisc * sch, struct nlattr * opt)
 {
     <...
- unsigned int qlen = qlen;
- qdisc_tree_decrease_qlen(sch, qlen - sch->q.qlen);
+ unsigned int qlen = qlen;
+ qdisc_tree_reduce_backlog(sch, qlen - sch->q.qlen, dropped);
     ...>
 }
//# pattern-13, witnesses: 2
@@
@@
- qdisc_tree_decrease_qlen(sch, 1)
+ qdisc_tree_reduce_backlog(sch, 1, qdisc_pkt_len(skb))
//# pattern-15, witnesses: 2
@@
@@
- qdisc_tree_decrease_qlen(child, child->q.qlen)
+ qdisc_tree_reduce_backlog(child, child->q.qlen, child->qstats.backlog)
//# pattern-22, witnesses: 2
@@
@@
- qdisc_tree_decrease_qlen(old, old->q.qlen)
+ qdisc_tree_reduce_backlog(old, old->q.qlen, old->qstats.backlog)
