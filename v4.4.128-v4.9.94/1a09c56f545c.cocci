//# pattern-2, witnesses: 7
@@
expression E0;
expression F2;
expression IL1;
identifier PV3;
@@
- digital_in_send_cmd(ddev, E0, IL1, F2, PV3)
+ digital_in_send_cmd(ddev, E0, ddev->dep_rwt, F2, PV3)
