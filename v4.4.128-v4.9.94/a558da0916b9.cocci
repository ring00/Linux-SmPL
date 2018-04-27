//# pattern-1, witnesses: 4
@@
expression E1;
expression EC0;
@@
- nla_put_hwaddr(msg, EC0, E1)
+ nla_put_hwaddr(msg, EC0, E1, IEEE802154_ATTR_PAD)
