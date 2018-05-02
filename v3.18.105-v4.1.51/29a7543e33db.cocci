//# pattern-1, witnesses: 2
@@
@@
- test_bit(TTY_OTHER_DONE, &tty->flags)
+ test_bit(TTY_OTHER_CLOSED, &tty->flags)
//# pattern-4, witnesses: 2
@@
@@
- check_other_closed(tty);
