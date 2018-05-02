//# pattern-4, witnesses: 3
@@
expression V0;
identifier fn;
identifier req;
@@
 int fn(struct akcipher_request * req)
 {
     <...
- mpi_read_buffer(V0, req->dst, req->dst_len, &req->dst_len, &sign)
+ mpi_write_to_sgl(V0, req->dst, &req->dst_len, &sign)
     ...>
 }
//# pattern-9, witnesses: 3
@@
expression list listE0;
@@
- mpi_read_raw_data(listE0)
+ mpi_read_raw_from_sgl(listE0)
