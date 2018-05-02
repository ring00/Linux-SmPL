//# pattern-1, witnesses: 2
@@
@@
- bvec_iter_advance(bip->bip_vec, &bip->bip_iter, cur_len);
+ if (!bvec_iter_advance(bip->bip_vec, &bip->bip_iter, cur_len)) {
+ return -EIO;
+ }
