//# pattern-3, witnesses: 2
@@
identifier s;
@@
 struct iscsit_transport s = {
+    .rdma_shutdown = false,
 };
//# pattern-4, witnesses: 2
@@
statement S0;
identifier conn;
identifier fn;
@@
 void fn(struct iscsi_conn * conn)
 {
     <...
- if (conn->conn_transport->transport_type == ISCSI_TCP || conn->conn_transport->transport_type == ISCSI_HW_OFFLOAD) { S0 }
+ if (!conn->conn_transport->rdma_shutdown) { S0 }
     ...>
 }
