//# pattern-1, witnesses: 3
@@
expression E1;
expression S0;
@@
- printk(S0, , tty->name, E1);
+ tty_debug(tty, );
//# pattern-2, witnesses: 2
@@
expression ME1;
expression S0;
identifier idx;
identifier tty;
@@
 int tty_release_checks(struct tty_struct * tty, int idx)
 {
     <...
- printk(S0, , tty->name, idx, ME1->ttys[idx]);
+ tty_debug(tty, , idx);
     ...>
 }
