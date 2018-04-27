//# pattern-6, witnesses: 3
@@
expression E0;
expression E1;
expression E2;
expression E3;
@@
- ndisc_send_ns(E0, E1, E2, E3)
+ ndisc_send_ns(E0, E1, E2, E3, 0)
//# pattern-8, witnesses: 2
@@
identifier s;
@@
 struct ipv6_devconf s = {
+    .enhanced_dad = 1,
 };
