//# pattern-2, witnesses: 2
@@
expression E0;
@@
- E0 = default_backing_dev_info.ra_pages
+ E0 = VM_MAX_READAHEAD * 1024 / PAGE_CACHE_SIZE
