//# pattern-1, witnesses: 4
@@
expression E0;
identifier fn;
identifier rdi;
@@
 void fn(struct rvt_dev_info * rdi)
 {
     <...
- if (rdi->flags & E0) {
- }
     ...>
 }
