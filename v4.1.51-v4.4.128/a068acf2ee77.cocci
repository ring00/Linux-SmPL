//# pattern-2, witnesses: 2
@@
expression ME0;
identifier fn;
identifier root;
identifier seq;
@@
 int fn(struct seq_file * seq, struct dentry * root)
 {
     <...
- seq_printf(seq, ",type=%.4s", &ME0);
+ seq_show_option_n(seq, "type", &ME0, 4)
     ...>
 }
//# pattern-4, witnesses: 2
@@
expression E0;
@@
- seq_printf(seq, ",grpjquota=%s", E0->s_qf_names[GRPQUOTA])
+ seq_show_option(seq, "grpjquota", E0->s_qf_names[GRPQUOTA])
//# pattern-6, witnesses: 2
@@
expression E0;
@@
- seq_printf(seq, ",usrjquota=%s", E0->s_qf_names[USRQUOTA])
+ seq_show_option(seq, "usrjquota", E0->s_qf_names[USRQUOTA])
//# pattern-12, witnesses: 2
@@
expression ME0;
identifier fn;
identifier root;
identifier seq;
@@
 int fn(struct seq_file * seq, struct dentry * root)
 {
     <...
- seq_printf(seq, ",creator=%.4s", &ME0);
+ seq_show_option_n(seq, "creator", &ME0, 4)
     ...>
 }
