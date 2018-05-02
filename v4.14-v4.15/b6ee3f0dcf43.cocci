//# pattern-2, witnesses: 2
@@
@@
- sasc->notifier.bound = soc_camera_async_bound;
- sasc->notifier.unbind = soc_camera_async_unbind;
- sasc->notifier.complete = soc_camera_async_complete;
+ sasc->notifier.ops = &soc_camera_async_ops;
//# pattern-10, witnesses: 2
@@
@@
- vpif_obj.notifier.bound = vpif_async_bound;
- vpif_obj.notifier.complete = vpif_async_complete;
+ vpif_obj.notifier.ops = &vpif_async_ops;
