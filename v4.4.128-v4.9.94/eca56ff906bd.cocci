//# pattern-4, witnesses: 4
@@
@@
- MM_FILEPAGES
+ mm_counter_file(page)
//# pattern-5, witnesses: 2
@r0@
identifier i, fn;
@@
struct rmap_walk_control i = {
    .rmap_one = fn,
};
@@
identifier address;
identifier arg;
identifier page;
identifier vma;
@@
 int try_to_unmap_one(struct page * page, struct vm_area_struct * vma, unsigned long address, void * arg)
 {
     <...
- if (PageAnon(page)) {
- dec_mm_counter(mm, MM_ANONPAGES);
- }
+ dec_mm_counter(mm, mm_counter(page));
     ...>
 }
//# pattern-6, witnesses: 2
@@
identifier addr;
identifier dst_mm;
identifier dst_pte;
identifier rss;
identifier src_mm;
identifier src_pte;
identifier vma;
@@
 unsigned long copy_one_pte(struct mm_struct * dst_mm, struct mm_struct * src_mm, pte_t * dst_pte, pte_t * src_pte, struct vm_area_struct * vma, unsigned long addr, int * rss)
 {
     <...
- if (PageAnon(page)) {
- _ ++rss[MM_ANONPAGES];
- }
+ _ ++rss[mm_counter(page)];
     ...>
 }
