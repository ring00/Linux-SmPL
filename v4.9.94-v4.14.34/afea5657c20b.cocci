//# pattern-1, witnesses: 4
@@
identifier s;
@@
- struct svc_serv_ops s = {
+ const struct svc_serv_ops s = {
 };
//# pattern-3, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier bufsize;
identifier ops;
identifier prog;
identifier r0.fn;
@@
- struct svc_serv * fn(struct svc_program * prog, unsigned int bufsize, struct svc_serv_ops * ops)
+ struct svc_serv * fn(struct svc_program * prog, unsigned int bufsize, const struct svc_serv_ops * ops)
 { ... }
