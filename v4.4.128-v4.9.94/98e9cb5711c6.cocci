//# pattern-1, witnesses: 36
@@
expression E0;
@@
- if (E0) {
- return -EINVAL;
- }
//# pattern-2, witnesses: 4
@@
identifier s;
@@
 const struct xattr_handler s = {
 };
