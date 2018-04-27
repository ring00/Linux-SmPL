//# pattern-4, witnesses: 2
@@
identifier cmd;
identifier dev;
identifier flags;
identifier mac_addr;
identifier msg;
identifier portid;
identifier rdev;
identifier seq;
identifier sinfo;
typedef u32;
@@
 int nl80211_send_station(struct sk_buff * msg, u32 cmd, u32 portid, u32 seq, int flags, struct cfg80211_registered_device * rdev, struct net_device * dev, const u8 * mac_addr, struct station_info * sinfo)
 { ... }
//# pattern-11, witnesses: 2
@@
expression EC0;
expression ME1;
identifier cmd;
identifier dev;
identifier flags;
identifier mac_addr;
identifier msg;
identifier portid;
identifier rdev;
identifier seq;
identifier sinfo;
typedef u32;
@@
 int nl80211_send_station(struct sk_buff * msg, u32 cmd, u32 portid, u32 seq, int flags, struct cfg80211_registered_device * rdev, struct net_device * dev, const u8 * mac_addr, struct station_info * sinfo)
 {
     <...
- nla_put_u64(msg, EC0, ME1)
+ nla_put_u64_64bit(msg, EC0, ME1, NL80211_STA_INFO_PAD)
     ...>
 }
//# pattern-12, witnesses: 2
@@
identifier cmd;
identifier dev;
identifier flags;
identifier mac_addr;
identifier msg;
identifier portid;
identifier rdev;
identifier seq;
identifier sinfo;
typedef u32;
@@
 int nl80211_send_station(struct sk_buff * msg, u32 cmd, u32 portid, u32 seq, int flags, struct cfg80211_registered_device * rdev, struct net_device * dev, const u8 * mac_addr, struct station_info * sinfo)
 { ... }
