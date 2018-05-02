//# pattern-2, witnesses: 3
@@
identifier s;
@@
 struct apic s = {
 };
//# pattern-1, witnesses: 2
@@
expression E0;
@@
- E0 = 
+ E0 = dest_Fixed
//# pattern-3, witnesses: 2
@@
expression E0;
expression E1;
@@
- E0 | 
+ E0 | E1
