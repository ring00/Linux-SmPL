//# pattern-1, witnesses: 2
@@
expression E0;
expression E1;
@@
- E0->atomic = E1;
//# pattern-2, witnesses: 2
@@
@@
- fb_helper->atomic
+ dev->mode_config.funcs->atomic_commit
