//# pattern-3, witnesses: 3
@@
identifier ctx;
identifier msg_type;
identifier size;
typedef u32;
@@
 struct nft_trans * nft_trans_alloc(const struct nft_ctx * ctx, int msg_type, u32 size)
 {
     <...
- struct nft_trans * trans = trans;
- trans = kzalloc(sizeof(unsigned long) + size, GFP_KERNEL);
     ...>
 }
