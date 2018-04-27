//# pattern-1, witnesses: 2
@@
expression E0;
@@
- if (txrc.rate_idx_mask == 1 << E0->n_bitrates - 1) {
- txrc.max_rate_idx = -1;
- }
