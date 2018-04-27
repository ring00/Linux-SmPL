//# pattern-3, witnesses: 3
@@
@@
- dev->netdev_ops->ndo_setup_tc(dev, tp->q->handle, tp->protocol, &tc)
+ dev->netdev_ops->ndo_setup_tc(dev, tp->q->handle, tp->protocol, tc)
//# pattern-7, witnesses: 3
@@
expression E0;
@@
- tc.type = E0
+ tc->type = E0
//# pattern-1, witnesses: 2
@@
identifier f;
identifier fn;
identifier tp;
@@
 void fn(struct tcf_proto * tp, struct cls_fl_filter * f)
 {
     <...
- tp->q->dev_queue->dev
+ f->hw_dev
     ...>
 }
//# pattern-8, witnesses: 2
@@
@@
- tc.cls_flower
+ tc->cls_flower
