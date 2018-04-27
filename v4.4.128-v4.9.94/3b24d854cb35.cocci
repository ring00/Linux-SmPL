//# pattern-3, witnesses: 2
@@
expression F1;
expression ME3;
expression ME4;
expression V0;
expression V2;
identifier fn;
identifier skb;
@@
 int fn(struct sk_buff * skb)
 {
     <...
- __inet_lookup_skb(&V0, skb, F1(V2), ME3, ME4)
+ __inet_lookup_skb(&V0, skb, F1(V2), ME3, ME4, &refcounted)
     ...>
 }
//# pattern-8, witnesses: 2
@r0@
identifier i, fn;
@@
struct inet6_protocol i = {
    .handler = fn,
};
@@
expression F1;
expression ME3;
expression ME4;
expression V0;
expression V2;
identifier r0.fn;
identifier skb;
@@
 int fn(struct sk_buff * skb)
 {
     <...
- __inet6_lookup_skb(&V0, skb, F1(V2), ME3, ME4, inet6_iif(skb))
+ __inet6_lookup_skb(&V0, skb, F1(V2), ME3, ME4, inet6_iif(skb), &refcounted)
     ...>
 }
