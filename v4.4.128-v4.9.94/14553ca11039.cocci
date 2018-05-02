//# pattern-2, witnesses: 4
@@
@@
- atomic_read(&priv->s_iowait.sdma_busy)
+ iowait_sdma_pending(&priv->s_iowait)
//# pattern-5, witnesses: 3
@@
@@
- atomic_inc(&wait->sdma_busy)
+ iowait_sdma_inc(wait)
//# pattern-16, witnesses: 3
@@
@@
- atomic_dec_and_test(&wait->sdma_busy)
+ iowait_sdma_dec(wait)
//# pattern-14, witnesses: 2
@@
expression E0;
@@
- E0 & RVT_S_UNLIMITED_CREDIT
+ E0 & RVT_S_UNLIMITED_CREDIT
