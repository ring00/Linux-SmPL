//# pattern-3, witnesses: 10
@@
expression list listE0;
@@
- rxrpc_free_skb(skb)
+ rxrpc_free_skb(listE0)
//# pattern-4, witnesses: 3
@@
@@
- rxrpc_free_skb(skb);
+ rxrpc_see_skb(skb);
+ rxrpc_free_skb(skb);
