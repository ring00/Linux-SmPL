//# pattern-2, witnesses: 2
@@
@@
- of_node_put(sd->of_node)
+ fwnode_handle_put(sd->fwnode)
//# pattern-4, witnesses: 2
@@
@@
- v4l2_flash_init(dev, sub_node, fled_cdev, NULL, &v4l2_flash_ops, &v4l2_sd_cfg)
+ v4l2_flash_init(dev, of_fwnode_handle(sub_node), fled_cdev, NULL, &v4l2_flash_ops, &v4l2_sd_cfg)
