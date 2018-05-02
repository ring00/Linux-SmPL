//# pattern-1, witnesses: 2
@@
@@
- if (vlan_tx_tag_present(skb)) {
- skb = vlan_insert_tag_set_proto(skb, skb->vlan_proto, vlan_tx_tag_get(skb));
- skb->vlan_tci = 0;
- }
+ skb = vlan_hwaccel_push_inside(skb);
//# pattern-3, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E4;
@@
- E0 = vlan_insert_tag_set_proto(E1, E2->vlan_proto, vlan_tx_tag_get(E3));
- E4->vlan_tci = 0;
+ E0 = __vlan_hwaccel_push_inside(E1);
