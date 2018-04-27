//# pattern-2, witnesses: 4
@@
expression EC0;
expression EC2;
expression ME1;
@@
- if (tb[EC0]) {
- ME1 = nla_get_be16(tb[EC2]);
- }
//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct lwtunnel_encap_ops i = {
    .fill_encap = fn,
};
@@
expression E11;
expression E3;
expression E6;
expression EC0;
expression EC10;
expression EC2;
expression EC5;
expression EC7;
expression EC8;
expression EC9;
expression F1;
expression F4;
identifier lwtstate;
identifier r0.fn;
identifier skb;
@@
 int fn(struct sk_buff * skb, struct lwtunnel_state * lwtstate)
 {
     <...
- nla_put_u64(skb, EC0, tun_info->key.tun_id) || F1(skb, EC2, E3) || F4(skb, EC5, E6) || nla_put_u8(skb, EC7, tun_info->key.tos) || nla_put_u8(skb, EC8, tun_info->key.ttl) || nla_put_u16(skb, EC9, tun_info->key.tp_src) || nla_put_u16(skb, EC10, tun_info->key.tp_dst) || E11
+ nla_put_u64(skb, EC0, tun_info->key.tun_id) || F1(skb, EC2, E3) || F4(skb, EC5, E6) || nla_put_u8(skb, EC7, tun_info->key.tos) || nla_put_u8(skb, EC8, tun_info->key.ttl) || E11
     ...>
 }
//# pattern-3, witnesses: 2
@@
expression IL0;
expression IL1;
@@
- return nla_total_size(8) + nla_total_size(IL0) + nla_total_size(IL1) + nla_total_size(1) + nla_total_size(1) + nla_total_size(2) + nla_total_size(2) + nla_total_size(2);
+ return nla_total_size(8) + nla_total_size(IL0) + nla_total_size(IL1) + nla_total_size(1) + nla_total_size(1) + nla_total_size(2);
//# pattern-4, witnesses: 2
@@
identifier s;
@@
- const struct nla_policy [9] s = {
+ const struct nla_policy [7] s = {
-    . = ,
-    . = ,
 };
