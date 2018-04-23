//# pattern-1, witnesses: 19
@@
expression E0;
@@
- E0->flags & NFT_BASE_CHAIN
+ nft_is_base_chain(E0)
