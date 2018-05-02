//# pattern-1, witnesses: 14
@r0@
identifier i, fn;
@@
struct kernel_param_ops i = {
    .set = fn,
};
@@
identifier kp;
identifier r0.fn;
identifier val;
@@
- int fn(const char * val, struct kernel_param * kp)
+ int fn(const char * val, const struct kernel_param * kp)
 { ... }
//# pattern-2, witnesses: 5
@r1@
identifier i, fn;
@@
struct kernel_param_ops i = {
    .get = fn,
};
@@
identifier buffer;
identifier kp;
identifier r1.fn;
@@
- int fn(char * buffer, struct kernel_param * kp)
+ int fn(char * buffer, const struct kernel_param * kp)
 { ... }
