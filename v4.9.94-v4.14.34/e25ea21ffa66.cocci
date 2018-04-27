//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct Qdisc_ops i = {
    .enqueue = fn,
};
@@
identifier r0.fn;
identifier sch;
identifier skb;
identifier to_free;
@@
 int fn(struct sk_buff * skb, struct Qdisc * sch, struct sk_buff ** to_free)
 { ... }
