//# pattern-4, witnesses: 9
@@
expression E0;
@@
- E0->result
+ E0->result->u32
//# pattern-1, witnesses: 2
@@
@@
- struct nvme_completion cqe = cqe;
- if (ret) {
- nvmf_log_connect_error(ctrl, ret, (cqe.result), &cmd, data);
- }
+ union nvme_result res = res;
+ if (ret) {
+ nvmf_log_connect_error(ctrl, ret, (res.u32), &cmd, data);
+ }
//# pattern-12, witnesses: 2
@@
identifier fn;
identifier req;
@@
 void fn(struct nvmet_req * req)
 {
     <...
- req->rsp->result16
+ req->rsp->result->u16
     ...>
 }
//# pattern-13, witnesses: 2
@@
identifier buffer;
identifier buflen;
identifier dev;
identifier fid;
identifier fn;
identifier nsid;
identifier result;
@@
 int fn(struct nvme_ctrl * dev, unsigned int fid, unsigned int nsid, void * buffer, size_t buflen, u32 * result)
 {
     <...
- struct nvme_completion cqe = cqe;
- if (ret >= 0 && result) {
- *result = (cqe.result);
- }
+ union nvme_result res = res;
+ if (ret >= 0 && result) {
+ *result = (res.u32);
+ }
     ...>
 }
//# pattern-15, witnesses: 2
@@
@@
- struct nvme_completion cqe = cqe;
- if (ret >= 0) {
- *val = (cqe.result64);
- }
+ union nvme_result res = res;
+ if (ret >= 0) {
+ *val = (res.u64);
+ }
