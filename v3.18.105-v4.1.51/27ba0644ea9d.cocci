//# pattern-1, witnesses: 3
@@
expression E0;
expression E1;
@@
- if (unlikely(E0->vm_flags & VM_NONLINEAR)) {
- E1;
- }
//# pattern-8, witnesses: 3
@@
expression E1;
identifier s;
@@
 struct rmap_walk_control s = {
-    .file_nonlinear = E1,
 };
