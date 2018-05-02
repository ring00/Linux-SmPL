//# pattern-5, witnesses: 6
@r0@
identifier i, fn;
@@
struct dsa_switch_ops i = {
    .get_tag_protocol = fn,
};
@@
identifier ds;
identifier r0.fn;
@@
- enum dsa_tag_protocol fn(struct dsa_switch * ds)
+ enum dsa_tag_protocol fn(struct dsa_switch * ds, int port)
 { ... }
