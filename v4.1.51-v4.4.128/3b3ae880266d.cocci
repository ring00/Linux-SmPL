//# pattern-1, witnesses: 12
@@
expression E0;
expression V1;
@@
- tc_classify(skb, E0, &V1)
+ tc_classify(skb, E0, &V1, false)
//# pattern-3, witnesses: 2
@@
@@
- tc_classify_compat(skb, fl, &res)
+ tc_classify(skb, fl, &res, true)
