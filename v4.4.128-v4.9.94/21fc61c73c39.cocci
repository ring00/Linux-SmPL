//# pattern-1, witnesses: 8
@r0@
identifier i, fn;
@@
struct address_space_operations i = {
    .readpage = fn,
};
@@
identifier file;
identifier page;
identifier r0.fn;
@@
 int fn(struct file * file, struct page * page)
 {
     <...
- kunmap(page);
     ...>
 }
//# pattern-2, witnesses: 4
@@
expression list listE0;
@@
- kmap(listE0)
+ page_address
