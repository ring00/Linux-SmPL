//# pattern-10, witnesses: 4
@@
expression E0;
@@
- E0->mgid
+ E0->mcast_addr.mgid
//# pattern-1, witnesses: 2
@@
@@
- rvt_mcast_find(&ibp->rvp, &hdr->u.l.grh.dgid)
+ rvt_mcast_find(&ibp->rvp, &hdr->u.l.grh.dgid, lid)
