//# pattern-2, witnesses: 2
@@
@@
- fsnotify_set_mark_ignored_mask_locked(fsn_mark, tmask);
+ fsn_mark->ignored_mask = tmask;
//# pattern-3, witnesses: 2
@@
@@
- fsnotify_set_mark_mask_locked(fsn_mark, tmask);
+ fsn_mark->mask = tmask;
