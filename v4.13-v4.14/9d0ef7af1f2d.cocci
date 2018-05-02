//# pattern-1, witnesses: 2
@@
identifier s;
@@
 struct pstate_funcs s = {
-    .update_util = intel_pstate_update_util_pid,
+    .update_util = intel_pstate_update_util,
 };
//# pattern-3, witnesses: 2
@@
expression E1;
expression list listE0;
@@
- if (pid_in_use(listE0)) {
- E1;
- }
