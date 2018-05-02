//# pattern-1, witnesses: 24
@@
expression E0;
@@
- CON_IS_VISIBLE(E0)
+ con_is_visible(E0)
//# pattern-8, witnesses: 3
@@
@@
- DO_UPDATE(vc)
+ con_should_update(vc)
//# pattern-10, witnesses: 2
@@
@@
- IS_FG(vc)
+ con_is_fg(vc)
