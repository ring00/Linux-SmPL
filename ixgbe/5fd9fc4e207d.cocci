unknown kind: InitListExpr
unknown kind: InitListExpr
//# pattern-1, witnesses: 7
@@
expression E1;
expression E2;
expression E3;
expression E4;
expression EC0;
@@
- dev->netdev_ops->ndo_setup_tc(dev, EC0, E1->handle, E2, E3, E4)
+ dev->netdev_ops->ndo_setup_tc(dev, EC0, E4)
//# pattern-7, witnesses: 2
@@
@@
- struct tc_cls_u32_offload u32_offload = ;
- if (tc_should_offload(dev, tp, 0)) {
- dev->netdev_ops->ndo_setup_tc(dev, TC_SETUP_CLSU32, tp->q->handle, tp->chain->index, tp->protocol, &offload);
- }
+ struct tc_cls_u32_offload u32_offload = ;
+ if (tc_should_offload(dev, tp, 0)) {
+ tc_cls_common_offload_init(&u32_offload.common, tp);
+ dev->netdev_ops->ndo_setup_tc(dev, TC_SETUP_CLSU32, &offload);
+ }
