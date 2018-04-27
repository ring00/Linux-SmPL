//# pattern-3, witnesses: 2
@@
identifier PV0;
@@
- ip_options_echo(&icmp_param->replyopts.opt.opt, PV0)
+ ip_options_echo(net, &icmp_param->replyopts.opt.opt, PV0)
