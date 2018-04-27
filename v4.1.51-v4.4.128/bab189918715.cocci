//# pattern-2, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
@@
- bpf_prog_create_from_user(&E0, E1, E2)
+ bpf_prog_create_from_user(&E0, E1, E2, false)
