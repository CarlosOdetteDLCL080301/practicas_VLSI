onerror {exit -code 1}
vlib work
vcom -work work sumador_restador.vho
vcom -work work Waveform3.vwf.vht
vsim -novopt -c -t 1ps -L fiftyfivenm -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.sumador_restador_vhd_vec_tst
vcd file -direction sumador_restador.msim.vcd
vcd add -internal sumador_restador_vhd_vec_tst/*
vcd add -internal sumador_restador_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
