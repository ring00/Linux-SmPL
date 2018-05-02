//# pattern-4, witnesses: 3
@@
@@
- NETIF_F_GEN_CSUM
+ NETIF_F_HW_CSUM
//# pattern-1, witnesses: 2
@@
@@
- NETIF_F_V4_CSUM
+ (NETIF_F_HW_CSUM | NETIF_F_IP_CSUM)
