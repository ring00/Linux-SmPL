//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier len;
identifier offset;
identifier r0.fn;
identifier sg;
identifier skb;
@@
 int fn(struct sk_buff * skb, struct scatterlist * sg, int offset, int len)
 {
     <...
- __skb_to_sgvec(skb, sg, offset, len)
+ __skb_to_sgvec(skb, sg, offset, len, 0)
     ...>
 }
