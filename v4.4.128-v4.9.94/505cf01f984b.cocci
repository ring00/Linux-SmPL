//# pattern-1, witnesses: 2
@@
expression E0;
@@
- extcon_name[E0->supported_cable[i]]
+ extcon_info[E0->supported_cable[i]].name
