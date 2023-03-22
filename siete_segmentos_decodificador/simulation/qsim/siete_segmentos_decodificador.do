onerror {exit -code 1}
vlib work
vcom -work work siete_segmentos_decodificador.vho
vcom -work work Waveform1.vwf.vht
vsim -novopt -c -t 1ps -L fiftyfivenm -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.siete_segmentos_decodificador_vhd_vec_tst
vcd file -direction siete_segmentos_decodificador.msim.vcd
vcd add -internal siete_segmentos_decodificador_vhd_vec_tst/*
vcd add -internal siete_segmentos_decodificador_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
