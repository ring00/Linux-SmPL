//# pattern-1, witnesses: 8
@@
identifier fn;
identifier ts;
@@
 int fn(struct cyttsp * ts)
 {
     <...
- ts->pdata
+ ts
     ...>
 }
//# pattern-5, witnesses: 2
@@
identifier fn;
identifier ts;
@@
 int fn(struct cyttsp * ts)
 {
     <...
- ts->pdata
+ ts
     ...>
 }
