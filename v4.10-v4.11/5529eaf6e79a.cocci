//# pattern-2, witnesses: 4
@@
expression E0;
@@
- bool lock = channel->acquire_ring_lock;
- return hv_ringbuffer_write(channel, bufferlist, E0, lock);
+ return hv_ringbuffer_write(channel, bufferlist, E0);
