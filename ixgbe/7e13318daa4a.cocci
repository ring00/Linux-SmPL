//# pattern-2, witnesses: 6
@@
expression E0;
expression E1;
@@
- E0 | E1 | NETIF_F_GSO_IPIP | NETIF_F_GSO_SIT
+ E0 | E1 | NETIF_F_GSO_IPXIP4
//# pattern-6, witnesses: 4
@@
@@
- SKB_GSO_IPIP
+ SKB_GSO_IPXIP4
//# pattern-5, witnesses: 3
@@
@@
- SKB_GSO_SIT
+ SKB_GSO_IPXIP4
//# pattern-1, witnesses: 2
@@
@@
- SKB_GSO_GRE | SKB_GSO_GRE_CSUM | SKB_GSO_IPIP | SKB_GSO_SIT
+ SKB_GSO_GRE | SKB_GSO_GRE_CSUM | SKB_GSO_IPXIP4
