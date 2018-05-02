//# pattern-1, witnesses: 2
@@
identifier async;
typedef bool;
identifier dev;
identifier fn;
typedef pm_message_t;
identifier state;
@@
 int fn(struct device * dev, pm_message_t state, bool async)
 {
     <...
- if (dev->class) {
- if (dev->class->pm) {
- }
- }
+ if (dev->class && dev->class->pm) {
+ }
     ...>
 }
