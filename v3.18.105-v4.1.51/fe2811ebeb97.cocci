//# pattern-12, witnesses: 5
@@
expression E0;
@@
- &E0->key
+ nft_set_ext_key(&E0->ext)
//# pattern-2, witnesses: 3
@@
expression BO0;
@@
- if (BO0) {
- }
//# pattern-14, witnesses: 3
@@
expression E0;
@@
- E0->data
+ nft_set_ext_data(&E0->ext)
//# pattern-4, witnesses: 2
@r0@
identifier i, fn;
@@
struct nft_set_ops i = {
    .estimate = fn,
};
@@
expression V0;
typedef bool;
identifier desc;
identifier est;
identifier features;
identifier r0.fn;
typedef u32;
@@
 bool fn(const struct nft_set_desc * desc, u32 features, struct nft_set_estimate * est)
 {
     <...
- if (features & NFT_SET_MAP) {
- V0 += FIELD_SIZEOF;
- }
     ...>
 }
