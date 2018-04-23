//# pattern-1, witnesses: 4
@@
@@
- svc->net
+ net_ipvs(svc->net)
//# pattern-4, witnesses: 4
@@
@@
- cp->ipvs->net
+ cp->ipvs
//# pattern-8, witnesses: 2
@@
identifier af;
identifier fn;
identifier iph;
identifier skb;
@@
 struct ip_vs_conn * fn(int af, const struct sk_buff * skb, const struct ip_vs_iphdr * iph)
 {
     <...
- struct net * net = skb_net(skb);
- ah_esp_conn_fill_param_proto(net, af, iph, &p);
+ struct netns_ipvs * ipvs = net_ipvs(skb_net(skb));
+ ah_esp_conn_fill_param_proto(ipvs, af, iph, &p);
     ...>
 }
