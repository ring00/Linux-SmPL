//# pattern-2, witnesses: 18
@@
@@
- vlan_tx_tag_present(skb)
+ skb_vlan_tag_present(skb)
//# pattern-1, witnesses: 10
@@
@@
- vlan_tx_tag_get(skb)
+ skb_vlan_tag_get(skb)
//# pattern-4, witnesses: 4
@@
@@
- vlan_tx_tag_get
+ skb_vlan_tag_get
