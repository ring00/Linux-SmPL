//# pattern-1, witnesses: 10
@@
expression E0;
expression E3;
expression E4;
expression E5;
expression E6;
expression E8;
expression E9;
expression EC2;
expression IL7;
expression V1;
@@
- scsi_execute_req_flags(E0, V1, EC2, E3, E4, E5, E6, IL7, NULL, E8, E9)
+ scsi_execute(E0, V1, EC2, E3, E4, NULL, E5, E6, IL7, E8, E9, NULL)
