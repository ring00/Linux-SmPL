//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier dst_orig;
identifier fl;
identifier flags;
identifier net;
identifier r0.fn;
identifier sk;
@@
- struct dst_entry * fn(struct net * net, struct dst_entry * dst_orig, const struct flowi * fl, struct sock * sk, int flags)
+ struct dst_entry * fn(struct net * net, struct dst_entry * dst_orig, const struct flowi * fl, const struct sock * sk, int flags)
 { ... }
