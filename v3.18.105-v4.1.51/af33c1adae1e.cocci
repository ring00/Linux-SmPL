//# pattern-3, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
typedef __be16;
typedef __be32;
typedef __u8;
typedef bool;
identifier df;
identifier dst;
identifier dst_port;
identifier md;
identifier rt;
identifier skb;
identifier src;
identifier src_port;
identifier tos;
identifier ttl;
typedef u32;
identifier vs;
identifier xnet;
@@
- int vxlan_xmit_skb(struct vxlan_sock * vs, struct rtable * rt, struct sk_buff * skb, __be32 src, __be32 dst, __u8 tos, __u8 ttl, __be16 df, __be16 src_port, __be16 dst_port, struct vxlan_metadata * md, bool xnet)
+ int vxlan_xmit_skb(struct rtable * rt, struct sk_buff * skb, __be32 src, __be32 dst, __u8 tos, __u8 ttl, __be16 df, __be16 src_port, __be16 dst_port, struct vxlan_metadata * md, bool xnet, u32 vxflags)
 {
     <...
- vs->sock->sk->sk_no_check_tx
+ !vxflags & VXLAN_F_UDP_CSUM
     ...>
 }
//# pattern-4, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
typedef __be16;
typedef __be32;
typedef __u8;
typedef bool;
identifier df;
identifier dst;
identifier dst_port;
identifier md;
identifier rt;
identifier skb;
identifier src;
identifier src_port;
identifier tos;
identifier ttl;
typedef u32;
identifier vxflags;
identifier xnet;
@@
 int vxlan_xmit_skb(struct rtable * rt, struct sk_buff * skb, __be32 src, __be32 dst, __u8 tos, __u8 ttl, __be16 df, __be16 src_port, __be16 dst_port, struct vxlan_metadata * md, bool xnet, u32 vxflags)
 {
     <...
- vs->flags & E0
+ vxflags & E0
     ...>
 }
//# pattern-11, witnesses: 2
@@
expression E0;
@@
- E0->vn_sock
+ E0->flags
