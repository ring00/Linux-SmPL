//# pattern-2, witnesses: 5
@@
expression E0;
identifier fn;
identifier host;
identifier opcode;
typedef u32;
@@
 int fn(struct sdhci_host * host, u32 opcode)
 {
     <...
- mmc_send_tuning(E0)
+ mmc_send_tuning(E0, opcode, NULL)
     ...>
 }
//# pattern-3, witnesses: 2
@r0@
identifier i, fn;
@@
struct dw_mci_drv_data i = {
    .execute_tuning = fn,
};
@@
identifier r0.fn;
identifier slot;
typedef u32;
@@
- int fn(struct dw_mci_slot * slot)
+ int fn(struct dw_mci_slot * slot, u32 opcode)
 {
     <...
- mmc_send_tuning(mmc)
+ mmc_send_tuning(mmc, opcode, NULL)
     ...>
 }
