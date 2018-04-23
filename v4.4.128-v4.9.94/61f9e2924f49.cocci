//# pattern-1, witnesses: 6
@@
expression E0;
expression E1;
@@
- nft_set_elem_destroy(E0, E1)
+ nft_set_elem_destroy(E0, E1, true)
