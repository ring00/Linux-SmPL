//# pattern-1, witnesses: 2
@@
expression E0;
@@
- E0 && tun_info->mode == IP_TUNNEL_INFO_RX
+ E0 && !tun_info->mode & IP_TUNNEL_INFO_TX
