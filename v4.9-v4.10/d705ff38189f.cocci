//# pattern-2, witnesses: 9
@r0@
identifier i, fn;
@@
struct consw i = {
    .con_scroll = fn,
};
@@
identifier b;
typedef bool;
identifier count;
identifier dir;
identifier r0.fn;
identifier t;
identifier vc;
@@
- int fn(struct vc_data * vc, int t, int b, int dir, int count)
+ bool fn(struct vc_data * vc, unsigned int t, unsigned int b, enum con_scroll dir, unsigned int count)
 {
     <...
- return 0;
+ return false;
     ...>
 }
//# pattern-1, witnesses: 8
@@
@@
- SM_UP
+ SM_UP
//# pattern-4, witnesses: 8
@r1@
identifier i, fn;
@@
struct consw i = {
    .con_scroll = fn,
};
@@
expression E0;
identifier b;
typedef bool;
identifier c;
identifier dir;
identifier lines;
identifier r1.fn;
identifier t;
@@
 bool fn(struct vc_data * c, unsigned int t, unsigned int b, enum con_scroll dir, unsigned int lines)
 {
     <...
- return E0;
+ return true;
     ...>
 }
//# pattern-6, witnesses: 6
@@
@@
- SM_DOWN
+ SM_DOWN
