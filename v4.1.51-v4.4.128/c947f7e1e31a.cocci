//# pattern-5, witnesses: 3
@@
@@
- &sdata->mib_lock;
//# pattern-7, witnesses: 2
@@
@@
- &sdata->mib_lock;
//# pattern-11, witnesses: 2
@@
identifier hdr;
identifier sdata;
identifier skb;
@@
 int ieee802154_subif_frame(struct ieee802154_sub_if_data * sdata, struct sk_buff * skb, const struct ieee802154_hdr * hdr)
 {
     <...
- &sdata->mib_lock;
     ...>
 }
