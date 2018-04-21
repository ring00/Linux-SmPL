//# pattern-5, witnesses: 6
@@
statement S0;
identifier addr;
identifier end;
identifier fn;
identifier pmd;
identifier walk;
@@
 int fn(pmd_t * pmd, unsigned long addr, unsigned long end, struct mm_walk * walk)
 {
     <...
- if (pmd_trans_huge_lock(pmd, vma, &ptl) == 1) { S0 }
+ if (pmd_trans_huge_lock(pmd, vma, &ptl)) { S0 }
     ...>
 }
//# pattern-2, witnesses: 2
@@
identifier addr;
identifier arg;
identifier fn;
identifier page;
identifier vma;
@@
 int fn(struct page * page, struct vm_area_struct * vma, unsigned long addr, void * arg)
 {
     <...
- page_check_address_pmd(page, mm, addr, PAGE_CHECK_ADDRESS_PMD_FLAG, &ptl)
+ page_check_address_pmd(page, mm, addr, &ptl)
     ...>
 }
