//# pattern-4, witnesses: 5
@@
expression E2;
expression E4;
expression V0;
expression V1;
expression V3;
@@
- V0 = dma_buf_export(V1, &E2, V3->size, E4, NULL);
+ struct dma_buf_export_info exp_info = DEFINE_DMA_BUF_EXPORT_INFO;
+ exp_info.ops = &E2;
+ exp_info.size = V3->size;
+ exp_info.flags = E4;
+ exp_info.priv = V1;
+ V0 = dma_buf_export(&exp_info);
