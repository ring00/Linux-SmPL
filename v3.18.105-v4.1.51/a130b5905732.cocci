//# pattern-3, witnesses: 8
@@
expression E0;
expression EC1;
@@
- mlx4_cmd(dev, mailbox->dma, E0, 1, MLX4_CMD_SET_PORT, MLX4_CMD_TIME_CLASS_B, EC1)
+ mlx4_cmd(dev, mailbox->dma, E0, MLX4_SET_PORT_ETH_OPCODE, MLX4_CMD_SET_PORT, MLX4_CMD_TIME_CLASS_B, EC1)
//# pattern-1, witnesses: 2
@@
expression E0;
@@
- mlx4_cmd(E0, mailbox->dma, port, 0, MLX4_CMD_SET_PORT, MLX4_CMD_TIME_CLASS_B, MLX4_CMD_WRAPPED)
+ mlx4_cmd(E0, mailbox->dma, port, MLX4_SET_PORT_IB_OPCODE, MLX4_CMD_SET_PORT, MLX4_CMD_TIME_CLASS_B, MLX4_CMD_WRAPPED)
