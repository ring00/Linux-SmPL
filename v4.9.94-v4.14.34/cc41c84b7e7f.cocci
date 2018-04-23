//# pattern-4, witnesses: 3
@@
expression list listE0;
@@
- nf_ct_set(skb, nf_ct_untracked_get(listE0), IP_CT_NEW);
- nf_conntrack_get(skb_nfct(skb));
+ nf_ct_set(skb, NULL, IP_CT_UNTRACKED);
//# pattern-6, witnesses: 2
@@
expression E0;
@@
- nf_ct_untracked_status_or(E0);
