//# pattern-1, witnesses: 2
@@
expression E1;
expression V0;
@@
- nfs_initiate_pgio(ds_clnt, hdr, &V0, E1, RPC_TASK_SOFTCONN)
+ nfs_initiate_pgio(ds_clnt, hdr, NFS_PROTO(hdr->inode), &V0, E1, RPC_TASK_SOFTCONN)
