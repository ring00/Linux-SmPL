//# pattern-1, witnesses: 4
@r0@
identifier i, fn;
@@
struct genl_ops i = {
    .doit = fn,
};
@@
identifier info;
expression list listE0;
identifier r0.fn;
identifier skb;
@@
 int fn(struct sk_buff * skb, struct genl_info * info)
 {
     <...
- ovs_dp_cmd_alloc_info(info)
+ ovs_dp_cmd_alloc_info(listE0)
     ...>
 }
//# pattern-2, witnesses: 2
@@
expression ME1;
expression V0;
@@
- V0.dst_sk = ME1;
