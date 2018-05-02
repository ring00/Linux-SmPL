//# pattern-6, witnesses: 19
@@
expression E0;
@@
- E0->port.flags & ASYNC_INITIALIZED
+ tty_port_initialized(&E0->port)
//# pattern-3, witnesses: 8
@@
@@
- port->flags & ASYNC_INITIALIZED
+ tty_port_initialized(port)
//# pattern-2, witnesses: 6
@@
@@
- info->port.flags &= ~ASYNC_INITIALIZED;
+ tty_port_set_initialized(&info->port, 0);
//# pattern-11, witnesses: 5
@@
expression V0;
@@
- test_bit(ASYNCB_INITIALIZED, &V0->flags)
+ tty_port_initialized(V0)
//# pattern-10, witnesses: 4
@@
@@
- set_bit(ASYNCB_INITIALIZED, &port->flags)
+ tty_port_set_initialized(port, 1)
//# pattern-9, witnesses: 3
@@
expression ME0;
@@
- clear_bit(ASYNCB_INITIALIZED, &ME0.flags)
+ tty_port_set_initialized(&ME0, 0)
//# pattern-16, witnesses: 2
@@
@@
- clear_bit(ASYNCB_INITIALIZED, &port->flags)
+ tty_port_set_initialized(port, 0)
