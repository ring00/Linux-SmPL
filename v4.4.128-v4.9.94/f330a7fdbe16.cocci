//# pattern-6, witnesses: 3
@@
@@
- add_timer(&ct->timeout);
//# pattern-2, witnesses: 2
@@
@@
- if (del_timer(&ct->timeout)) {
- }
