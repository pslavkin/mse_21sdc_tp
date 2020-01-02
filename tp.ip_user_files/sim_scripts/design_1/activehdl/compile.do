vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_5
vlib activehdl/processing_system7_vip_v1_0_7
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/axis_infrastructure_v1_1_0
vlib activehdl/axis_data_fifo_v2_0_1
vlib activehdl/xbip_utils_v3_0_10
vlib activehdl/axi_utils_v2_0_6
vlib activehdl/c_reg_fd_v12_0_6
vlib activehdl/c_gate_bit_v12_0_6
vlib activehdl/c_compare_v12_0_6
vlib activehdl/xbip_dsp48_wrapper_v3_0_4
vlib activehdl/xbip_pipe_v3_0_6
vlib activehdl/xbip_dsp48_addsub_v3_0_6
vlib activehdl/xbip_addsub_v3_0_6
vlib activehdl/c_addsub_v12_0_13
vlib activehdl/xbip_counter_v3_0_6
vlib activehdl/c_counter_binary_v12_0_13
vlib activehdl/c_mux_bit_v12_0_6
vlib activehdl/c_mux_bus_v12_0_6
vlib activehdl/c_shift_ram_v12_0_13
vlib activehdl/convolution_v9_0_14

vmap xilinx_vip activehdl/xilinx_vip
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_5 activehdl/axi_vip_v1_1_5
vmap processing_system7_vip_v1_0_7 activehdl/processing_system7_vip_v1_0_7
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap axis_infrastructure_v1_1_0 activehdl/axis_infrastructure_v1_1_0
vmap axis_data_fifo_v2_0_1 activehdl/axis_data_fifo_v2_0_1
vmap xbip_utils_v3_0_10 activehdl/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 activehdl/axi_utils_v2_0_6
vmap c_reg_fd_v12_0_6 activehdl/c_reg_fd_v12_0_6
vmap c_gate_bit_v12_0_6 activehdl/c_gate_bit_v12_0_6
vmap c_compare_v12_0_6 activehdl/c_compare_v12_0_6
vmap xbip_dsp48_wrapper_v3_0_4 activehdl/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_6 activehdl/xbip_pipe_v3_0_6
vmap xbip_dsp48_addsub_v3_0_6 activehdl/xbip_dsp48_addsub_v3_0_6
vmap xbip_addsub_v3_0_6 activehdl/xbip_addsub_v3_0_6
vmap c_addsub_v12_0_13 activehdl/c_addsub_v12_0_13
vmap xbip_counter_v3_0_6 activehdl/xbip_counter_v3_0_6
vmap c_counter_binary_v12_0_13 activehdl/c_counter_binary_v12_0_13
vmap c_mux_bit_v12_0_6 activehdl/c_mux_bit_v12_0_6
vmap c_mux_bus_v12_0_6 activehdl/c_mux_bus_v12_0_6
vmap c_shift_ram_v12_0_13 activehdl/c_shift_ram_v12_0_13
vmap convolution_v9_0_14 activehdl/convolution_v9_0_14

vlog -work xilinx_vip  -sv2k12 "+incdir+/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/include" \
"/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/include" \
"/opt/Xilinx_2019/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx_2019/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx_2019/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/opt/Xilinx_2019/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_5  -sv2k12 "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_7  -sv2k12 "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_10M_0/sim/design_1_rst_ps7_0_10M_0.vhd" \
"../../../bd/design_1/ip/design_1_paralell2axi_0_0/sim/design_1_paralell2axi_0_0.vhd" \

vlog -work axis_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v2_0_1  -v2k5 "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/e1b1/hdl/axis_data_fifo_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../tp.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+/opt/Xilinx_2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axis_data_fifo_0_1/sim/design_1_axis_data_fifo_0_1.v" \
"../../../bd/design_1/ip/design_1_axis_data_fifo_0_2/sim/design_1_axis_data_fifo_0_2.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_stretcher_0_0/sim/design_1_stretcher_0_0.vhd" \

vcom -work xbip_utils_v3_0_10 -93 \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/1123/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93 \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_6 -93 \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/edec/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work c_gate_bit_v12_0_6 -93 \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/7161/hdl/c_gate_bit_v12_0_vh_rfs.vhd" \

vcom -work c_compare_v12_0_6 -93 \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/27af/hdl/c_compare_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93 \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93 \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_6 -93 \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/cfdd/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_13 -93 \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/cbe4/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work xbip_counter_v3_0_6 -93 \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/9ac8/hdl/xbip_counter_v3_0_vh_rfs.vhd" \

vcom -work c_counter_binary_v12_0_13 -93 \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/23f1/hdl/c_counter_binary_v12_0_vh_rfs.vhd" \

vcom -work c_mux_bit_v12_0_6 -93 \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/ecb4/hdl/c_mux_bit_v12_0_vh_rfs.vhd" \

vcom -work c_mux_bus_v12_0_6 -93 \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/a0cc/hdl/c_mux_bus_v12_0_vh_rfs.vhd" \

vcom -work c_shift_ram_v12_0_13 -93 \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/cd8a/hdl/c_shift_ram_v12_0_vh_rfs.vhd" \

vcom -work convolution_v9_0_14 -93 \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/9d3d/hdl/convolution_v9_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_convolution_0_0/sim/design_1_convolution_0_0.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

