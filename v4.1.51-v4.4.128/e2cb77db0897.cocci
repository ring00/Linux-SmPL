//# pattern-1, witnesses: 8
@@
@@
- ip_local_out(skb)
+ ip_local_out(skb->sk, skb)
//# pattern-4, witnesses: 3
@@
expression list listE0;
@@
- ip_local_out_sk(listE0)
+ ip_local_out(listE0)
