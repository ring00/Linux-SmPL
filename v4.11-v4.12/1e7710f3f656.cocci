//# pattern-3, witnesses: 4
@@
typedef __u64;
identifier counter;
identifier element;
identifier event;
identifier file;
identifier obj_list;
@@
 void ib_uverbs_async_handler(struct ib_uverbs_file * file, __u64 element, __u64 event, struct list_head * obj_list, u32 * counter)
 {
     <...
- &file->async_file->lock
+ &file->async_file->ev_file.lock
     ...>
 }
//# pattern-15, witnesses: 2
@@
identifier file;
identifier uobj;
@@
 void ib_uverbs_release_uevent(struct ib_uverbs_file * file, struct ib_uevent_object * uobj)
 {
     <...
- &file->async_file->lock
+ &file->async_file->ev_file.lock
     ...>
 }
//# pattern-27, witnesses: 2
@@
@@
- ib_uverbs_release_event_file
+ ib_uverbs_release_async_event_file
