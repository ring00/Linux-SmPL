//# pattern-1, witnesses: 2
@@
expression E1;
expression EC0;
@@
- struct tcf_ematch_tree t = t;
- err = tcf_em_tree_validate(tp, tb[EC0], &t);
- tcf_em_tree_change(tp, &E1->ematches, &t);
+ err = tcf_em_tree_validate(tp, tb[EC0], &E1->ematches);
