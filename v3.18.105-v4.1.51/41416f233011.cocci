//# pattern-6, witnesses: 5
@@
expression IL0;
expression IL1;
typedef bool;
identifier c;
identifier dst;
identifier end;
identifier fn;
@@
 bool fn(unsigned char c, char ** dst, char * end)
 {
     <...
- if (out + IL0 > end) {
- *dst = out + IL1;
- return true;
- }
     ...>
 }
