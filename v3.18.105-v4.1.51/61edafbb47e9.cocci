//# pattern-1, witnesses: 2
@@
@@
- nft_trans_destroy(trans);
//# pattern-2, witnesses: 2
@@
@@
- nft_data_uninit(&te->elem.key, NFT_DATA_VALUE);
//# pattern-3, witnesses: 2
@@
expression E0;
@@
- kfree(E0);
//# pattern-8, witnesses: 2
@@
@@
- struct nft_set_ext * ext = ext;
