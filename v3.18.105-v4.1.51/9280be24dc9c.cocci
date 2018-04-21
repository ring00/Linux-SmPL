//# pattern-1, witnesses: 2
@@
identifier cmd;
identifier file;
identifier fl;
identifier fn;
@@
 int fn(struct file * file, int cmd, struct file_lock * fl)
 {
     <...
- if (!err) {
- }
+ if (!err) {
+ }
     ...>
 }
