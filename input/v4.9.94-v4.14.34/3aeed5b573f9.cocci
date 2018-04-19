//# pattern-6, witnesses: 3
@@
expression V0;
@@
- V0->irq;
//# pattern-1, witnesses: 2
@@
identifier PV0;
identifier PV2;
identifier PV3;
expression V1;
@@
- if (PV0->irq > 0) {
- V1->irq = PV2->irq;
- }
- retval = PV3;
- if (retval < 0) {
- return retval;
- }
+ pdata->irq = PV2->irq;
//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct dev_pm_ops i = {
    .resume = fn,
};
@@
expression V0;
expression V1;
expression V2;
identifier dev;
identifier r0.fn;
@@
 int fn(struct device * dev)
 {
     <...
- if (device_may_wakeup(&V0->dev)) {
- ret = disable_irq_wake(V1->irq);
- if (!ret) {
- dev_warn(dev, "Failed to disable irq for wake: %d\n", ret);
- }
- }
- ret = rmi_driver_resume(V2->xport.rmi_dev);
+ ret = rmi_driver_resume(V2->xport.rmi_dev, true);
     ...>
 }
//# pattern-3, witnesses: 2
@@
expression V0;
@@
- V0->irq;
//# pattern-4, witnesses: 2
@@
expression V0;
@@
- V0->irq;
//# pattern-5, witnesses: 2
@@
expression V0;
@@
- rmi_driver_suspend(V0->xport.rmi_dev)
+ rmi_driver_suspend(V0->xport.rmi_dev, false)
//# pattern-9, witnesses: 2
@@
expression V0;
@@
- rmi_driver_resume(V0->xport.rmi_dev)
+ rmi_driver_resume(V0->xport.rmi_dev, false)
//# pattern-12, witnesses: 2
@r1@
identifier i, fn;
@@
struct dev_pm_ops i = {
    .suspend = fn,
};
@@
expression V0;
expression V1;
expression V2;
identifier dev;
identifier r1.fn;
@@
 int fn(struct device * dev)
 {
     <...
- ret = rmi_driver_suspend(V0->xport.rmi_dev);
- if (device_may_wakeup(&V1->dev)) {
- ret = enable_irq_wake(V2->irq);
- if (!ret) {
- dev_warn(dev, "Failed to enable irq for wake: %d\n", ret);
- }
- }
+ ret = rmi_driver_suspend(V0->xport.rmi_dev, true);
     ...>
 }
