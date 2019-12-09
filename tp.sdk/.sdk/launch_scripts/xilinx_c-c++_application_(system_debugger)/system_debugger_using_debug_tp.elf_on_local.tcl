connect -url tcp:192.168.2.3:3121
source /home/pslavkin/mse_3_21sdc/tp/tp.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Arty Z7 003017A5C53CA"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Arty Z7 003017A5C53CA" && level==0} -index 1
fpga -file /home/pslavkin/mse_3_21sdc/tp/tp.sdk/design_1_wrapper_hw_platform_0/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Arty Z7 003017A5C53CA"} -index 0
loadhw -hw /home/pslavkin/mse_3_21sdc/tp/tp.sdk/design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Arty Z7 003017A5C53CA"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Arty Z7 003017A5C53CA"} -index 0
dow /home/pslavkin/mse_3_21sdc/tp/tp.sdk/tp/Debug/tp.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Arty Z7 003017A5C53CA"} -index 0
con
