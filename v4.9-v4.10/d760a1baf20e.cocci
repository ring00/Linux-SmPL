//# pattern-1, witnesses: 2
@@
expression E0;
@@
- arch_setup_dma_ops(E0, 0, 0, NULL, attr == DEV_DMA_COHERENT)
+ acpi_dma_configure(E0, attr)
