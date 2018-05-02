//# pattern-1, witnesses: 8
@@
identifier s;
@@
- struct irq_domain_ops s = {
+ const struct irq_domain_ops s = {
 };
//# pattern-5, witnesses: 2
@@
identifier s;
@@
- struct regmap_irq_chip s = {
+ const struct regmap_irq_chip s = {
 };
//# pattern-8, witnesses: 2
@@
identifier s;
@@
- struct regmap_irq_chip s = {
+ const struct regmap_irq_chip s = {
 };
