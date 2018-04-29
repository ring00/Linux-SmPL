//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
identifier ps2dev;
identifier r0.fn;
@@
 void fn(struct ps2dev * ps2dev)
 {
     <...
- if (i8042_check_port_owner(ps2dev->serio)) {
- E0;
- }
- &ps2dev->cmd_mutex;
+ struct mutex * m = ;
+ m;
     ...>
 }
