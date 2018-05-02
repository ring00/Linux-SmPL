//# pattern-7, witnesses: 3
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression S4;
@@
- oom_kill_process(E0, E1, E2, totalpages, E3, S4)
+ oom_kill_process(E0, E1, E2, totalpages, S4)
//# pattern-9, witnesses: 3
@@
identifier s;
@@
 struct oom_control s = {
+    .memcg = NULL,
 };
//# pattern-8, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
@@
- check_panic_on_oom(E0, E1, E2)
+ check_panic_on_oom(E0, E1)
