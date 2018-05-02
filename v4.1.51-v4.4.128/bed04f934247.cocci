//# pattern-2, witnesses: 18
@@
@@
- V4L2_TYPE_IS_OUTPUT(q->type)
+ q->is_output
//# pattern-7, witnesses: 12
@@
@@
- V4L2_MEMORY_MMAP
+ VB2_MEMORY_MMAP
//# pattern-9, witnesses: 10
@@
@@
- V4L2_MEMORY_DMABUF
+ VB2_MEMORY_DMABUF
//# pattern-5, witnesses: 9
@@
@@
- V4L2_MEMORY_USERPTR
+ VB2_MEMORY_USERPTR
//# pattern-4, witnesses: 3
@@
@@
- VIDEO_MAX_FRAME
+ VB2_MAX_FRAME
//# pattern-6, witnesses: 3
@@
@@
- V4L2_TYPE_IS_MULTIPLANAR(q->type)
+ q->is_multiplanar
