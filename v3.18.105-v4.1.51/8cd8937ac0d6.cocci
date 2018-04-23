//# pattern-1, witnesses: 2
@@
identifier elem;
identifier fn;
identifier s;
identifier set;
@@
  struct nft_hash_cmp_arg s = {
-    .key = &elem->key,
+    .key = elem->key.data,
 };
void * fn(const struct nft_set * set, const struct nft_set_elem * elem)
 {
     <...
 struct nft_hash_cmp_arg s = {
-    .key = &elem->key,
+    .key = elem->key.data,
 };
     ...>
 }
//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct nft_set_ops i = {
    .lookup = fn,
};
@@
typedef bool;
identifier ext;
identifier key;
identifier r0.fn;
identifier set;
@@
- bool fn(const struct nft_set * set, const struct nft_data * key, const struct nft_set_ext ** ext)
+ bool fn(const struct nft_set * set, const u32 * key, const struct nft_set_ext ** ext)
 { ... }
