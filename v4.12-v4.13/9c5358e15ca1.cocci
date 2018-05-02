//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct nvmf_transport_ops i = {
    .create_ctrl = fn,
};
@@
expression ME1;
expression V0;
identifier dev;
identifier opts;
@@
 struct nvme_ctrl * nvme_fc_create_ctrl(struct device * dev, struct nvmf_ctrl_options * opts)
 {
     <...
- nvme_fc_parse_address(&V0, ME1)
+ nvme_fc_parse_traddr(&V0, ME1, NVMF_TRADDR_SIZE)
     ...>
 }
