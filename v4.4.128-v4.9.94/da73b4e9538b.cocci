//# pattern-3, witnesses: 2
@@
@@
- gre_parse_header(skb, &tpi, &csum_err)
+ gre_parse_header(skb, &tpi, &csum_err, htons(ETH_P_IP))
