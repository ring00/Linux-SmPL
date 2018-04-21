//# pattern-1, witnesses: 3
@@
expression E3;
expression E4;
expression V0;
expression V1;
expression V2;
@@
- int  = V0;
- V1 = misc_deregister(&V2);
- if (E3) {
- E4;
- }
+ misc_deregister(&V2);
//# pattern-6, witnesses: 3
@@
expression E1;
expression V0;
@@
- if (misc_deregister(&V0) < 0) {
- E1;
- }
+ misc_deregister(&V0);
//# pattern-7, witnesses: 2
@@
expression E0;
@@
- return misc_deregister(&E0);
+ misc_deregister(&E0);
+ return 0;
//# pattern-8, witnesses: 2
@@
expression V0;
@@
- res = misc_deregister(&V0);
- if (!res) {
- }
+ misc_deregister(&V0);
