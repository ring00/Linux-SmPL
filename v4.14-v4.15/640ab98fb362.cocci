//# pattern-1, witnesses: 3
@@
expression E0;
@@
- alloc_page_buffers(page, E0, 0)
+ alloc_page_buffers(page, E0, false)
//# pattern-2, witnesses: 2
@@
expression V0;
@@
- alloc_page_buffers(page, V0, 1)
+ alloc_page_buffers(page, V0, true)
