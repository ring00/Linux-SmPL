//# pattern-1, witnesses: 10
@r0@
identifier i, fn;
@@
struct tcf_proto_ops i = {
    .get = fn,
};
@@
identifier handle;
identifier r0.fn;
identifier tp;
typedef u32;
@@
- unsigned long fn(struct tcf_proto * tp, u32 handle)
+ void * fn(struct tcf_proto * tp, u32 handle)
 {
     <...
- return;
+ return NULL;
     ...>
 }
//# pattern-3, witnesses: 9
@r1@
identifier i, fn;
@@
struct tcf_proto_ops i = {
    .dump = fn,
};
@@
identifier fh;
identifier net;
identifier r1.fn;
identifier skb;
identifier t;
identifier tp;
@@
- int fn(struct net * net, struct tcf_proto * tp, unsigned long fh, struct sk_buff * skb, struct tcmsg * t)
+ int fn(struct net * net, struct tcf_proto * tp, void * fh, struct sk_buff * skb, struct tcmsg * t)
 { ... }
//# pattern-4, witnesses: 9
@r2@
identifier i, fn;
@@
struct tcf_proto_ops i = {
    .delete = fn,
};
@@
identifier arg;
identifier last;
identifier r2.fn;
identifier tp;
@@
- int fn(struct tcf_proto * tp, unsigned long arg, bool * last)
+ int fn(struct tcf_proto * tp, void * arg, bool * last)
 { ... }
//# pattern-2, witnesses: 8
@r3@
identifier i, fn;
@@
struct tcf_proto_ops i = {
    .change = fn,
};
@@
identifier arg;
identifier base;
typedef bool;
identifier handle;
identifier in_skb;
identifier net;
identifier ovr;
identifier r3.fn;
identifier tca;
identifier tp;
typedef u32;
@@
- int fn(struct net * net, struct sk_buff * in_skb, struct tcf_proto * tp, unsigned long base, u32 handle, struct nlattr ** tca, unsigned long * arg, bool ovr)
+ int fn(struct net * net, struct sk_buff * in_skb, struct tcf_proto * tp, unsigned long base, u32 handle, struct nlattr ** tca, void ** arg, bool ovr)
 { ... }
