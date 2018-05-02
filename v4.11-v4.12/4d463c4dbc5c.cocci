//# pattern-2, witnesses: 4
@@
expression S0;
identifier dev;
identifier extack;
identifier prog;
@@
 int virtnet_xdp_set(struct net_device * dev, struct bpf_prog * prog, struct netlink_ext_ack * extack)
 {
     <...
- NL_SET_ERR_MSG(extack, S0)
+ NL_SET_ERR_MSG_MOD(extack)
     ...>
 }
//# pattern-1, witnesses: 2
@@
identifier dp;
identifier extack;
identifier nn;
@@
 int nfp_net_check_config(struct nfp_net * nn, struct nfp_net_dp * dp, struct netlink_ext_ack * extack)
 {
     <...
- NL_MOD_TRY_SET_ERR_MSG(extack)
+ NL_SET_ERR_MSG_MOD(extack)
     ...>
 }
