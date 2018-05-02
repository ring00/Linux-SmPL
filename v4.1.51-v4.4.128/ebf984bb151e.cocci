//# pattern-21, witnesses: 3
@@
@@
- v4l2_subdev_call(sd, )
+ v4l2_subdev_call(sd, , )
//# pattern-27, witnesses: 3
@@
expression ME1;
expression V0;
@@
- struct v4l2_mbus_framefmt  = V0;
- v4l2_subdev_call(ME1, );
+ struct v4l2_subdev_format format = ;
+ v4l2_subdev_call(ME1, , );
//# pattern-28, witnesses: 3
@@
expression V0;
expression V1;
@@
- struct v4l2_mbus_framefmt  = V0;
- V1.code = MEDIA_BUS_FMT_FIXED;
+ struct v4l2_subdev_format format = ;
+ format.format.code = MEDIA_BUS_FMT_FIXED;
//# pattern-4, witnesses: 2
@@
identifier f;
identifier file;
identifier fn;
identifier priv;
@@
 int fn(struct file * file, void * priv, struct v4l2_format * f)
 {
     <...
- struct v4l2_mbus_framefmt mbus_fmt = mbus_fmt;
- v4l2_fill_pix_format(&f->fmt.pix, &mbus_fmt);
+ struct v4l2_subdev_format format = ;
+ v4l2_fill_pix_format(&f->fmt.pix, &format.format);
     ...>
 }
//# pattern-6, witnesses: 2
@@
identifier f;
identifier file;
identifier fn;
identifier priv;
@@
 int fn(struct file * file, void * priv, struct v4l2_format * f)
 {
     <...
- struct v4l2_mbus_framefmt mbus_fmt = mbus_fmt;
- v4l2_fill_mbus_format(&mbus_fmt, &f->fmt.pix, MEDIA_BUS_FMT_FIXED);
+ struct v4l2_subdev_format format = ;
+ v4l2_fill_mbus_format(&format.format, &f->fmt.pix, MEDIA_BUS_FMT_FIXED);
     ...>
 }
//# pattern-40, witnesses: 2
@@
expression E0;
@@
- mf.code != E0
+ mf->code != E0
//# pattern-42, witnesses: 2
@@
@@
- v4l2_device_call_until_err(&vou_dev->v4l2_dev, 0, )
+ v4l2_device_call_until_err(&vou_dev->v4l2_dev, 0, , )
