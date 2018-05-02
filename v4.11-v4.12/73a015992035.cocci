//# pattern-1, witnesses: 2
@@
expression F0;
identifier file;
identifier fn;
identifier i;
identifier priv;
@@
 int fn(struct file * file, void * priv, enum v4l2_buf_type i)
 {
     <...
- struct soc_camera_host * ici = to_soc_camera_host(icd->parent);
- if (ici->ops->init_videobuf) {
- ret = &icd->vb_vidq;
- }
+ ret = F0(&icd->vb2_vidq, i);
     ...>
 }
//# pattern-4, witnesses: 2
@@
@@
- struct soc_camera_host * ici = to_soc_camera_host(icd->parent);
- if (ici->ops->init_videobuf) {
- return -ENOTTY;
- }
//# pattern-6, witnesses: 2
@@
@@
- &icd->vb2_vidq
+ &icd->vb2_vidq
//# pattern-15, witnesses: 2
@@
expression E0;
expression E1;
@@
- is_streaming(ici, icd) && E0
+ vb2_is_streaming(&E1->vb2_vidq) && E0
