//# pattern-1, witnesses: 2
@@
expression ME0;
identifier addr;
identifier fn;
identifier sb;
@@
 int fn(struct super_block * sb, void * addr)
 {
     <...
- if (!ME0 && !sb->s_qcop->get_state) {
- }
- if (sb->s_qcop->get_state) {
- }
+ if (!sb->s_qcop->get_state) {
+ }
     ...>
 }
