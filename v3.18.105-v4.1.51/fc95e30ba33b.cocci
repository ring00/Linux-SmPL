//# pattern-1, witnesses: 2
@@
identifier dev;
identifier fn;
@@
 int fn(struct device * dev)
 {
     <...
- struct mmc_card * card = mmc_dev_to_card(dev);
- struct mmc_blk_data * md = mmc_get_drvdata(card);
+ struct mmc_blk_data * md = dev;
     ...>
 }
//# pattern-2, witnesses: 2
@@
expression E0;
identifier dev;
identifier fn;
@@
 int fn(struct device * dev)
 {
     <...
- mmc_set_drvdata(card, E0)
+ dev_set_drvdata(dev, E0)
     ...>
 }
//# pattern-3, witnesses: 2
@@
expression E0;
@@
- mmc_get_drvdata(E0)
+ dev_get_drvdata(&E0->dev)
