//# pattern-2, witnesses: 50
@@
expression E0;
@@
- vlan_tx_tag_present(E0)
+ skb_vlan_tag_present(E0)
//# pattern-1, witnesses: 28
@@
@@
- vlan_tx_tag_get(skb)
+ skb_vlan_tag_get(skb)
//# pattern-4, witnesses: 6
@@
@@
- vlan_tx_tag_get
+ skb_vlan_tag_get
