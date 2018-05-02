//# pattern-9, witnesses: 4
@@
expression E0;
expression IL1;
@@
- if (E0) {
- return -IL1;
- }
//# pattern-16, witnesses: 4
@r0@
identifier i, fn;
@@
struct v4l2_ioctl_ops i = {
    .vidioc_g_tuner = fn,
};
@@
expression E0;
identifier file;
identifier priv;
identifier v;
@@
- int vidioc_g_tuner(struct file * file, void * priv, struct v4l2_tuner * v)
+ int vidioc_g_tuner(struct file * file, void * priv, struct v4l2_tuner * v)
 {
     <...
- struct v4l2_frequency_band band_fm = ;
- E0;
     ...>
 }
