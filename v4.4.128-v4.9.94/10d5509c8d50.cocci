//# pattern-4, witnesses: 8
@@
expression F1;
expression F2;
expression F3;
identifier s;
@@
 struct v4l2_subdev_video_ops s = {
-    .cropcap = F1,
-    .g_crop = F2,
-    .s_crop = F3,
 };
//# pattern-7, witnesses: 6
@@
expression F1;
expression F2;
identifier s;
@@
 struct v4l2_subdev_video_ops s = {
-    .cropcap = F1,
-    .g_crop = F2,
 };
//# pattern-9, witnesses: 3
@@
@@
- struct v4l2_crop a = ;
+ struct v4l2_subdev_selection sel = ;
