//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct armada_thermal_data i = {
    .init_sensor = fn,
};
@@
identifier pdev;
identifier priv;
@@
 void armada375_init_sensor(struct platform_device * pdev, struct armada_thermal_priv * priv)
 {
     <...
- bool quirk_needed = !!of_device_is_compatible(pdev->dev.of_node, "marvell,armada375-z1-thermal");
- if (quirk_needed) {
- }
     ...>
 }
