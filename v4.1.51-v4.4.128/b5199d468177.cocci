//# pattern-2, witnesses: 3
@@
expression list listE0;
@@
- atmel_uart_writel(listE0)
+ atmel_uart_writeb(listE0)
//# pattern-3, witnesses: 2
@@
expression list listE0;
@@
- atmel_uart_readl(listE0)
+ atmel_uart_readb(listE0)
