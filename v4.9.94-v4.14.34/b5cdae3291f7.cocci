//# pattern-1, witnesses: 2
@@
expression E0;
@@
- !E0->features & NETIF_F_GRO
+ netif_elide_gro(E0)
