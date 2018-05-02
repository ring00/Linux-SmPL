//# pattern-10, witnesses: 5
@@
expression list listE0;
@@
- hfi1_compute_aeth(listE0)
+ rvt_compute_aeth(listE0)
//# pattern-12, witnesses: 5
@@
expression list listE0;
@@
- qib_compute_aeth(listE0)
+ rvt_compute_aeth(listE0)
//# pattern-1, witnesses: 2
@@
expression list listE0;
@@
- qib_get_credit(listE0)
+ rvt_get_credit(listE0)
//# pattern-4, witnesses: 2
@@
@@
- HFI1_AETH_CREDIT_SHIFT
+ RVT_AETH_CREDIT_SHIFT
//# pattern-5, witnesses: 2
@@
@@
- QIB_AETH_CREDIT_MASK
+ RVT_AETH_CREDIT_MASK
//# pattern-6, witnesses: 2
@@
@@
- HFI1_MSN_MASK
+ RVT_MSN_MASK
//# pattern-7, witnesses: 2
@@
expression list listE0;
@@
- hfi1_get_credit(listE0)
+ rvt_get_credit(listE0)
//# pattern-8, witnesses: 2
@@
@@
- QIB_AETH_CREDIT_SHIFT
+ RVT_AETH_CREDIT_SHIFT
//# pattern-9, witnesses: 2
@@
@@
- HFI1_AETH_CREDIT_MASK
+ RVT_AETH_CREDIT_MASK
//# pattern-11, witnesses: 2
@@
expression list listE0;
@@
- qib_cmp24(listE0)
+ rvt_cmp_msn(listE0)
//# pattern-19, witnesses: 2
@@
expression list listE0;
@@
- cmp_msn(listE0)
+ rvt_cmp_msn(listE0)
