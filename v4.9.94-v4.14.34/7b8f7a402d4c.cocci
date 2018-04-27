//# pattern-2, witnesses: 7
@@
expression E0;
expression E1;
expression E2;
expression E3;
@@
- neigh_update(E0, E1, E2, E3)
+ neigh_update(E0, E1, E2, E3, 0)
//# pattern-1, witnesses: 2
@@
expression EC0;
expression IL1;
identifier fn;
identifier neigh;
@@
 void fn(struct neighbour * neigh)
 {
     <...
- __neigh_notify(neigh, EC0, IL1)
+ __neigh_notify(neigh, EC0, IL1, 0)
     ...>
 }
//# pattern-4, witnesses: 2
@r0@
identifier fn;
expression P0, P1, P3;
@@
rtnl_register(P0, P1, fn, P3)
@@
expression E0;
expression E1;
expression E2;
identifier nlh;
identifier r0.fn;
identifier skb;
@@
 int fn(struct sk_buff * skb, struct nlmsghdr * nlh)
 {
     <...
- neigh_update(neigh, E0, E1, E2)
+ neigh_update(neigh, E0, E1, E2, NETLINK_CB(skb).portid)
     ...>
 }
