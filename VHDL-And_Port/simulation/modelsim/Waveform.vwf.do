vlog -work work C:/Users/Robinho/OneDrive/Eletrônica/Cursos/FPGA/Quartus II - FPGA/VHDL - And Port/simulation/modelsim/Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.port_and_vlg_vec_tst
onerror {resume}
add wave {port_and_vlg_vec_tst/i1/a}
add wave {port_and_vlg_vec_tst/i1/b}
add wave {port_and_vlg_vec_tst/i1/o}
run -all
