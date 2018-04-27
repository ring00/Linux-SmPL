//# pattern-2, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E4;
expression E5;
expression E6;
expression E7;
@@
- nf_hook_state_init(&state, E0, E1, E2, NFPROTO_BRIDGE, E3, E4, E5, E6, E7)
+ nf_hook_state_init(&state, E0, E1, NFPROTO_BRIDGE, E3, E4, E5, E6, E7)
