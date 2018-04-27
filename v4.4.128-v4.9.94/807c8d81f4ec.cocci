//# pattern-4, witnesses: 12
@@
@@
- port->flags |= ASYNC_NORMAL_ACTIVE;
+ tty_port_set_active(port, 1);
//# pattern-3, witnesses: 7
@@
@@
- TTY_IS_ACTIVE(info->port.flags)
+ tty_port_active(&info->port)
//# pattern-5, witnesses: 4
@@
@@
- port->flags &= ~ASYNC_NORMAL_ACTIVE;
+ tty_port_set_active(port, 0);
//# pattern-8, witnesses: 2
@@
@@
- clear_bit(ASYNCB_NORMAL_ACTIVE, &port->flags)
+ tty_port_set_active(port, 0)
//# pattern-9, witnesses: 2
@@
@@
- info->port.flags &= ~ASYNC_NORMAL_ACTIVE;
+ tty_port_set_active(&info->port, 0);
