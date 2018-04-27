//# pattern-1, witnesses: 2
@@
@@
- nft_rule_clear(trans->ctx.net, nft_trans_rule(trans))
+ nft_clear(trans->ctx.net, nft_trans_rule)
