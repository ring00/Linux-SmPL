//# pattern-15, witnesses: 5
@@
expression list listE0;
@@
- nla_total_size(listE0)
+ nla_total_size_64bit(listE0)
//# pattern-8, witnesses: 4
@@
expression EC0;
@@
- nla_put_be64(skb, EC0, ())
+ nla_put_be64(skb, EC0, (), NFTA_COUNTER_PAD)
//# pattern-3, witnesses: 3
@@
expression EC0;
identifier acct;
identifier event;
identifier portid;
identifier seq;
identifier skb;
identifier type;
typedef u32;
@@
 int nfnl_acct_fill_info(struct sk_buff * skb, u32 portid, u32 seq, u32 type, int event, struct nf_acct * acct)
 {
     <...
- nla_put_be64(skb, EC0, ())
+ nla_put_be64(skb, EC0, (), NFACCT_PAD)
     ...>
 }
//# pattern-1, witnesses: 2
@@
expression EC0;
identifier acct;
identifier dir;
identifier skb;
identifier type;
@@
 int dump_counters(struct sk_buff * skb, struct nf_conn_acct * acct, enum ip_conntrack_dir dir, int type)
 {
     <...
- nla_put_be64(skb, EC0, ())
+ nla_put_be64(skb, EC0, (), CTA_COUNTERS_PAD)
     ...>
 }
//# pattern-9, witnesses: 2
@@
expression IL0;
expression IL1;
@@
- nla_total_size(8) + nla_total_size(IL0) + nla_total_size(IL1) + nla_total_size(1) + nla_total_size(1)
+ nla_total_size_64bit(8) + nla_total_size(IL1) + nla_total_size(IL0) + nla_total_size(1) + nla_total_size(1)
//# pattern-11, witnesses: 2
@@
expression EC0;
identifier ct;
identifier skb;
@@
 int ctnetlink_dump_timestamp(struct sk_buff * skb, const struct nf_conn * ct)
 {
     <...
- nla_put_be64(skb, EC0, ())
+ nla_put_be64(skb, EC0, (), CTA_TIMESTAMP_PAD)
     ...>
 }
//# pattern-19, witnesses: 2
@@
expression EC0;
identifier limit;
identifier skb;
identifier type;
@@
 int nft_limit_dump(struct sk_buff * skb, const struct nft_limit * limit, enum nft_limit_type type)
 {
     <...
- nla_put_be64(skb, EC0, ())
+ nla_put_be64(skb, EC0, (), NFTA_LIMIT_PAD)
     ...>
 }
