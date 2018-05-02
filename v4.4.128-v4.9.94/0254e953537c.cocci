//# pattern-1, witnesses: 2
@@
expression E0;
identifier fn;
identifier wdd;
@@
 int fn(struct watchdog_device * wdd)
 {
     <...
- wdd->dev = E0;
     ...>
 }
