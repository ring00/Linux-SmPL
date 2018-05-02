//# pattern-1, witnesses: 10
@r0@
identifier i, fn;
@@
struct consw i = {
    .con_scrolldelta = fn,
};
@@
expression E0;
identifier c;
identifier lines;
identifier r0.fn;
@@
- int fn(struct vc_data * c, int lines)
+ void fn(struct vc_data * c, int lines)
 {
     <...
- return E0;
+ return;
     ...>
 }
//# pattern-3, witnesses: 4
@@
expression F1;
identifier s;
@@
 const struct consw s = {
-    .con_scrolldelta = F1,
 };
//# pattern-2, witnesses: 3
@r1@
identifier i, fn;
@@
struct consw i = {
    .con_scrolldelta = fn,
};
@@
identifier c;
identifier lines;
identifier r1.fn;
@@
 void fn(struct vc_data * c, int lines)
 { ... }
