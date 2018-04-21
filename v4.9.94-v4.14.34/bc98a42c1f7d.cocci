//# pattern-1, witnesses: 30
@@
expression E0;
@@
- E0->s_flags & MS_RDONLY
+ sb_rdonly(E0)
