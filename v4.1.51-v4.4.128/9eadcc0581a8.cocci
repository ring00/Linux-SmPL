//# pattern-2, witnesses: 22
@@
@@
- mmc_host_clk_hold(host);
//# pattern-1, witnesses: 21
@@
@@
- mmc_host_clk_release(host);
//# pattern-7, witnesses: 3
@@
@@
- mmc_host_clk_rate(card->host)
+ card->host->ios.clock
