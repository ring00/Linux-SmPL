//# pattern-4, witnesses: 3
@@
expression E0;
@@
- readl(E0->membase + AUART_STAT)
+ mxs_read(s, REG_STAT)
//# pattern-43, witnesses: 3
@@
expression E0;
@@
- readl(E0->membase + AUART_CTRL2)
+ mxs_read(s, REG_CTRL2)
//# pattern-6, witnesses: 2
@@
identifier fn;
identifier s;
@@
 void fn(struct mxs_auart_port * s)
 {
     <...
- readl(s->port.membase + AUART_STAT)
+ mxs_read(s, REG_STAT)
     ...>
 }
//# pattern-9, witnesses: 2
@@
identifier fn;
identifier u;
@@
- int fn(struct uart_port * u)
+ int fn(struct uart_port * u)
 {
     <...
- mxs_auart_reset_assert(u)
+ mxs_auart_reset_assert(s)
     ...>
 }
//# pattern-14, witnesses: 2
@@
expression E0;
@@
- writel(E0, s->port.membase + AUART_INTR_CLR)
+ mxs_clr(E0, s, REG_INTR)
//# pattern-19, witnesses: 2
@@
identifier fn;
identifier s;
@@
 void fn(struct mxs_auart_port * s)
 {
     <...
- writel(stat, s->port.membase + AUART_STAT)
+ mxs_write(stat, s, REG_STAT)
     ...>
 }
//# pattern-21, witnesses: 2
@@
expression E1;
expression V0;
@@
- writel(V0, E1->membase + AUART_CTRL2)
+ mxs_write(V0, s, REG_CTRL2)
//# pattern-38, witnesses: 2
@@
expression E0;
expression E1;
@@
- writel(E0, E1->membase + AUART_CTRL2_SET)
+ mxs_set(E0, s, REG_CTRL2)
