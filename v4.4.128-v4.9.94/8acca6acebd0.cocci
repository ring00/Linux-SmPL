//# pattern-1, witnesses: 2
@@
expression V0;
identifier cb;
identifier dev;
identifier secy;
identifier skb;
@@
 int dump_secy(struct macsec_secy * secy, struct net_device * dev, struct sk_buff * skb, struct netlink_callback * cb)
 {
     <...
- nla_put_u64(skb, MACSEC_SA_ATTR_KEYID, V0->key.id)
+ nla_put(skb, MACSEC_SA_ATTR_KEYID, MACSEC_KEYID_LEN, V0->key.id)
     ...>
 }
//# pattern-2, witnesses: 2
@@
expression V0;
@@
- V0->key.id = nla_get_u64(tb_sa[MACSEC_SA_ATTR_KEYID]);
+ nla_memcpy(V0->key.id, tb_sa[MACSEC_SA_ATTR_KEY], MACSEC_KEYID_LEN);
