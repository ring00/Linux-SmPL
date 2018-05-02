//# pattern-11, witnesses: 3
@@
@@
- struct vb2_fileio_data * fileio = q->fileio;
//# pattern-7, witnesses: 2
@@
identifier fn;
identifier pb;
identifier vb;
@@
 int fn(struct vb2_buffer * vb, const void * pb)
 {
     <...
+ if (pb) {
+ }
     ...>
 }
