//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
identifier flags;
typedef gfp_t;
identifier optslen;
identifier r0.fn;
typedef u8;
@@
- struct metadata_dst * fn(u8 optslen, gfp_t flags)
+ struct metadata_dst * fn(u8 optslen, enum metadata_type type, gfp_t flags)
 {
     <...
- __metadata_dst_init(E0, optslen)
+ __metadata_dst_init(E0, type, optslen)
     ...>
 }
//# pattern-4, witnesses: 2
@@
expression E0;
expression E1;
@@
- metadata_dst_alloc(E0, E1)
+ metadata_dst_alloc(E0, METADATA_IP_TUNNEL, E1)
