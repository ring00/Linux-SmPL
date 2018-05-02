//# pattern-2, witnesses: 25
@@
expression E0;
@@
- E0->flags
+ E0->cfg.flags
//# pattern-1, witnesses: 11
@@
expression E0;
@@
- vxlan->flags & E0
+ vxlan->cfg.flags & E0
