//# pattern-2, witnesses: 4
@@
identifier s;
@@
 struct nf_hook_ops [2] s = {
 };
//# pattern-3, witnesses: 2
@@
identifier s;
@@
 struct nf_hook_ops [6] s = {
 };
//# pattern-4, witnesses: 2
@@
expression E0;
expression ME1;
@@
- E0->owner = ME1;
//# pattern-5, witnesses: 2
@@
identifier s;
@@
 struct nf_hook_ops [3] s = {
 };
//# pattern-8, witnesses: 2
@@
identifier s;
@@
 struct nf_hook_ops [4] s = {
 };
