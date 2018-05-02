//# pattern-5, witnesses: 12
@@
expression F1;
identifier s;
@@
 struct v4l2_subdev_video_ops s = {
-    .g_mbus_fmt = F1,
 };
//# pattern-1, witnesses: 3
@@
expression F1;
expression F2;
expression F3;
identifier s;
@@
 struct v4l2_subdev_video_ops s = {
-    .g_mbus_fmt = F1,
-    .try_mbus_fmt = F2,
-    .s_mbus_fmt = F3,
 };
