//# pattern-1, witnesses: 18
@@
expression ME0;
@@
- atomic_read(&ME0.refcount)
+ kref_read(&ME0)
//# pattern-2, witnesses: 3
@@
@@
- obj->refcount.refcount.counter
+ kref_read(&obj->refcount)
