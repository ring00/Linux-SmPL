//# pattern-1, witnesses: 8
@@
expression E1;
expression E2;
expression V0;
@@
- perf_aux_output_end(&V0->handle, E1, E2)
+ perf_aux_output_end(&V0->handle, E1)
//# pattern-4, witnesses: 5
@@
identifier csdev;
identifier fn;
identifier handle;
identifier sink_config;
@@
 void fn(struct coresight_device * csdev, struct perf_output_handle * handle, void * sink_config)
 {
     <...
- local_inc(&buf->lost)
+ perf_aux_output_flag(handle, PERF_AUX_FLAG_TRUNCATED)
     ...>
 }
