//# pattern-1, witnesses: 18
@@
expression E0;
expression E2;
expression EC1;
@@
- nla_put_u64(E0, EC1, E2)
+ nla_put_u64_64bit(E0, EC1, E2, NL80211_ATTR_PAD)
//# pattern-3, witnesses: 3
@@
expression EC0;
expression ME1;
identifier cb;
identifier flags;
identifier intbss;
identifier msg;
identifier rdev;
identifier seq;
typedef u32;
identifier wdev;
@@
 int nl80211_send_bss(struct sk_buff * msg, struct netlink_callback * cb, u32 seq, int flags, struct cfg80211_registered_device * rdev, struct wireless_dev * wdev, struct cfg80211_internal_bss * intbss)
 {
     <...
- nla_put_u64(msg, EC0, ME1)
+ nla_put_u64_64bit(msg, EC0, ME1, NL80211_BSS_PAD)
     ...>
 }
