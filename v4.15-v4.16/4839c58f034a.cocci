//# pattern-2, witnesses: 4
@@
@@
- VFL_TYPE_RADIO
+ VFL_TYPE_RADIO
//# pattern-11, witnesses: 2
@r0@
identifier i, fn;
@@
struct v4l2_ioctl_ops i = {
    .vidioc_querycap = fn,
};
@@
identifier cap;
identifier file;
identifier priv;
@@
 int vidioc_querycap(struct file * file, void * priv, struct v4l2_capability * cap)
 {
     <...
- cx88_querycap(file, core, cap);
- return 0;
+ return cx88_querycap(file, core, cap);
     ...>
 }
