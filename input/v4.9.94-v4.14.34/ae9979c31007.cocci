//# pattern-7, witnesses: 14
@@
@@
- struct rmi_transport_dev * xport = rmi_dev->xport;
- if (item && !xport->attn_data) {
- }
+ struct rmi_driver_data * drvdata = dev_get_drvdata(&rmi_dev->dev);
+ if (item && !drvdata->attn_data.data) {
+ }
//# pattern-11, witnesses: 4
@@
@@
- rmi_dev->xport->attn_size
+ drvdata->attn_data.size
//# pattern-8, witnesses: 3
@@
@@
- rmi_dev->xport->attn_data
+ drvdata->attn_data.data
