//# pattern-3, witnesses: 2
@@
@@
- omap_mbox_put(oproc->mbox, &oproc->nb)
+ mbox_free_channel(oproc->mbox)
