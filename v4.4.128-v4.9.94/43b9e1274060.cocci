//# pattern-1, witnesses: 2
@@
statement S0;
@@
- if (nla_put_64bit(skb, RTA_MFC_STATS, sizeof(unsigned long), &mfcs, RTA_PAD) < 0) { S0 }
+ if (nla_put_64bit(skb, RTA_MFC_STATS, sizeof(unsigned long), &mfcs, RTA_PAD) || nla_put_u64_64bit(skb, RTA_EXPIRES, jiffies_to_clock_t(c->mfc_un.res.lastuse), RTA_PAD)) { S0 }
