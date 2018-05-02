//# pattern-1, witnesses: 5
@r0@
identifier i, fn;
@@
struct consw i = {
    .con_set_palette = fn,
};
@@
identifier c;
identifier r0.fn;
identifier table;
@@
- int fn(struct vc_data * c, unsigned char * table)
+ int fn(struct vc_data * c, const unsigned char * table)
 { ... }
