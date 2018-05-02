//# pattern-1, witnesses: 13
@@
statement S0;
@@
- if (tty->termios.c_cflag & CRTSCTS) { S0 }
+ if (C_CRTSCTS(tty)) { S0 }
//# pattern-4, witnesses: 8
@@
@@
- (tty->termios.c_cflag & CRTSCTS)
+ C_CRTSCTS(tty)
//# pattern-3, witnesses: 4
@@
expression E0;
@@
- (E0->termios.c_cflag & CREAD)
+ C_CREAD(E0)
//# pattern-5, witnesses: 3
@r0@
identifier i, fn;
@@
struct tty_operations i = {
    .set_termios = fn,
};
@@
identifier old_termios;
identifier r0.fn;
identifier tty;
@@
 void fn(struct tty_struct * tty, struct ktermios * old_termios)
 {
     <...
- (tty->termios.c_cflag & CBAUD)
+ C_BAUD(tty)
     ...>
 }
//# pattern-8, witnesses: 3
@@
@@
- tty->termios.c_cflag & HUPCL
+ C_HUPCL(tty)
//# pattern-2, witnesses: 2
@@
statement S0;
@@
- if (tty->termios.c_cflag & CBAUD) { S0 }
+ if (C_BAUD(tty)) { S0 }
