//# pattern-3, witnesses: 5
@@
expression E1;
expression EC3;
expression IL2;
expression V0;
@@
- ch_do_scsi(ch, V0, E1, IL2, EC3)
+ ch_do_scsi(ch, V0, 12, E1, IL2, EC3)
//# pattern-6, witnesses: 3
@@
expression E0;
expression EC2;
expression IL1;
@@
- ch_do_scsi(ch, cmd, E0, IL1, EC2)
+ ch_do_scsi(ch, cmd, 10, E0, IL1, EC2)
