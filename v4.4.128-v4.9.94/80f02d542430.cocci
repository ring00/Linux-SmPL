//# pattern-2, witnesses: 2
@@
@@
- clear_bit(ASYNCB_SUSPENDED, &port->flags)
+ tty_port_set_suspended(port, 0)
