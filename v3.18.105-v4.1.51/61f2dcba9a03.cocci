//# pattern-3, witnesses: 2
@@
expression E0;
@@
- ieee802154_xmit_complete(E0, skb)
+ ieee802154_xmit_complete(E0, skb, false)
