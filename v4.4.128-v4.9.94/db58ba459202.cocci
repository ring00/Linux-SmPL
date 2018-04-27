//# pattern-3, witnesses: 3
@@
expression list listE0;
@@
- skb_try_make_writable(listE0)
+ bpf_try_make_writable(listE0)
//# pattern-1, witnesses: 2
@@
@@
- if (at_ingress) {
- }
+ if (at_ingress) {
+ bpf_compute_data_end(skb);
+ }
