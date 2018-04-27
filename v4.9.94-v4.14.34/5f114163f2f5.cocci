//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct offload_callbacks i = {
    .gro_receive = fn,
};
@@
identifier head;
identifier r0.fn;
identifier skb;
@@
 struct sk_buff ** fn(struct sk_buff ** head, struct sk_buff * skb)
 { ... }
