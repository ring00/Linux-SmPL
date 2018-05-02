//# pattern-1, witnesses: 3
@r0@
identifier i, fn;
@@
struct uart_ops i = {
    .set_ldisc = fn,
};
@@
identifier new;
identifier port;
identifier r0.fn;
@@
- void fn(struct uart_port * port, int new)
+ void fn(struct uart_port * port, struct ktermios * termios)
 {
     <...
- new == N_PPS
+ termios->c_line == N_PPS
     ...>
 }
