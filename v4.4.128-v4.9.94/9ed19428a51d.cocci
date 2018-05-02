//# pattern-15, witnesses: 11
@@
identifier s;
@@
 struct uart_port * s = {
 };
//# pattern-16, witnesses: 2
@@
@@
- spin_lock_irqsave(&state->uart_port->lock, flags);
- spin_unlock_irqrestore(&state->uart_port->lock, flags);
+ struct uart_port * port = port;
+ port = uart_port_lock(state, flags);
+ uart_port_unlock(port, flags);
