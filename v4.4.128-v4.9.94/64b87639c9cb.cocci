//# pattern-3, witnesses: 2
@@
@@
- ++ _st->bucket >= nf_conntrack_htable_size
+ ++ _st->bucket >= st->htable_size
//# pattern-4, witnesses: 2
@@
@@
- st->bucket < nf_conntrack_htable_size
+ st->bucket < st->htable_size
