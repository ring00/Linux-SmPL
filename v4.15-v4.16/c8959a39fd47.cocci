//# pattern-1, witnesses: 2
@@
@@
- struct cec_devnode * devnode = cec_devnode_data(filp);
- if (!devnode->registered) {
- }
+ if (!cec_is_registered(adap)) {
+ }
