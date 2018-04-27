//# pattern-1, witnesses: 12
@@
expression E0;
expression E1;
expression E2;
expression E3;
@@
- E0->nfct = &E1->ct_general;
- E2->nfctinfo = E3;
+ nf_ct_set(E0, E1, E3);
//# pattern-2, witnesses: 2
@@
@@
- nskb->nfct = nfct;
- nskb->nfctinfo = ctinfo;
+ nf_ct_set(nskb, nfct, ctinfo);
