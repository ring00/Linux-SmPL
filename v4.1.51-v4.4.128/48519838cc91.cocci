//# pattern-2, witnesses: 2
@@
@@
- v4l2_subdev_notify(sd, ADV7842_FMT_CHANGE, NULL)
+ v4l2_subdev_notify(sd, V4L2_DEVICE_NOTIFY_EVENT, &adv7842_ev_fmt)
