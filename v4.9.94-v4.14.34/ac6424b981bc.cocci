//# pattern-9, witnesses: 2
@@
identifier flags;
identifier fn;
identifier key;
identifier mode;
identifier wait;
@@
- int fn(wait_queue_t * wait, unsigned int mode, int flags, void * key)
+ int fn(wait_queue_entry_t * wait, unsigned int mode, int flags, void * key)
 { ... }
