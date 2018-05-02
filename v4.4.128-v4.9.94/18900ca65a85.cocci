//# pattern-2, witnesses: 16
@@
@@
- tty->flags & 1 << TTY_IO_ERROR
+ tty_io_error(tty)
//# pattern-1, witnesses: 7
@@
@@
- test_bit(TTY_IO_ERROR, &tty->flags)
+ tty_io_error(tty)
