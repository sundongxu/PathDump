ovs-ofctl add-flow br1 table=0,priority=100,in_port=3,ip,actions=goto_table:1
ovs-ofctl add-flow br1 table=0,priority=100,in_port=4,ip,actions=goto_table:1
ovs-ofctl add-flow br1 table=0,priority=100,in_port=1,ip,actions=goto_table:1
ovs-ofctl add-flow br1 table=0,priority=100,in_port=2,ip,actions=goto_table:1
ovs-ofctl add-flow br1 priority=100,table=1,in_port=3,ip,nw_src=10.1.0.0/16,nw_dst=10.1.0.0/16,actions=goto_table:2
ovs-ofctl add-flow br1 priority=100,table=1,in_port=4,ip,nw_src=10.1.0.0/16,nw_dst=10.1.0.0/16,actions=goto_table:2
ovs-ofctl add-flow br1 priority=99,table=1,in_port=3,ip,nw_src=10.1.0.0/16,actions=push_vlan:0x8100,set_field:1-\>vlan_vid,goto_table:2
ovs-ofctl add-flow br1 priority=99,table=1,in_port=4,ip,nw_src=10.1.0.0/16,actions=push_vlan:0x8100,set_field:2-\>vlan_vid,goto_table:2
ovs-ofctl add-flow br1 priority=98,table=1,ip,actions=goto_table:2
ovs-ofctl add-flow br1 table=2,priority=100,ip,nw_dst=10.1.1.2/32,actions=output:1
ovs-ofctl add-flow br1 table=2,priority=100,ip,nw_dst=10.1.1.3/32,actions=output:2
ovs-ofctl add-flow br1 table=2,priority=99,ip,nw_src=10.1.1.2/32,actions=output:3
ovs-ofctl add-flow br1 table=2,priority=99,ip,nw_src=10.1.1.3/32,actions=output:4
ovs-ofctl add-flow br2 table=0,priority=100,in_port=7,ip,actions=goto_table:6
ovs-ofctl add-flow br2 table=0,priority=100,in_port=8,ip,actions=goto_table:6
ovs-ofctl add-flow br2 table=0,priority=100,in_port=5,ip,actions=goto_table:6
ovs-ofctl add-flow br2 table=0,priority=100,in_port=6,ip,actions=goto_table:6
ovs-ofctl add-flow br2 priority=100,table=6,in_port=7,ip,nw_src=10.1.0.0/16,nw_dst=10.1.0.0/16,actions=goto_table:7
ovs-ofctl add-flow br2 priority=100,table=6,in_port=8,ip,nw_src=10.1.0.0/16,nw_dst=10.1.0.0/16,actions=goto_table:7
ovs-ofctl add-flow br2 priority=99,table=6,in_port=7,ip,nw_src=10.1.0.0/16,actions=push_vlan:0x8100,set_field:3-\>vlan_vid,goto_table:7
ovs-ofctl add-flow br2 priority=99,table=6,in_port=8,ip,nw_src=10.1.0.0/16,actions=push_vlan:0x8100,set_field:4-\>vlan_vid,goto_table:7
ovs-ofctl add-flow br2 priority=98,table=6,ip,actions=goto_table:7
ovs-ofctl add-flow br2 table=7,priority=100,ip,nw_dst=10.1.2.2/32,actions=output:5
ovs-ofctl add-flow br2 table=7,priority=100,ip,nw_dst=10.1.2.3/32,actions=output:6
ovs-ofctl add-flow br2 table=7,priority=99,ip,nw_src=10.1.2.2/32,actions=output:7
ovs-ofctl add-flow br2 table=7,priority=99,ip,nw_src=10.1.2.3/32,actions=output:8
ovs-ofctl add-flow br3 table=0,priority=100,in_port=11,ip,actions=goto_table:11
ovs-ofctl add-flow br3 table=0,priority=100,in_port=12,ip,actions=goto_table:11
ovs-ofctl add-flow br3 table=0,priority=100,in_port=9,ip,actions=goto_table:11
ovs-ofctl add-flow br3 table=0,priority=100,in_port=10,ip,actions=goto_table:11
ovs-ofctl add-flow br3 priority=100,table=11,in_port=11,ip,nw_src=10.2.0.0/16,nw_dst=10.2.0.0/16,actions=goto_table:12
ovs-ofctl add-flow br3 priority=100,table=11,in_port=12,ip,nw_src=10.2.0.0/16,nw_dst=10.2.0.0/16,actions=goto_table:12
ovs-ofctl add-flow br3 priority=99,table=11,in_port=11,ip,nw_src=10.2.0.0/16,actions=push_vlan:0x8100,set_field:1-\>vlan_vid,goto_table:12
ovs-ofctl add-flow br3 priority=99,table=11,in_port=12,ip,nw_src=10.2.0.0/16,actions=push_vlan:0x8100,set_field:2-\>vlan_vid,goto_table:12
ovs-ofctl add-flow br3 priority=98,table=11,ip,actions=goto_table:12
ovs-ofctl add-flow br3 table=12,priority=100,ip,nw_dst=10.2.1.2/32,actions=output:9
ovs-ofctl add-flow br3 table=12,priority=100,ip,nw_dst=10.2.1.3/32,actions=output:10
ovs-ofctl add-flow br3 table=12,priority=99,ip,nw_src=10.2.1.2/32,actions=output:11
ovs-ofctl add-flow br3 table=12,priority=99,ip,nw_src=10.2.1.3/32,actions=output:12
ovs-ofctl add-flow br4 table=0,priority=100,in_port=15,ip,actions=goto_table:16
ovs-ofctl add-flow br4 table=0,priority=100,in_port=16,ip,actions=goto_table:16
ovs-ofctl add-flow br4 table=0,priority=100,in_port=13,ip,actions=goto_table:16
ovs-ofctl add-flow br4 table=0,priority=100,in_port=14,ip,actions=goto_table:16
ovs-ofctl add-flow br4 priority=100,table=16,in_port=15,ip,nw_src=10.2.0.0/16,nw_dst=10.2.0.0/16,actions=goto_table:17
ovs-ofctl add-flow br4 priority=100,table=16,in_port=16,ip,nw_src=10.2.0.0/16,nw_dst=10.2.0.0/16,actions=goto_table:17
ovs-ofctl add-flow br4 priority=99,table=16,in_port=15,ip,nw_src=10.2.0.0/16,actions=push_vlan:0x8100,set_field:3-\>vlan_vid,goto_table:17
ovs-ofctl add-flow br4 priority=99,table=16,in_port=16,ip,nw_src=10.2.0.0/16,actions=push_vlan:0x8100,set_field:4-\>vlan_vid,goto_table:17
ovs-ofctl add-flow br4 priority=98,table=16,ip,actions=goto_table:17
ovs-ofctl add-flow br4 table=17,priority=100,ip,nw_dst=10.2.2.2/32,actions=output:13
ovs-ofctl add-flow br4 table=17,priority=100,ip,nw_dst=10.2.2.3/32,actions=output:14
ovs-ofctl add-flow br4 table=17,priority=99,ip,nw_src=10.2.2.2/32,actions=output:15
ovs-ofctl add-flow br4 table=17,priority=99,ip,nw_src=10.2.2.3/32,actions=output:16