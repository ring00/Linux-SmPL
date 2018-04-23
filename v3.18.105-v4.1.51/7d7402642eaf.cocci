//# pattern-1, witnesses: 5
@@
@@
- elem.key
+ elem.key.val
//# pattern-3, witnesses: 3
@@
identifier elem;
identifier fn;
identifier set;
@@
 void * fn(const struct nft_set * set, const struct nft_set_elem * elem)
 {
     <...
- elem->key
+ elem->key.val
     ...>
 }
//# pattern-2, witnesses: 2
@@
expression E0;
@@
- E0 > FIELD_SIZEOF
+ E0 > NFT_DATA_VALUE_MAXLEN
