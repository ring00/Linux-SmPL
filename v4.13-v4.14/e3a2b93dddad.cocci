//# pattern-3, witnesses: 3
@r0@
identifier i, fn;
@@
struct ibnl_client_cbs i = {
    .dump = fn,
};
@@
expression E0;
statement S1;
identifier cb;
identifier r0.fn;
identifier skb;
@@
 int fn(struct sk_buff * skb, struct netlink_callback * cb)
 {
     <...
- if (E0 || !NETLINK_CB(skb).sk || !netlink_capable(skb, CAP_NET_ADMIN)) { S1 }
+ if (E0 || !NETLINK_CB(skb).sk) { S1 }
     ...>
 }
