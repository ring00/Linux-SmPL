//# pattern-1, witnesses: 2
@@
expression E1;
expression E2;
expression V0;
@@
- stm_write(stm->data, V0->output.master, E1, E2, count);
+ count = stm_write(stm->data, V0->output.master, E1, E2, count);
