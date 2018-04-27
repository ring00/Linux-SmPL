//# pattern-2, witnesses: 24
@@
expression E0;
expression EC1;
identifier ctx;
identifier expr;
identifier fn;
identifier tb;
@@
 int fn(const struct nft_ctx * ctx, const struct nft_expr * expr, const struct nlattr *const * tb)
 {
     <...
- E0 = ntohl(nla_get_be32(tb[EC1]))
+ E0 = nft_parse_register(tb[EC1])
     ...>
 }
//# pattern-1, witnesses: 23
@@
expression EC0;
expression ME1;
identifier expr;
identifier fn;
identifier skb;
@@
 int fn(struct sk_buff * skb, const struct nft_expr * expr)
 {
     <...
- nla_put_be32(skb, EC0, htonl(ME1))
+ nft_dump_register(skb, EC0, ME1)
     ...>
 }
