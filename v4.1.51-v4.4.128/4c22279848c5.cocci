//# pattern-2, witnesses: 3
@r0@
identifier i, fn;
@@
struct vport_ops i = {
    .get_egress_tun_info = fn,
};
@@
expression E0;
expression E2;
expression E3;
expression EC1;
identifier egress_tun_info;
identifier r0.fn;
identifier skb;
identifier vport;
@@
- int fn(struct vport * vport, struct sk_buff * skb, struct ip_tunnel_info * egress_tun_info)
+ int fn(struct vport * vport, struct sk_buff * skb, struct dp_upcall_info * upcall)
 {
     <...
- ovs_tunnel_get_egress_info(egress_tun_info, E0, skb, EC1, E2, E3)
+ ovs_tunnel_get_egress_info(upcall, E0, skb, EC1, E2, E3)
     ...>
 }
//# pattern-8, witnesses: 3
@@
expression E0;
@@
- ip_tunnel_info_opts(info, E0)
+ ip_tunnel_info_opts(info)
//# pattern-7, witnesses: 2
@@
@@
- tun_info->options = NULL;
