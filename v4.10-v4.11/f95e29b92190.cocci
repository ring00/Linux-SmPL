//# pattern-2, witnesses: 3
@@
expression E0;
expression E1;
expression E3;
expression EC2;
@@
- intel_lpe_audio_notify(dev_priv, E0, port, E1, EC2, E3)
+ intel_lpe_audio_notify(dev_priv, E0, port, pipe, E1, EC2, E3)
