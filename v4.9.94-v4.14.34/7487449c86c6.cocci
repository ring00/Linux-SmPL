//# pattern-2, witnesses: 7
@r0@
identifier i, fn;
@@
struct net_protocol i = {
    .early_demux = fn,
};
@@
identifier r0.fn;
identifier skb;
@@
- void fn(struct sk_buff * skb)
+ int fn(struct sk_buff * skb)
 {
     <...
- return;
+ return 0;
     ...>
 }
//# pattern-1, witnesses: 2
@r1@
identifier i, fn;
@@
struct net_protocol i = {
    .early_demux = fn,
};
@@
identifier r1.fn;
identifier skb;
@@
 int fn(struct sk_buff * skb)
 {
     ...
+ return 0;
 }
