//# pattern-1, witnesses: 2
@@
@@
- dentry_rcuwalk_invalidate(dentry);
+ raw_write_seqcount_begin(&dentry->d_seq);
+ raw_write_seqcount_end(&dentry->d_seq);
//# pattern-2, witnesses: 2
@@
@@
- smp_wmb;
