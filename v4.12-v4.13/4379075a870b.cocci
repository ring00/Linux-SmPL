//# pattern-1, witnesses: 2
@@
identifier PV0;
identifier PV1;
@@
- command[1] = PV0 >> 8;
- command[2] = PV1;
- transfer[0].len = sizeof(unsigned long);
+ mchp23k256_addr2cmd(flash, PV1, command);
+ transfer[0].len = mchp23k256_cmdsz(flash);
