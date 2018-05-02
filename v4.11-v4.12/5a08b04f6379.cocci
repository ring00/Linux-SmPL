//# pattern-6, witnesses: 5
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier _vq;
identifier len;
@@
 void * virtqueue_get_buf(struct virtqueue * _vq, unsigned int * len)
 {
     <...
- struct vring_virtqueue * vq = to_vvq(_vq);
     ...>
 }
//# pattern-1, witnesses: 3
@@
expression E1;
expression E2;
expression E3;
expression E4;
identifier PV0;
@@
- virtqueue_add(PV0, E1, E2, E3, E4, data, gfp)
+ virtqueue_add(PV0, E1, E2, E3, E4, data, NULL, gfp)
//# pattern-7, witnesses: 3
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E3;
type T0;
expression V1;
expression V2;
identifier _vq;
identifier len;
@@
 void * virtqueue_get_buf(struct virtqueue * _vq, unsigned int * len)
 {
     <...
- struct vring_virtqueue * vq = to_vvq(_vq);
- T0  = V1;
- V2 = E3;
     ...>
 }
