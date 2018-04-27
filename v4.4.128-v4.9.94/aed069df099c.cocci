//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct net_device_ops i = {
    .ndo_start_xmit = fn,
};
@@
statement S0;
identifier dev;
typedef netdev_tx_t;
identifier r0.fn;
identifier skb;
@@
 netdev_tx_t fn(struct sk_buff * skb, struct net_device * dev)
 {
     <...
- skb = gre_handle_offloads(skb, !!tunnel->parms.o_flags & TUNNEL_CSUM);
- if (IS_ERR(skb)) { S0 }
+ if (gre_handle_offloads(skb, !!tunnel->parms.o_flags & TUNNEL_CSUM)) { S0 }
     ...>
 }
//# pattern-9, witnesses: 2
@@
expression IL0;
identifier cp;
identifier fn;
identifier ipvsh;
identifier pp;
identifier skb;
@@
 int fn(struct sk_buff * skb, struct ip_vs_conn * cp, struct ip_vs_protocol * pp, struct ip_vs_iphdr * ipvsh)
 {
     <...
- skb = iptunnel_handle_offloads(skb, __tun_gso_type_mask(IL0, cp->af));
- if (IS_ERR(skb)) {
- }
+ if (iptunnel_handle_offloads(skb, __tun_gso_type_mask(IL0, cp->af))) {
+ }
     ...>
 }
//# pattern-13, witnesses: 2
@@
expression EC0;
statement S1;
identifier dev;
identifier fn;
typedef netdev_tx_t;
identifier skb;
@@
 netdev_tx_t fn(struct sk_buff * skb, struct net_device * dev)
 {
     <...
- skb = iptunnel_handle_offloads(skb, EC0);
- if (IS_ERR(skb)) { S1 }
+ if (iptunnel_handle_offloads(skb, EC0)) { S1 }
     ...>
 }
//# pattern-19, witnesses: 2
@@
identifier dev;
identifier fn;
identifier info;
typedef netdev_tx_t;
identifier skb;
@@
 netdev_tx_t fn(struct sk_buff * skb, struct net_device * dev, struct ip_tunnel_info * info)
 {
     <...
- if (info) {
- }
+ if (info) {
+ }
     ...>
 }
