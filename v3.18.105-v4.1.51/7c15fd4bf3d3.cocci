//# pattern-1, witnesses: 3
@@
statement S0;
@@
- if (ctx->jpeg->variant->version == SJPEG_EXYNOS3250) { S0 }
+ if (ctx->jpeg->variant->hw3250_compat) { S0 }
//# pattern-3, witnesses: 3
@@
@@
- SJPEG_EXYNOS4
+ SJPEG_EXYNOS4
