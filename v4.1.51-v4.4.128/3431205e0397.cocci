//# pattern-2, witnesses: 3
@@
@@
- offset -= skb->data - skb_mac_header(skb);
//# pattern-3, witnesses: 3
@@
expression E0;
expression E1;
@@
- E0 && bpf_skb_clone_unwritable(skb, offset + E1)
+ E0 && !skb_clone_writable(skb, offset + E1)
