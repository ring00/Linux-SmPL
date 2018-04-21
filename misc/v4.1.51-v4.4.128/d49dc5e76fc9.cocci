//# pattern-2, witnesses: 3
@@
expression list listE0;
@@
- mei_cl_recv(listE0)
+ mei_cldev_recv(listE0)
//# pattern-4, witnesses: 3
@@
expression list listE0;
@@
- mei_cl_send(listE0)
+ mei_cldev_send(listE0)
//# pattern-8, witnesses: 3
@@
expression list listE0;
@@
- mei_cl_disable_device(listE0)
+ mei_cldev_disable(listE0)
//# pattern-3, witnesses: 2
@@
expression list listE0;
@@
- mei_cl_driver_unregister(listE0)
+ mei_cldev_driver_unregister(listE0)
//# pattern-5, witnesses: 2
@@
@@
- mei_cl_driver_register
+ mei_cldev_driver_register
//# pattern-9, witnesses: 2
@@
expression list listE0;
@@
- mei_cl_get_drvdata(listE0)
+ mei_cldev_get_drvdata(listE0)
