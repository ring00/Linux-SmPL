//# pattern-1, witnesses: 8
@@
expression E0;
@@
- skb_sender_cpu_clear(E0);
//# pattern-2, witnesses: 3
@@
@@
- if (!skb->sk) {
- skb_sender_cpu_clear(skb);
- }
