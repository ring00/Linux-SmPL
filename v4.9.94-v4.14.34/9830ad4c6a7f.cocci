//# pattern-9, witnesses: 4
@@
expression E0;
expression E5;
expression IL1;
expression IL2;
expression IL3;
expression IL4;
@@
- E0 + nla_total_size(IL1) + nla_total_size(IL2) + nla_total_size(IL3) + nla_total_size(IL4) + E5
+ E0 + nla_total_size(IL1) + nla_total_size(IL2) + nla_total_size(IL3) + nla_total_size(IL4) + nla_total_size(4) + E5
//# pattern-3, witnesses: 3
@@
expression E0;
expression E1;
expression E3;
expression E4;
expression ME2;
@@
- init_tunnel_flow(&fl4, E0, E1, ME2, E3, RT_TOS(E4), tunnel->parms.link)
+ init_tunnel_flow(&fl4, E0, E1, ME2, E3, RT_TOS(E4), tunnel->parms.link, tunnel->fwmark)
//# pattern-13, witnesses: 3
@@
identifier s;
@@
 const struct nla_policy [21] s = {
+    . = ,
 };
//# pattern-6, witnesses: 2
@r0@
identifier i, fn;
@@
struct rtnl_link_ops i = {
    .fill_info = fn,
};
@@
expression E0;
expression E12;
expression E9;
expression EC1;
expression EC11;
expression EC4;
expression EC6;
expression EC8;
expression F10;
expression F3;
expression ME2;
expression ME5;
expression ME7;
statement S13;
identifier dev;
identifier r0.fn;
identifier skb;
@@
 int fn(struct sk_buff * skb, const struct net_device * dev)
 {
     <...
- if (E0 || nla_put_in_addr(skb, EC1, ME2) || F3(skb, EC4, ME5) || nla_put_u8(skb, EC6, ME7) || nla_put_u8(skb, EC8, E9) || nla_put_u8(skb, IFLA_IPTUN_PROTO, parm->iph.protocol) || F10(skb, EC11, E12)) { S13 }
+ if (E0 || nla_put_in_addr(skb, EC1, ME2) || F3(skb, EC4, ME5) || nla_put_u8(skb, EC6, ME7) || nla_put_u8(skb, EC8, E9) || nla_put_u8(skb, IFLA_IPTUN_PROTO, parm->iph.protocol) || F10(skb, EC11, E12) || nla_put_u32(skb, IFLA_IPTUN_FWMARK, tunnel->fwmark)) { S13 }
     ...>
 }
//# pattern-16, witnesses: 2
@@
@@
- ipgre_netlink_parms(dev, data, tb, &p)
+ ipgre_netlink_parms(dev, data, tb, &p, &fwmark)
