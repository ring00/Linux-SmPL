//# pattern-1, witnesses: 6
@r0@
identifier i, fn;
@@
struct consw i = {
    .con_set_palette = fn,
};
@@
expression E0;
identifier c;
identifier r0.fn;
identifier table;
@@
- int fn(struct vc_data * c, const unsigned char * table)
+ void fn(struct vc_data * c, const unsigned char * table)
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
-    .con_set_palette = F1,
 };
//# pattern-2, witnesses: 2
@r1@
identifier i, fn;
@@
struct consw i = {
    .con_set_palette = fn,
};
@@
identifier c;
identifier r1.fn;
identifier table;
@@
 void fn(struct vc_data * c, const unsigned char * table)
 {
     <...
- return 0;
     ...>
 }
