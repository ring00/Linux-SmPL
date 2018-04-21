//# pattern-3, witnesses: 3
@r0@
identifier i, fn;
@@
struct quotactl_ops i = {
    .quota_on = fn,
};
@@
identifier format_id;
identifier path;
identifier r0.fn;
identifier sb;
identifier type;
@@
- int fn(struct super_block * sb, int type, int format_id, struct path * path)
+ int fn(struct super_block * sb, int type, int format_id, const struct path * path)
 { ... }
