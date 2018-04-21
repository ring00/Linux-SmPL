//# pattern-7, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier di;
identifier qid;
identifier r0.fn;
identifier sb;
@@
- int fn(struct super_block * sb, struct kqid qid, struct fs_disk_quota * di)
+ int fn(struct super_block * sb, struct kqid qid, struct qc_dqblk * di)
 { ... }
