//# pattern-1, witnesses: 3
@@
expression E0;
expression E1;
expression IL2;
identifier data;
identifier host;
@@
 int sdhci_adma_table_pre(struct sdhci_host * host, struct mmc_data * data)
 {
     <...
- sdhci_adma_write_desc(desc, E0, E1, IL2)
+ sdhci_adma_write_desc(host, desc, E0, E1, IL2)
     ...>
 }
