//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier b_dev_info;
expression list listE0;
@@
- struct page * balloon_page_enqueue(struct balloon_dev_info * b_dev_info)
+ void balloon_page_enqueue(struct balloon_dev_info * b_dev_info, struct page * page)
 {
     <...
- struct page * page = alloc_page(balloon_mapping_gfp_mask(listE0) | 65536 | __GFP_NORETRY);
     ...>
 }
