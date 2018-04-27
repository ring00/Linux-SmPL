//# pattern-1, witnesses: 2
@@
expression E0;
@@
- nskb->csum = E0
+ SKB_GSO_CB(nskb)->csum = E0
