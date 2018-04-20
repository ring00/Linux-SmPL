//# pattern-8, witnesses: 10
@@
expression E0;
@@
- E0->wait_queue_token
+ E0->wait_queue_entry_token
//# pattern-3, witnesses: 6
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
//# pattern-6, witnesses: 2
@@
expression list listE0;
@@
- __add_wait_queue_tail(listE0)
+ __add_wait_queue_entry_tail(listE0)
//# pattern-22, witnesses: 2
@r0@
identifier fn;
expression P0;
@@
(varies)(P0, fn)
@@
identifier _key;
identifier mode;
identifier r0.fn;
identifier sync;
identifier wait;
@@
 int fn(wait_queue_entry_t * wait, unsigned int mode, int sync, void * _key)
 { ... }
