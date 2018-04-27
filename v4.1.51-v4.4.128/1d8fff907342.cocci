//# pattern-3, witnesses: 10
@@
expression E0;
@@
- E0->tunnel
+ E0->key
//# pattern-2, witnesses: 3
@r0@
identifier i, fn;
@@
struct vport_ops i = {
    .get_egress_tun_info = fn,
};
@@
identifier egress_tun_info;
identifier r0.fn;
identifier skb;
identifier vport;
@@
- int fn(struct vport * vport, struct sk_buff * skb, struct ovs_tunnel_info * egress_tun_info)
+ int fn(struct vport * vport, struct sk_buff * skb, struct ip_tunnel_info * egress_tun_info)
 { ... }
//# pattern-4, witnesses: 3
@@
expression list listE0;
@@
- ovs_flow_tun_info_init(listE0)
+ ip_tunnel_info_init(listE0)
