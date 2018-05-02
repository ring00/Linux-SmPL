//# pattern-2, witnesses: 4
@@
@@
- wdt->base + WDT_EN
+ wdt_addr(wdt, WDT_EN)
//# pattern-4, witnesses: 2
@@
@@
- wdt->base + WDT_RST
+ wdt_addr(wdt, WDT_RST)
//# pattern-6, witnesses: 2
@@
@@
- wdt->base + WDT_BITE_TIME
+ wdt_addr(wdt, WDT_BITE_TIME)
