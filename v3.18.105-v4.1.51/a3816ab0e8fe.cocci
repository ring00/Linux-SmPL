//# pattern-2, witnesses: 2
@r0@
identifier fn;
expression P0, P1;
@@
show_fdinfo(P0, P1, fn)
@@
identifier m;
identifier mark;
identifier r0.fn;
@@
- int fn(struct seq_file * m, struct fsnotify_mark * mark)
+ void fn(struct seq_file * m, struct fsnotify_mark * mark)
 {
     <...
- return 0;
+ return;
     ...>
 }
//# pattern-6, witnesses: 2
@r1@
identifier i, fn;
@@
struct file_operations i = {
    .show_fdinfo = fn,
};
@@
identifier f;
identifier m;
identifier r1.fn;
@@
- int fn(struct seq_file * m, struct file * f)
+ void fn(struct seq_file * m, struct file * f)
 { ... }
//# pattern-13, witnesses: 2
@r2@
identifier i, fn;
@@
struct file_operations i = {
    .show_fdinfo = fn,
};
@@
expression F0;
identifier f;
identifier m;
identifier r2.fn;
@@
 void fn(struct seq_file * m, struct file * f)
 {
     <...
- return show_fdinfo(m, f, F0);
+ show_fdinfo(m, f, F0);
     ...>
 }
