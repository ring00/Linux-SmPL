//# pattern-9, witnesses: 3
@@
expression E0;
identifier buf;
identifier cnt;
identifier host;
@@
 void dw_mci_push_data16(struct dw_mci * host, void * buf, int cnt)
 {
     <...
- mci_writew(host, )
+ mci_fifo_writew(host->fifo_reg, E0)
     ...>
 }
//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression IL0;
identifier host;
@@
 int dw_mci_probe(struct dw_mci * host)
 {
     <...
- host->data_offset = IL0
+ host->fifo_reg = host->regs + IL0
     ...>
 }
