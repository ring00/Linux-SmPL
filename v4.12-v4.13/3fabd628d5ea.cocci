//# pattern-2, witnesses: 2
@@
identifier cap_info;
identifier hdr_bytes;
identifier kbuff;
@@
 int efi_capsule_setup_info(struct capsule_info * cap_info, void * kbuff, size_t hdr_bytes)
 {
     <...
- void * temp_page = temp_page;
- temp_page = krealloc(cap_info->pages, pages_needed * sizeof(unsigned long), GFP_KERNEL | __GFP_ZERO);
     ...>
 }
//# pattern-3, witnesses: 2
@@
expression E3;
expression E4;
expression E5;
type T0;
expression V1;
expression V2;
identifier cap_info;
identifier hdr_bytes;
identifier kbuff;
@@
 int efi_capsule_setup_info(struct capsule_info * cap_info, void * kbuff, size_t hdr_bytes)
 {
     <...
- T0  = V1;
- V2 = E3;
- if (E4) {
- pr_err;
- return E5;
- }
     ...>
 }
