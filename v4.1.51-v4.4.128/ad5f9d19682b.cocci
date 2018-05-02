//# pattern-1, witnesses: 3
@@
expression E0;
identifier code;
identifier height;
identifier isi;
typedef u32;
identifier width;
@@
 int configure_geometry(struct atmel_isi * isi, u32 width, u32 height, u32 code)
 {
     <...
- cfg2 = isi_readl(isi, ISI_CFG2);
- cfg2 &= ~E0;
     ...>
 }
