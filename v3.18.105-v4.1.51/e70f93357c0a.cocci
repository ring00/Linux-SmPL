//# pattern-2, witnesses: 2
@@
expression E0;
identifier flctl;
@@
 void flctl_setup_dma(struct sh_flctl * flctl)
 {
     <...
- E0 = flctl->reg + 36
+ E0 = flctl->fifo
     ...>
 }
