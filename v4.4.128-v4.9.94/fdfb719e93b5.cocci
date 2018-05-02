//# pattern-1, witnesses: 2
@@
expression F1;
identifier s;
@@
 struct tty_ldisc_ops s = {
-    .chars_in_buffer = F1,
 };
