vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_5
vlib questa_lib/msim/processing_system7_vip_v1_0_7
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/axis_infrastructure_v1_1_0
vlib questa_lib/msim/axis_data_fifo_v2_0_1

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_5 questa_lib/msim/axi_vip_v1_1_5
vmap processing_system7_vip_v1_0_7 questa_lib/msim/processing_system7_vip_v1_0_7
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap axis_infrastructure_v1_1_0 questa_lib/msim/axis_infrastructure_v1_1_0
vmap axis_data_fifo_v2_0_1 questa_lib/msim/axis_data_fifo_v2_0_1

vlog -work xilinx_vip -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L xilinx_vip "+incdir+/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/include" \
"/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L xilinx_vip "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/include" \
"/opt/Xilinx_2019/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx_2019/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx_2019/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/opt/Xilinx_2019/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_5 -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L xilinx_vip "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_7 -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L xilinx_vip "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_10M_0/sim/design_1_rst_ps7_0_10M_0.vhd" \
"../../../bd/design_1/ip/design_1_paralell2axi_0_0/sim/design_1_paralell2axi_0_0.vhd" \

vlog -work axis_infrastructure_v1_1_0 -64 "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v2_0_1 -64 "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/e1b1/hdl/axis_data_fifo_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axis_data_fifo_0_1/sim/design_1_axis_data_fifo_0_1.v" \
"../../../bd/design_1/ip/design_1_axis_data_fifo_0_2/sim/design_1_axis_data_fifo_0_2.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_split_1to8_0_0/sim/design_1_split_1to8_0_0.vhd" \
"../../../bd/design_1/ip/design_1_join_8to1_0_0/sim/design_1_join_8to1_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axis_data_fifo_Out_0/sim/design_1_axis_data_fifo_Out_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

