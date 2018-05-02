//# pattern-1, witnesses: 2
@@
expression E0;
identifier f;
identifier fn;
identifier tp;
@@
 void fn(struct tcf_proto * tp, struct cls_fl_filter * f)
 {
     <...
- if (!E0) {
- return;
- }
+ if (E0) {
+ }
+ tc_setup_cb_call(&f->exts, TC_SETUP_CLSFLOWER, &cls_flower, false);
     ...>
 }
//# pattern-4, witnesses: 2
@@
identifier f;
identifier fn;
identifier tp;
@@
 void fn(struct tcf_proto * tp, struct cls_fl_filter * f)
 {
     <...
- f->hw_dev
+ tp->q->dev_queue->dev
     ...>
 }
