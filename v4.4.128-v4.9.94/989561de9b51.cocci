//# pattern-1, witnesses: 11
@@
expression E0;
expression E1;
@@
- E0->pm_domain = E1;
+ dev_pm_domain_set(E0, E1);
//# pattern-4, witnesses: 2
@@
identifier dev;
identifier fn;
@@
 void fn(struct mei_device * dev)
 {
     <...
- pdev->dev.pm_domain = &dev->pg_domain;
+ dev_pm_domain_set(&pdev->dev, &dev->pg_domain);
     ...>
 }
