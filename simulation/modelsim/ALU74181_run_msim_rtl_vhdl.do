transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Robinho/OneDrive/Eletrônica/Cursos/FPGA/Desafio Tafas/Projeto 2 - ALU74181/ALU74181.vhd}

