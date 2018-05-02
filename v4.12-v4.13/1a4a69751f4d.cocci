//# pattern-3, witnesses: 9
@@
expression E2;
expression E3;
expression EC0;
expression EC1;
expression ME4;
@@
- qed_chain_alloc(p_hwfn->cdev, EC0, EC1, QED_CHAIN_CNT_TYPE_U16, E2, E3, &ME4)
+ qed_chain_alloc(p_hwfn->cdev, EC0, EC1, QED_CHAIN_CNT_TYPE_U16, E2, E3, &ME4, NULL)
//# pattern-1, witnesses: 7
@@
expression E0;
expression E1;
expression E5;
expression E6;
expression EC2;
expression EC3;
expression EC4;
expression ME7;
@@
- E0->ops->common->chain_alloc(E1->cdev, EC2, EC3, EC4, E5, E6, &ME7)
+ E0->ops->common->chain_alloc(E1->cdev, EC2, EC3, EC4, E5, E6, &ME7, NULL)
