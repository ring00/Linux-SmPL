//# pattern-2, witnesses: 3
@@
statement S0;
@@
- if (vdev->debug) { S0 }
+ if (vdev->dev_debug & V4L2_DEV_DEBUG_FOP) { S0 }
//# pattern-4, witnesses: 2
@@
statement S0;
@@
- if (vdev->debug) { S0 }
+ if (vdev->dev_debug & V4L2_DEV_DEBUG_FOP && vdev->dev_debug & V4L2_DEV_DEBUG_STREAMING) { S0 }
