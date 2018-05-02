//# pattern-1, witnesses: 2
@@
@@
- u64_stats_update_begin(&stats64->syncp);
- u64_stats_update_end(&stats64->syncp);
+ unsigned long flags = flags;
+ flags = u64_stats_update_begin_irqsave(&stats64->syncp);
+ u64_stats_update_end_irqrestore(&stats64->syncp, flags);
