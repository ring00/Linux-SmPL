//# pattern-3, witnesses: 12
@@
expression E0;
@@
- E0->port.flags & ASYNC_CHECK_CD
+ tty_port_check_carrier(&E0->port)
//# pattern-1, witnesses: 7
@@
identifier PV0;
@@
- if (cflag & CLOCAL) {
- PV0->port.flags &= ~ASYNC_CHECK_CD;
- }
+ tty_port_set_check_carrier(&PV0->port, ~cflag & CLOCAL);
