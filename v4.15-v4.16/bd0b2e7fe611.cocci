//# pattern-2, witnesses: 4
@@
expression E0;
expression E1;
@@
- if (E0->xdp_prog) {
- bpf_prog_put(E1->xdp_prog);
- }
