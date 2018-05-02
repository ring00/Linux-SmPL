//# pattern-2, witnesses: 6
@@
expression E0;
@@
- E0->dev.archdata
+ E0->dev
//# pattern-1, witnesses: 3
@@
expression E0;
identifier dev;
identifier fn;
@@
 int fn(struct device * dev)
 {
     <...
- dev->archdata.dma_ops = E0
+ dev->dma_ops = E0
     ...>
 }
