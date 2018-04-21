//# pattern-2, witnesses: 3
@@
expression E0;
expression E1;
expression IL2;
identifier fn;
identifier name;
identifier p;
identifier size;
identifier value;
@@
- int fn(struct task_struct * p, char * name, void * value, size_t size)
+ int fn(const char * name, void * value, size_t size)
 {
     <...
- if (E0 != E1) {
- return -IL2;
- }
     ...>
 }
