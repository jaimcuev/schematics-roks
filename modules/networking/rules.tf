resource "ibm_is_security_group_rule" "security_group_rule_tcp" {
  group     = ibm_is_vpc.vpc.default_security_group
  direction = "inbound"
  tcp {
    port_min = 30000
    port_max = 32767
  }
}

resource "ibm_is_security_group_rule" "security_group_rule_udp" {
  group     = ibm_is_vpc.vpc.default_security_group
  direction = "inbound"
  udp {
    port_min = 30000
    port_max = 32767
  }
}