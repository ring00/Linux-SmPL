//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct xfrm_mode i = {
    .input = fn,
};
@@
identifier r0.fn;
identifier skb;
identifier x;
@@
 int fn(struct xfrm_state * x, struct sk_buff * skb)
 {
     <...
+ struct xfrm_offload * xo = xfrm_offload(skb);
+ if (!xo || !xo->flags & XFRM_GRO) {
+ }
     ...>
 }
