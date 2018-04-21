//# pattern-1, witnesses: 2
@@
identifier fd;
identifier group;
@@
 struct fanotify_perm_event_info * dequeue_event(struct fsnotify_group * group, int fd)
 {
     <...
- &group->fanotify_data.access_lock
+ &group->notification_lock
     ...>
 }
//# pattern-2, witnesses: 2
@@
@@
- &group->fanotify_data.access_lock
+ &group->notification_lock
//# pattern-3, witnesses: 2
@@
@@
- &group->fanotify_data.access_lock;
