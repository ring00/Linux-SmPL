//# pattern-9, witnesses: 3
@@
identifier s;
@@
 const struct ccp_vdata s = {
 };
//# pattern-21, witnesses: 3
@@
expression E1;
expression ME0;
@@
- struct ccp_device * ccp = ccp;
- ccp = ccp_alloc_struct(dev);
- ME0 = E1;
+ struct sp_device * sp = sp;
+ sp = sp_alloc_struct(dev);
+ ME0 = E1;
//# pattern-1, witnesses: 2
@@
expression E1;
expression ME0;
identifier ccp;
identifier fn;
@@
 int fn(struct ccp_device * ccp)
 {
     <...
- request_irq(ME0, ccp->vdata->perform->irqhandler, 0, E1->name, dev)
+ request_irq(ME0, ccp->vdata->perform->irqhandler, 0, E1->name, ccp)
     ...>
 }
//# pattern-5, witnesses: 2
@@
@@
- struct ccp_device * ccp = dev_get_drvdata(dev);
- return ccp_dev_resume(ccp);
+ struct sp_device * sp = dev_get_drvdata(dev);
+ return sp_resume(sp);
//# pattern-6, witnesses: 2
@@
@@
- struct ccp_device * ccp = dev_get_drvdata(dev);
- return ccp_dev_suspend(ccp, state);
+ struct sp_device * sp = dev_get_drvdata(dev);
+ return sp_suspend(sp, state);
//# pattern-26, witnesses: 2
@@
@@
- struct ccp_device * ccp = dev_get_drvdata(dev);
- ccp_dev_destroy(ccp);
+ struct sp_device * sp = dev_get_drvdata(dev);
+ sp_destroy(sp);
