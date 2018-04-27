//# pattern-4, witnesses: 12
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
@@
- int fn(struct sk_buff * skb, struct Qdisc * sch)
+ int fn(struct sk_buff * skb, struct Qdisc * sch, struct sk_buff ** to_free)
 {
     <...
- qdisc_drop(skb, sch)
+ qdisc_drop(skb, sch, to_free)
     ...>
 }
//# pattern-6, witnesses: 9
@r1@
identifier i, fn;
@@
struct Qdisc_ops i = {
    .enqueue = fn,
};
@@
identifier r1.fn;
identifier sch;
identifier skb;
identifier to_free;
@@
 int fn(struct sk_buff * skb, struct Qdisc * sch, struct sk_buff ** to_free)
 {
     <...
- kfree_skb(skb)
+ __qdisc_drop(skb, to_free)
     ...>
 }
//# pattern-9, witnesses: 5
@r2@
identifier i, fn;
@@
struct Qdisc_ops i = {
    .enqueue = fn,
};
@@
expression ME0;
identifier r2.fn;
identifier sch;
identifier skb;
identifier to_free;
@@
 int fn(struct sk_buff * skb, struct Qdisc * sch, struct sk_buff ** to_free)
 {
     <...
- qdisc_enqueue(skb, ME0)
+ qdisc_enqueue(skb, ME0, to_free)
     ...>
 }
//# pattern-11, witnesses: 2
@r3@
identifier fn;
expression P0, P1, P2, P3;
@@
(varies)(P0, P1, P2, P3)
@@
identifier ctx;
identifier skb;
@@
 void drop_func(struct sk_buff * skb, void * ctx)
 {
     <...
- qdisc_drop(skb, sch);
+ kfree_skb(skb);
+ qdisc_qstats_drop(sch);
     ...>
 }
