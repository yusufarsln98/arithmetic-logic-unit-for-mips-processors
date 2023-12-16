transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/yusuf/Desktop/ORG\ 2.\ odev/YusufArslanProject2/Components {/home/yusuf/Desktop/ORG 2. odev/YusufArslanProject2/Components/And4Bit.v}
vlog -vlog01compat -work work +incdir+/home/yusuf/Desktop/ORG\ 2.\ odev/YusufArslanProject2/Components {/home/yusuf/Desktop/ORG 2. odev/YusufArslanProject2/Components/And16Bit.v}
vlog -vlog01compat -work work +incdir+/home/yusuf/Desktop/ORG\ 2.\ odev/YusufArslanProject2/Components {/home/yusuf/Desktop/ORG 2. odev/YusufArslanProject2/Components/And32Bit.v}
vlog -vlog01compat -work work +incdir+/home/yusuf/Desktop/ORG\ 2.\ odev/YusufArslanProject2/Components {/home/yusuf/Desktop/ORG 2. odev/YusufArslanProject2/Components/Or4BitLU.v}
vlog -vlog01compat -work work +incdir+/home/yusuf/Desktop/ORG\ 2.\ odev/YusufArslanProject2/Components {/home/yusuf/Desktop/ORG 2. odev/YusufArslanProject2/Components/Or16Bit.v}
vlog -vlog01compat -work work +incdir+/home/yusuf/Desktop/ORG\ 2.\ odev/YusufArslanProject2/Components {/home/yusuf/Desktop/ORG 2. odev/YusufArslanProject2/Components/Or32Bit.v}
vlog -vlog01compat -work work +incdir+/home/yusuf/Desktop/ORG\ 2.\ odev/YusufArslanProject2/Components {/home/yusuf/Desktop/ORG 2. odev/YusufArslanProject2/Components/Xor4Bit.v}
vlog -vlog01compat -work work +incdir+/home/yusuf/Desktop/ORG\ 2.\ odev/YusufArslanProject2/Components {/home/yusuf/Desktop/ORG 2. odev/YusufArslanProject2/Components/Xor16Bit.v}
vlog -vlog01compat -work work +incdir+/home/yusuf/Desktop/ORG\ 2.\ odev/YusufArslanProject2/Components {/home/yusuf/Desktop/ORG 2. odev/YusufArslanProject2/Components/Xor32Bit.v}
vlog -vlog01compat -work work +incdir+/home/yusuf/Desktop/ORG\ 2.\ odev/YusufArslanProject2/Components {/home/yusuf/Desktop/ORG 2. odev/YusufArslanProject2/Components/Nor4Bit.v}
vlog -vlog01compat -work work +incdir+/home/yusuf/Desktop/ORG\ 2.\ odev/YusufArslanProject2/Components {/home/yusuf/Desktop/ORG 2. odev/YusufArslanProject2/Components/Nor16Bit.v}
vlog -vlog01compat -work work +incdir+/home/yusuf/Desktop/ORG\ 2.\ odev/YusufArslanProject2/Components {/home/yusuf/Desktop/ORG 2. odev/YusufArslanProject2/Components/Nor32Bit.v}
vlog -vlog01compat -work work +incdir+/home/yusuf/Desktop/ORG\ 2.\ odev/YusufArslanProject2/Components {/home/yusuf/Desktop/ORG 2. odev/YusufArslanProject2/Components/Mux8x1_1Bit.v}
vlog -vlog01compat -work work +incdir+/home/yusuf/Desktop/ORG\ 2.\ odev/YusufArslanProject2/Components {/home/yusuf/Desktop/ORG 2. odev/YusufArslanProject2/Components/Mux8x1_4Bit.v}
vlog -vlog01compat -work work +incdir+/home/yusuf/Desktop/ORG\ 2.\ odev/YusufArslanProject2/Components {/home/yusuf/Desktop/ORG 2. odev/YusufArslanProject2/Components/Mux8x1_32Bit.v}
vlog -vlog01compat -work work +incdir+/home/yusuf/Desktop/ORG\ 2.\ odev/YusufArslanProject2/Components {/home/yusuf/Desktop/ORG 2. odev/YusufArslanProject2/Components/Mux8x1_16Bit.v}
vlog -vlog01compat -work work +incdir+/home/yusuf/Desktop/ORG\ 2.\ odev/YusufArslanProject2/Components {/home/yusuf/Desktop/ORG 2. odev/YusufArslanProject2/Components/CarryLookaheadAdder1Bit.v}
vlog -vlog01compat -work work +incdir+/home/yusuf/Desktop/ORG\ 2.\ odev/YusufArslanProject2/Components {/home/yusuf/Desktop/ORG 2. odev/YusufArslanProject2/Components/CarryLookaheadAdder4Bit.v}
vlog -vlog01compat -work work +incdir+/home/yusuf/Desktop/ORG\ 2.\ odev/YusufArslanProject2/Components {/home/yusuf/Desktop/ORG 2. odev/YusufArslanProject2/Components/CarryLookaheadAdder16Bit.v}
vlog -vlog01compat -work work +incdir+/home/yusuf/Desktop/ORG\ 2.\ odev/YusufArslanProject2/Components {/home/yusuf/Desktop/ORG 2. odev/YusufArslanProject2/Components/CarryLookaheadAdder32Bit.v}
vlog -vlog01compat -work work +incdir+/home/yusuf/Desktop/ORG\ 2.\ odev/YusufArslanProject2/Components {/home/yusuf/Desktop/ORG 2. odev/YusufArslanProject2/Components/CarryLookaheadLogic32Bit.v}
vlog -vlog01compat -work work +incdir+/home/yusuf/Desktop/ORG\ 2.\ odev/YusufArslanProject2/Components {/home/yusuf/Desktop/ORG 2. odev/YusufArslanProject2/Components/Subtractor32Bit.v}
vlog -vlog01compat -work work +incdir+/home/yusuf/Desktop/ORG\ 2.\ odev/YusufArslanProject2/Components {/home/yusuf/Desktop/ORG 2. odev/YusufArslanProject2/Components/SetLessThen32Bit.v}
vlog -vlog01compat -work work +incdir+/home/yusuf/Desktop/ORG\ 2.\ odev/YusufArslanProject2/Components {/home/yusuf/Desktop/ORG 2. odev/YusufArslanProject2/Components/Alu32Bit.v}
vlog -vlog01compat -work work +incdir+/home/yusuf/Desktop/ORG\ 2.\ odev/YusufArslanProject2/Components {/home/yusuf/Desktop/ORG 2. odev/YusufArslanProject2/Components/ModControlUnit.v}
vlog -vlog01compat -work work +incdir+/home/yusuf/Desktop/ORG\ 2.\ odev/YusufArslanProject2/Components {/home/yusuf/Desktop/ORG 2. odev/YusufArslanProject2/Components/Mod32Bit.v}
vlog -vlog01compat -work work +incdir+/home/yusuf/Desktop/ORG\ 2.\ odev/YusufArslanProject2/Components {/home/yusuf/Desktop/ORG 2. odev/YusufArslanProject2/Components/ModDataPathWithSUBAndSLT.v}

vlog -vlog01compat -work work +incdir+/home/yusuf/Desktop/ORG\ 2.\ odev/YusufArslanProject2/Components {/home/yusuf/Desktop/ORG 2. odev/YusufArslanProject2/Components/Alu32BitTestBench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  Alu32BitTestBench

add wave *
view structure
view signals
run -all
