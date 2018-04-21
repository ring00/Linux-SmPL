//# pattern-4, witnesses: 2
@@
@@
- if (destroy_mark) {
- fsnotify_destroy_mark_locked(fsn_mark, group);
- }
+ if (destroy_mark) {
+ fsnotify_detach_mark(fsn_mark);
+ }
+ if (destroy_mark) {
+ fsnotify_free_mark(fsn_mark);
+ }
