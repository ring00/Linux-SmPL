//# pattern-3, witnesses: 2
@@
@@
- memcpy(&data->hostid, &ctrl->opts->host->id, sizeof(unsigned long))
+ uuid_copy(&data->hostid, &ctrl->opts->host->id)
//# pattern-4, witnesses: 2
@@
@@
- uuid_be_gen(&host->id)
+ uuid_gen(&host->id)
