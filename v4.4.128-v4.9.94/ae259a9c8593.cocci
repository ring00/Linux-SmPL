//# pattern-3, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E1;
expression V0;
identifier get_block;
identifier len;
typedef loff_t;
identifier page;
identifier pos;
@@
- int __block_write_begin(struct page * page, loff_t pos, unsigned int len, get_block_t * get_block)
+ int __block_write_begin(struct page * page, loff_t pos, unsigned int len, get_block_t * get_block)
 {
     <...
- unsigned int from = pos & PAGE_SIZE - 1;
- unsigned int to = from + len;
- BUG_ON(V0 > E1);
     ...>
 }
