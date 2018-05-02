//# pattern-2, witnesses: 4
@@
@@
- if (USE_IRDA(sport)) {
- }
//# pattern-1, witnesses: 3
@@
expression E1;
expression IL0;
expression IL2;
expression IL3;
expression IL4;
@@
- if (USE_IRDA(sport)) {
- }
- if (USE_IRDA(sport)) {
- temp = readl(sport->port.membase + IL0);
- writel(E1, sport->port.membase + IL2);
- temp = readl(sport->port.membase + IL3);
- writel(temp, sport->port.membase + IL4);
- }
