//# pattern-4, witnesses: 4
@@
@@
- if (cflag & CRTSCTS) {
- info->port.flags |= ASYNC_CTS_FLOW;
- }
+ tty_port_set_cts_flow(&info->port, cflag & CRTSCTS);
//# pattern-1, witnesses: 2
@@
identifier PV0;
@@
- PV0->port.flags |= ASYNC_CTS_FLOW;
