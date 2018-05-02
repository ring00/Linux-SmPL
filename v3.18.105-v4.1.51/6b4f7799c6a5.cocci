//# pattern-10, witnesses: 2
@@
expression E1;
type T0;
typedef bool;
identifier sc;
identifier zonelist;
@@
 bool shrink_zones(struct zonelist * zonelist, struct scan_control * sc)
 {
     <...
- T0  = E1;
     ...>
 }
