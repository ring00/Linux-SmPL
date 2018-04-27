//# pattern-1, witnesses: 3
@@
expression E0;
expression E1;
identifier base;
typedef bool;
identifier est;
identifier handle;
identifier net;
identifier ovr;
identifier p;
identifier r;
identifier tb;
identifier tp;
typedef u32;
@@
 int tcindex_set_parms(struct net * net, struct tcf_proto * tp, unsigned long base, u32 handle, struct tcindex_data * p, struct tcindex_filter_result * r, struct nlattr ** tb, struct nlattr * est, bool ovr)
 {
     <...
- tcf_exts_change(tp, &E0->exts, &E1)
+ tcf_exts_change(&E0->exts, &E1)
     ...>
 }
