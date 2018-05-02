//# pattern-1, witnesses: 2
@@
@@
- rdmsrl(HV_X64_MSR_SINT0 + VMBUS_MESSAGE_SINT, shared_sint.as_uint64)
+ hv_get_synint_state(HV_X64_MSR_SINT0 + VMBUS_MESSAGE_SINT, shared_sint.as_uint64)
//# pattern-2, witnesses: 2
@@
@@
- wrmsrl(HV_X64_MSR_SINT0 + VMBUS_MESSAGE_SINT, shared_sint.as_uint64)
+ hv_set_synint_state
