//# pattern-2, witnesses: 6
@@
expression V0;
@@
- V0->callbacks.gro_receive(head, skb)
+ call_gro_receive(V0->callbacks.gro_receive, head, skb)
