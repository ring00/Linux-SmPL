//# pattern-7, witnesses: 2
@@
expression ME0;
@@
- nft_validate_input_register(ME0)
+ nft_validate_register_load(ME0, plen)
//# pattern-10, witnesses: 2
@@
expression ME0;
@@
- nft_validate_input_register(ME0)
+ nft_validate_register_load(ME0, set->klen)
//# pattern-15, witnesses: 2
@@
@@
- nft_validate_input_register(priv->sreg)
+ nft_validate_register_load(priv->sreg, len)
