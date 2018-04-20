unknown kind: ConditionalOperator
//# pattern-1, witnesses: 93
@@
expression E0;
@@
- E0->s_flags & MS_RDONLY
+ sb_rdonly(E0)
//# pattern-2, witnesses: 2
@@
identifier fn;
identifier sb;
@@
- int fn(struct super_block * sb)
+ int fn(struct super_block * sb)
 {
     <...
- sb->s_flags & MS_RDONLY
+ sb_rdonly(sb)
     ...>
 }
//# pattern-4, witnesses: 2
@@
@@
+ sb_rdonly(sb)
