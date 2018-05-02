//# pattern-3, witnesses: 2
@@
identifier exit_session;
identifier tty;
@@
 void __tty_hangup(struct tty_struct * tty, int exit_session)
 { ... }
