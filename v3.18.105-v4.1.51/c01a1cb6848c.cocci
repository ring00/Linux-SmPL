//# pattern-1, witnesses: 3
@@
expression E0;
expression E1;
@@
- skb = vlan_put_tag(skb, E0, E1);
- if (!skb) {
- }
+ __vlan_hwaccel_put_tag(skb, E0, E1);
