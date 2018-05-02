//# pattern-4, witnesses: 3
@r0@
identifier i, fn;
@@
struct uart_ops i = {
    .request_port = fn,
};
@@
identifier port;
@@
 int bcm_uart_request_port(struct uart_port * port)
 {
     <...
- unsigned int size = size;
- size = UART_REG_SIZE;
     ...>
 }
