vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_5
vlib riviera/processing_system7_vip_v1_0_7
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/axis_infrastructure_v1_1_0
vlib riviera/axis_data_fifo_v2_0_1
vlib riviera/xbip_utils_v3_0_10
vlib riviera/axi_utils_v2_0_6
vlib riviera/c_reg_fd_v12_0_6
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_pipe_v3_0_6
vlib riviera/xbip_dsp48_addsub_v3_0_6
vlib riviera/xbip_addsub_v3_0_6
vlib riviera/c_addsub_v12_0_13
vlib riviera/c_mux_bit_v12_0_6
vlib riviera/c_shift_ram_v12_0_13
vlib riviera/xbip_bram18k_v3_0_6
vlib riviera/mult_gen_v12_0_15
vlib riviera/cmpy_v6_0_17
vlib riviera/floating_point_v7_0_16
vlib riviera/xfft_v9_1_2

vmap xilinx_vip riviera/xilinx_vip
vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_5 riviera/axi_vip_v1_1_5
vmap processing_system7_vip_v1_0_7 riviera/processing_system7_vip_v1_0_7
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap axis_infrastructure_v1_1_0 riviera/axis_infrastructure_v1_1_0
vmap axis_data_fifo_v2_0_1 riviera/axis_data_fifo_v2_0_1
vmap xbip_utils_v3_0_10 riviera/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 riviera/axi_utils_v2_0_6
vmap c_reg_fd_v12_0_6 riviera/c_reg_fd_v12_0_6
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_6 riviera/xbip_pipe_v3_0_6
vmap xbip_dsp48_addsub_v3_0_6 riviera/xbip_dsp48_addsub_v3_0_6
vmap xbip_addsub_v3_0_6 riviera/xbip_addsub_v3_0_6
vmap c_addsub_v12_0_13 riviera/c_addsub_v12_0_13
vmap c_mux_bit_v12_0_6 riviera/c_mux_bit_v12_0_6
vmap c_shift_ram_v12_0_13 riviera/c_shift_ram_v12_0_13
vmap xbip_bram18k_v3_0_6 riviera/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_15 riviera/mult_gen_v12_0_15
vmap cmpy_v6_0_17 riviera/cmpy_v6_0_17
vmap floating_point_v7_0_16 riviera/floating_point_v7_0_16
vmap xfft_v9_1_2 riviera/xfft_v9_1_2

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

vcom -work xbip_utils_v3_0_10 -93 \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/1123/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93 \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_6 -93 \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/edec/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

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

vcom -work c_mux_bit_v12_0_6 -93 \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/ecb4/hdl/c_mux_bit_v12_0_vh_rfs.vhd" \

vcom -work c_shift_ram_v12_0_13 -93 \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/cd8a/hdl/c_shift_ram_v12_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93 \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_15 -93 \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/d4d2/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work cmpy_v6_0_17 -93 \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/5204/hdl/cmpy_v6_0_vh_rfs.vhd" \

vcom -work floating_point_v7_0_16 -93 \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/e8d9/hdl/floating_point_v7_0_vh_rfs.vhd" \

vcom -work xfft_v9_1_2 -93 \
"../../../../tp.srcs/sources_1/bd/design_1/ipshared/3c11/hdl/xfft_v9_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_xfft_0_0/sim/design_1_xfft_0_0.vhd" \
"../../../bd/design_1/ip/design_1_xfft_0_1/sim/design_1_xfft_0_1.vhd" \
"../../../bd/design_1/ip/design_1_join_16from8_0_0/sim/design_1_join_16from8_0_0.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \
"../../../bd/design_1/ip/design_1_slice_8from32_0_0/sim/design_1_slice_8from32_0_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

