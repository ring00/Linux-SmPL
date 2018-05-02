//# pattern-5, witnesses: 5
@@
expression list listE0;
@@
- tpm_platform_begin_xfer(data);
- tpm_platform_end_xfer(data);
+ if (is_bsw(listE0) && !data->flags & TPM_TIS_CLK_ENABLE) {
+ WARN(1, "CLKRUN not enabled!\n");
+ }
//# pattern-7, witnesses: 2
@@
expression list listE0;
@@
- if (is_bsw(listE0)) {
- iounmap(priv->ilb_base_addr);
- }
