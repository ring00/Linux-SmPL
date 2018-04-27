//# pattern-1, witnesses: 2
@@
expression E0;
expression E2;
expression ME1;
@@
- ndisc_send_ns(E0->dev, NULL, &ME1, &mcaddr, E2)
+ ndisc_send_ns(E0->dev, NULL, &ME1, &mcaddr, E2, NULL)
//# pattern-3, witnesses: 2
@r0@
identifier i, fn;
@@
struct neigh_ops i = {
    .solicit = fn,
};
@@
expression E0;
expression E1;
identifier neigh;
identifier skb;
@@
 void ndisc_solicit(struct neighbour * neigh, struct sk_buff * skb)
 {
     <...
- ndisc_send_ns(dev, E0, target, E1, saddr)
+ ndisc_send_ns(dev, E0, target, E1, saddr, skb)
     ...>
 }
