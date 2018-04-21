//# pattern-2, witnesses: 3
@@
@@
+ struct nfs_server * server = NFS_SERVER(dir);
+ if (!server->attr_bitmask[2] & FATTR4_WORD2_MODE_UMASK) {
+ }
