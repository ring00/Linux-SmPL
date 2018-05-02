//# pattern-5, witnesses: 2
@r0@
identifier i, fn;
@@
struct phy_driver i = {
    .link_change_notify = fn,
};
@@
expression IL0;
identifier phydev;
@@
- void at803x_link_change_notify(struct phy_device * phydev)
+ void at803x_link_change_notify(struct phy_device * phydev)
 {
     <...
- gpiod_set_value(priv->gpiod_reset, IL0)
+ phy_device_reset(phydev, IL0)
     ...>
 }
