//# pattern-5, witnesses: 3
@@
expression EC0;
identifier np;
identifier pl;
@@
 int phylink_parse_mode(struct phylink * pl, struct device_node * np)
 {
     <...
- pl->link_an_mode = EC0;
     ...>
 }
//# pattern-1, witnesses: 2
@@
expression E0;
@@
- E0 || pl->link_an_mode == MLO_AN_8023Z
+ E0 || pl->link_an_mode == MLO_AN_INBAND && phy_interface_mode_is_8023z(pl->link_interface)
