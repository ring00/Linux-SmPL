//# pattern-1, witnesses: 2
@@
expression E0;
expression E2;
identifier PV1;
@@
- genl_notify(E0, PV1, genl_info_net(info), info->snd_portid, E2, info->nlhdr, GFP_KERNEL)
+ genl_notify(E0, PV1, info, E2, GFP_KERNEL)
