//# pattern-1, witnesses: 6
@@
expression E1;
expression ME2;
expression V0;
expression V3;
@@
- core_tpg_register(&V0, E1, &ME2, V3, TRANSPORT_TPG_TYPE_NORMAL)
+ core_tpg_register(&V0, E1, &ME2, SCSI_PROTOCOL_FCP)
//# pattern-5, witnesses: 3
@r0@
identifier i, fn;
@@
struct target_core_fabric_ops i = {
    .fabric_make_tpg = fn,
};
@@
expression V0;
identifier group;
identifier name;
identifier r0.fn;
identifier wwn;
@@
 struct se_portal_group * fn(struct se_wwn * wwn, struct config_group * group, const char * name)
 {
     <...
- core_tpg_register(&V0, wwn, &tpg->se_tpg, tpg, TRANSPORT_TPG_TYPE_NORMAL)
+ core_tpg_register(&V0, wwn, &tpg->se_tpg, tport->tport_proto_id)
     ...>
 }
