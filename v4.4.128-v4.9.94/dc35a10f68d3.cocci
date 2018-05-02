//# pattern-4, witnesses: 3
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier pp;
@@
- void * mvneta_frag_alloc(const struct mvneta_port * pp)
+ void * mvneta_frag_alloc(unsigned int frag_size)
 {
     <...
- pp->frag_size
+ frag_size
     ...>
 }
