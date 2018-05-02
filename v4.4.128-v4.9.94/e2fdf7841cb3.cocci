//# pattern-3, witnesses: 4
@@
expression E0;
@@
- int ret = ret;
- bool signal = false;
- ret = hv_ringbuffer_write(&channel->outbound, bufferlist, E0, &signal, lock, channel->signal_policy);
- if (ret == 0 && signal) {
- vmbus_setevent(channel);
- }
//# pattern-2, witnesses: 2
@@
@@
- int ret = ret;
- ret = hv_ringbuffer_write(&channel->outbound, bufferlist, 3, &signal, lock, channel->signal_policy);
- return ret;
+ return hv_ringbuffer_write(channel, bufferlist, 3, lock, true);
