//# pattern-3, witnesses: 7
@@
expression E0;
@@
- E0->drv
+ E0->ldev
//# pattern-7, witnesses: 6
@@
expression E1;
expression ME0;
@@
- struct lirc_driver * drv = drv;
- drv = kzalloc(sizeof(unsigned long), GFP_KERNEL);
- ME0 = E1;
+ struct lirc_dev * ldev = ldev;
+ ldev = kzalloc(sizeof(unsigned long), GFP_KERNEL);
+ ME0 = E1;
