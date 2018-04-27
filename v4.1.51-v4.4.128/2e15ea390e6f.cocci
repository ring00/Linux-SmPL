//# pattern-1, witnesses: 2
@@
@@
- ipgre_netlink_parms(data, tb, &p)
+ ipgre_netlink_parms(dev, data, tb, &p)
//# pattern-13, witnesses: 2
@r0@
identifier i, fn;
@@
struct xfrm_tunnel i = {
    .handler = fn,
};
@@
identifier skb;
@@
 int ipip_rcv(struct sk_buff * skb)
 {
     <...
- ip_tunnel_rcv(tunnel, skb, &tpi, log_ecn_error)
+ ip_tunnel_rcv(tunnel, skb, &tpi, NULL, log_ecn_error)
     ...>
 }
