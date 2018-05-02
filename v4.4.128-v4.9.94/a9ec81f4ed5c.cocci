//# pattern-1, witnesses: 2
@@
identifier fn;
identifier sci_port;
@@
 void fn(struct sci_port * sci_port)
 {
     <...
- sci_port->iclk;
     ...>
 }
//# pattern-4, witnesses: 2
@@
expression E0;
@@
- E0->iclk
+ E0->fclk
