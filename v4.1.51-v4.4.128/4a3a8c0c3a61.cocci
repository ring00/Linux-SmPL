//# pattern-4, witnesses: 2
@@
identifier flags;
expression list listE0;
identifier msg;
identifier phy;
identifier portid;
identifier seq;
typedef u32;
@@
 int ieee802154_nl_fill_phy(struct sk_buff * msg, u32 portid, u32 seq, int flags, struct wpan_phy * phy)
 {
     <...
- mutex_unlock(&phy->pib_lock)
+ rtnl_unlock(listE0)
     ...>
 }
