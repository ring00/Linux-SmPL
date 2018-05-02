//# pattern-2, witnesses: 4
@@
@@
- call_qop()
+ call_qop()
//# pattern-4, witnesses: 2
@@
@@
- __vb2_queue_alloc(q, memory, num_buffers, num_planes)
+ __vb2_queue_alloc(q, memory, num_buffers, num_planes, plane_sizes)
//# pattern-7, witnesses: 2
@@
identifier pb;
identifier vb;
@@
 int __qbuf_userptr(struct vb2_buffer * vb, const void * pb)
 {
     <...
- q->plane_sizes[plane]
+ vb->planes[plane].min_length
     ...>
 }
