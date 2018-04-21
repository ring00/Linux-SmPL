//# pattern-4, witnesses: 5
@@
expression E0;
expression E1;
expression E2;
@@
- access_remote_vm(mm, E0, E1, E2, 0)
+ access_remote_vm(mm, E0, E1, E2, FOLL_FORCE)
