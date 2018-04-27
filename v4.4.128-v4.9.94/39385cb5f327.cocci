//# pattern-4, witnesses: 2
@@
expression E0;
expression E1;
@@
- hci_get_route(&E0->dst, &E1->src)
+ hci_get_route(&E0->dst, &E1->src, BDADDR_BREDR)
