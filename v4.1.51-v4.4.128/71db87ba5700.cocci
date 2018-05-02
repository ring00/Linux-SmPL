//# pattern-1, witnesses: 4
@r0@
identifier i, fn;
@@
struct subsys_interface i = {
    .remove_dev = fn,
};
@@
identifier dev;
identifier r0.fn;
identifier sif;
@@
- int fn(struct device * dev, struct subsys_interface * sif)
+ void fn(struct device * dev, struct subsys_interface * sif)
 {
     <...
- return 0;
+ return;
     ...>
 }
//# pattern-2, witnesses: 2
@r1@
identifier i, fn;
@@
struct subsys_interface i = {
    .remove_dev = fn,
};
@@
identifier dev;
identifier r1.fn;
identifier sif;
@@
 void fn(struct device * dev, struct subsys_interface * sif)
 {
     <...
- return 0;
     ...>
 }
