//# pattern-2, witnesses: 26
@@
expression E0;
@@
- &E0->vb
+ &E0->vb.vb2_buf
//# pattern-1, witnesses: 25
@@
type T0;
type T1;
identifier fn;
identifier vb;
@@
 void fn(struct vb2_buffer * vb)
 {
     <...
- T0 buf = container_of(vb, );
+ struct vb2_v4l2_buffer * vbuf = to_vb2_v4l2_buffer(vb);
+ T1 buf = container_of(vbuf, );
     ...>
 }
//# pattern-7, witnesses: 19
@@
expression E0;
@@
- E0.v4l2_buf
+ E0.vb2_buf
//# pattern-4, witnesses: 12
@@
expression V0;
@@
- V0->vb.v4l2_buf
+ V0->vb
//# pattern-6, witnesses: 2
@@
expression E0;
identifier fn;
identifier vb;
@@
 void fn(struct vb2_buffer * vb)
 {
     <...
- E0[vb->v4l2_buf.index]
+ E0[vb->index]
     ...>
 }
