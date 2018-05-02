//# pattern-41, witnesses: 5
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
expression IL1;
identifier eb;
identifier q;
@@
 int vb2_expbuf(struct vb2_queue * q, struct v4l2_exportbuffer * eb)
 {
     <...
- if (E0) {
- dprintk(1);
- return -IL1;
- }
     ...>
 }
//# pattern-3, witnesses: 2
@@
expression list listE0;
@@
- vb2_internal_streamoff(listE0)
+ vb2_core_streamoff(listE0)
//# pattern-22, witnesses: 2
@@
expression list listE0;
@@
- __buffer_in_use(listE0)
+ vb2_buffer_in_use(listE0)
//# pattern-34, witnesses: 2
@@
expression list listE0;
@@
- __verify_memory_type(listE0)
+ vb2_verify_memory_type(listE0)
//# pattern-39, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E3;
expression E4;
type T0;
expression V1;
expression V2;
identifier eb;
identifier q;
@@
 int vb2_expbuf(struct vb2_queue * q, struct v4l2_exportbuffer * eb)
 {
     <...
- T0  = V1;
- V2 = E3;
- if (E4) {
- dprintk;
- return -EINVAL;
- }
     ...>
 }
//# pattern-44, witnesses: 2
@@
expression list listE0;
@@
- vb2_internal_streamon(listE0)
+ vb2_core_streamon(listE0)
