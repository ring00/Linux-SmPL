//# pattern-1, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
@@
- ct = nf_conntrack_alloc(E0, E1, &t, &t, GFP_KERNEL);
- nf_conntrack_tmpl_insert(E2, ct);
+ ct = nf_ct_tmpl_alloc(E0, E1, GFP_KERNEL);
+ nf_conntrack_get(&ct->ct_general);
//# pattern-2, witnesses: 2
@@
expression E0;
expression E1;
@@
- struct nf_conntrack_tuple t = t;
- memset(&t, 0, sizeof(unsigned long));
- ct = nf_conntrack_alloc(E0, E1, &t, &t, GFP_KERNEL);
+ ct = nf_ct_tmpl_alloc(E0, E1, GFP_KERNEL);
+ __set_bit(IPS_CONFIRMED_BIT, &ct->status);
