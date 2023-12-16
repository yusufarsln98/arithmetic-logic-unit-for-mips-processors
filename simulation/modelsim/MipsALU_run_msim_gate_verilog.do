transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {MipsALU.vo}

vlog -vlog01compat -work work +incdir+/home/yusuf/GTU\ -\ 4th\ Grade\ Fall/CSE\ -\ 331\ Computer\ Organization/Homeworks/Homework-2/Components {/home/yusuf/GTU - 4th Grade Fall/CSE - 331 Computer Organization/Homeworks/Homework-2/Components/SetLessThen32BitTestBench.v}

vsim -t 1ps -L altera_ver -L altera_lnsim_ver -L cyclonev_ver -L lpm_ver -L sgate_ver -L cyclonev_hssi_ver -L altera_mf_ver -L cyclonev_pcie_hip_ver -L gate_work -L work -voptargs="+acc"  SetLessThen32BitTestBench

add wave *
view structure
view signals
run -all
