//# pattern-1, witnesses: 70
@@
expression ME0;
@@
- atomic_read(&ME0.refcount)
+ kref_read(&ME0)
//# pattern-2, witnesses: 9
@@
expression ME0;
@@
- ME0.refcount.counter
+ kref_read(&ME0)
