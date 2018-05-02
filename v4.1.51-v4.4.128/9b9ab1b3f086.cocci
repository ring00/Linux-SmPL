//# pattern-1, witnesses: 2
@@
@@
- pInfo->read_wait
+ tty->read_wait
//# pattern-2, witnesses: 2
@@
@@
- pInfo->read_wait
+ pInfo->tty->read_wait
