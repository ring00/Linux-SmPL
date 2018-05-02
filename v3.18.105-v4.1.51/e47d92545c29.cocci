//# pattern-1, witnesses: 94
@@
@@
- musb->xceiv
+ musb->xceiv->otg
//# pattern-2, witnesses: 6
@@
@@
- ci->transceiver
+ ci->fsm.otg
//# pattern-4, witnesses: 4
@@
@@
- fsm->otg->phy
+ fsm->otg
