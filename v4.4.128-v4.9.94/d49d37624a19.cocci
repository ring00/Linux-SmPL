//# pattern-1, witnesses: 6
@@
identifier addr;
identifier fn;
identifier id;
typedef qid_t;
identifier sb;
identifier type;
@@
 int fn(struct super_block * sb, int type, qid_t id, void * addr)
 {
     <...
- qid_valid(qid)
+ qid_has_mapping(sb->s_user_ns, qid)
     ...>
 }
