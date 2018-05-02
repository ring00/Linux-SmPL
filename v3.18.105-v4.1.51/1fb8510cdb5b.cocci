//# pattern-5, witnesses: 3
@@
expression E0;
expression E1;
expression E2;
@@
- snd_pcm_stream_lock(E0->substream);
- snd_pcm_stop(E1->substream, SNDRV_PCM_STATE_XRUN);
- snd_pcm_stream_unlock(E2->substream);
+ snd_pcm_stop_xrun(E0->substream);
//# pattern-1, witnesses: 2
@@
expression EC0;
expression ME1;
expression ME2;
expression ME3;
identifier fn;
identifier ua;
@@
 void fn(struct ua101 * ua)
 {
     <...
- unsigned long flags = flags;
- if (test_bit(EC0, &ua->states)) {
- snd_pcm_stream_lock_irqsave(ME1.substream, flags);
- snd_pcm_stop(ME2.substream, SNDRV_PCM_STATE_XRUN);
- snd_pcm_stream_unlock_irqrestore(ME3.substream, flags);
- }
+ if (test_bit(EC0, &ua->states)) {
+ snd_pcm_stop_xrun(ME1.substream);
+ }
     ...>
 }
//# pattern-2, witnesses: 2
@@
expression ME0;
expression ME1;
expression ME2;
expression ME3;
@@
- unsigned long flags = flags;
- if (rt) {
- if (ME0.instance) {
- snd_pcm_stream_lock_irqsave(ME1.instance, flags);
- snd_pcm_stop(ME2.instance, SNDRV_PCM_STATE_XRUN);
- snd_pcm_stream_unlock_irqrestore(ME3.instance, flags);
- }
- }
+ if (rt) {
+ if (ME0.instance) {
+ snd_pcm_stop_xrun(ME1.instance);
+ }
+ }
