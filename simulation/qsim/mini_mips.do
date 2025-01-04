onerror {exit -code 1}
vlib work
vcom -work work mini_mips.vho
vcom -work work Waveform5.vwf.vht
vsim -novopt -c -t 1ps -L fiftyfivenm -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.mini_mips_vhd_vec_tst
vcd file -direction mini_mips.msim.vcd
vcd add -internal mini_mips_vhd_vec_tst/*
vcd add -internal mini_mips_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

