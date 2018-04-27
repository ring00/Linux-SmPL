//# pattern-4, witnesses: 4
@@
expression list listE0;
@@
- nla_total_size(listE0)
+ nla_total_size_64bit(listE0)
//# pattern-3, witnesses: 2
@r0@
identifier fn;
expression P1;
@@
llvm.expect.i64(fn, P1)
@@
expression EC0;
expression V1;
identifier cmd;
identifier dp;
identifier flags;
identifier portid;
identifier seq;
identifier skb;
typedef u32;
typedef u8;
@@
 int ovs_dp_cmd_fill_info(struct datapath * dp, struct sk_buff * skb, u32 portid, u32 seq, u32 flags, u8 cmd)
 {
     <...
- nla_put(skb, EC0, sizeof(unsigned long), &V1)
+ nla_put_64bit(skb, EC0, sizeof(unsigned long), &V1, OVS_DP_ATTR_PAD)
     ...>
 }
