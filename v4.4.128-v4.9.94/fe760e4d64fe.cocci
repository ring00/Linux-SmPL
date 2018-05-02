//# pattern-1, witnesses: 4
@@
expression E0;
@@
- hv_ringbuffer_write(&channel->outbound, bufferlist, E0, &signal)
+ hv_ringbuffer_write(&channel->outbound, bufferlist, E0, &signal, lock)
