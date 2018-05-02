//# pattern-1, witnesses: 16
@@
expression E0;
identifier fh;
identifier fn;
identifier subdev;
@@
 int fn(struct v4l2_subdev * subdev, struct v4l2_subdev_fh * fh)
 {
     <...
- v4l2_subdev_get_try_format(fh, E0)
+ v4l2_subdev_get_try_format(subdev, fh->pad, E0)
     ...>
 }
//# pattern-9, witnesses: 10
@r0@
identifier i, fn;
@@
struct v4l2_subdev_pad_ops i = {
    .set_fmt = fn,
};
@@
expression E0;
identifier fh;
identifier fmt;
identifier r0.fn;
identifier sd;
@@
- int fn(struct v4l2_subdev * sd, struct v4l2_subdev_fh * fh, struct v4l2_subdev_format * fmt)
+ int fn(struct v4l2_subdev * sd, struct v4l2_subdev_pad_config * cfg, struct v4l2_subdev_format * fmt)
 {
     <...
- v4l2_subdev_get_try_format(fh, E0)
+ v4l2_subdev_get_try_format(sd, cfg, E0)
     ...>
 }
//# pattern-32, witnesses: 10
@r1@
identifier i, fn;
@@
struct v4l2_subdev_pad_ops i = {
    .enum_mbus_code = fn,
};
@@
identifier code;
identifier fh;
identifier r1.fn;
identifier sd;
@@
- int fn(struct v4l2_subdev * sd, struct v4l2_subdev_fh * fh, struct v4l2_subdev_mbus_code_enum * code)
+ int fn(struct v4l2_subdev * sd, struct v4l2_subdev_pad_config * cfg, struct v4l2_subdev_mbus_code_enum * code)
 { ... }
//# pattern-2, witnesses: 9
@r2@
identifier i, fn;
@@
struct v4l2_subdev_pad_ops i = {
    .get_fmt = fn,
};
@@
expression E0;
identifier cfg;
identifier fmt;
identifier r2.fn;
identifier sd;
@@
 int fn(struct v4l2_subdev * sd, struct v4l2_subdev_pad_config * cfg, struct v4l2_subdev_format * fmt)
 {
     <...
- v4l2_subdev_get_try_format(fh, E0)
+ v4l2_subdev_get_try_format(sd, cfg, E0)
     ...>
 }
//# pattern-21, witnesses: 6
@@
expression IL0;
identifier fh;
identifier fn;
identifier subdev;
@@
 int fn(struct v4l2_subdev * subdev, struct v4l2_subdev_fh * fh)
 {
     <...
- v4l2_subdev_get_try_crop(fh, IL0)
+ v4l2_subdev_get_try_crop(subdev, fh->pad, IL0)
     ...>
 }
//# pattern-25, witnesses: 6
@r3@
identifier i, fn;
@@
struct v4l2_subdev_pad_ops i = {
    .enum_mbus_code = fn,
};
@@
identifier cfg;
identifier code;
identifier r3.fn;
identifier sd;
@@
 int fn(struct v4l2_subdev * sd, struct v4l2_subdev_pad_config * cfg, struct v4l2_subdev_mbus_code_enum * code)
 { ... }
//# pattern-19, witnesses: 5
@r4@
identifier i, fn;
@@
struct v4l2_subdev_pad_ops i = {
    .enum_frame_size = fn,
};
@@
identifier fh;
identifier fse;
identifier r4.fn;
identifier sd;
@@
- int fn(struct v4l2_subdev * sd, struct v4l2_subdev_fh * fh, struct v4l2_subdev_frame_size_enum * fse)
+ int fn(struct v4l2_subdev * sd, struct v4l2_subdev_pad_config * cfg, struct v4l2_subdev_frame_size_enum * fse)
 { ... }
//# pattern-11, witnesses: 3
@r5@
identifier i, fn;
@@
struct v4l2_subdev_pad_ops i = {
    .enum_frame_size = fn,
};
@@
identifier cfg;
identifier fse;
identifier r5.fn;
identifier subdev;
@@
 int fn(struct v4l2_subdev * subdev, struct v4l2_subdev_pad_config * cfg, struct v4l2_subdev_frame_size_enum * fse)
 { ... }
//# pattern-57, witnesses: 3
@r6@
identifier i, fn;
@@
struct v4l2_subdev_pad_ops i = {
    .enum_frame_interval = fn,
};
@@
identifier fh;
identifier fie;
identifier r6.fn;
identifier sd;
@@
- int fn(struct v4l2_subdev * sd, struct v4l2_subdev_fh * fh, struct v4l2_subdev_frame_interval_enum * fie)
+ int fn(struct v4l2_subdev * sd, struct v4l2_subdev_pad_config * cfg, struct v4l2_subdev_frame_interval_enum * fie)
 { ... }
//# pattern-48, witnesses: 2
@r7@
identifier i, fn;
@@
struct v4l2_subdev_pad_ops i = {
    .set_selection = fn,
};
@@
expression IL0;
identifier fh;
identifier sd;
identifier sel;
@@
- int s5k5baf_set_selection(struct v4l2_subdev * sd, struct v4l2_subdev_fh * fh, struct v4l2_subdev_selection * sel)
+ int s5k5baf_set_selection(struct v4l2_subdev * sd, struct v4l2_subdev_pad_config * cfg, struct v4l2_subdev_selection * sel)
 {
     <...
- v4l2_subdev_get_try_crop(fh, IL0)
+ v4l2_subdev_get_try_crop(sd, cfg, IL0)
     ...>
 }
