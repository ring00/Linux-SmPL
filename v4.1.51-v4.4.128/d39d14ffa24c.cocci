//# pattern-2, witnesses: 2
@@
expression BO0;
expression E1;
identifier a;
identifier b;
typedef bool;
@@
 bool addr_same(const struct inetpeer_addr * a, const struct inetpeer_addr * b)
 {
     <...
- if (BO0) {
- return E1;
- }
     ...>
 }
