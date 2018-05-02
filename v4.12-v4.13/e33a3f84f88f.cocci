//# pattern-1, witnesses: 3
@@
statement S0;
@@
- if (priv->config.reset_n_io) { S0 }
+ if (gpio_is_valid(priv->config.reset_n_io)) { S0 }
