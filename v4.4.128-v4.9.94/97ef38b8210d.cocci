//# pattern-1, witnesses: 12
@@
@@
- test_bit(TTY_THROTTLED, &tty->flags)
+ tty_throttled(tty)
