//# pattern-4, witnesses: 2
@@
identifier fn;
identifier mt9p031;
@@
 void fn(struct mt9p031 * mt9p031)
 {
     <...
- if (gpio_is_valid(mt9p031->reset)) {
- gpio_set_value(mt9p031->reset, 0);
- }
+ if (mt9p031->reset) {
+ gpiod_set_value(mt9p031->reset, 1);
+ }
     ...>
 }
