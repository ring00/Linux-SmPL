//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct Qdisc_ops i = {
    .dump = fn,
};
@@
expression EC0;
expression ME1;
identifier sch;
identifier skb;
@@
 int tbf_dump(struct Qdisc * sch, struct sk_buff * skb)
 {
     <...
- nla_put_u64(skb, EC0, ME1.rate_bytes_ps)
+ nla_put_u64_64bit(skb, EC0, ME1.rate_bytes_ps, TCA_TBF_PAD)
     ...>
 }
//# pattern-2, witnesses: 2
@r1@
identifier i, fn;
@@
struct Qdisc_class_ops i = {
    .dump = fn,
};
@@
expression EC0;
expression ME1;
identifier arg;
identifier sch;
identifier skb;
identifier tcm;
@@
 int htb_dump_class(struct Qdisc * sch, unsigned long arg, struct sk_buff * skb, struct tcmsg * tcm)
 {
     <...
- nla_put_u64(skb, EC0, ME1.rate_bytes_ps)
+ nla_put_u64_64bit(skb, EC0, ME1.rate_bytes_ps, TCA_HTB_PAD)
     ...>
 }
