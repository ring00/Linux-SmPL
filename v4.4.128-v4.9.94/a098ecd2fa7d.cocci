//# pattern-5, witnesses: 3
@@
expression E0;
expression E1;
expression E2;
expression E3;
@@
- _request_firmware(E0, E1, E2, E3)
+ _request_firmware(E0, E1, E2, NULL, 0, E3)
