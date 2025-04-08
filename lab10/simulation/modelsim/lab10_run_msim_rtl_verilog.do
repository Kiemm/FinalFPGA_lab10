transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/Journey/He\ thong\ Nhung\ tren\ fpga/git/lab10 {D:/Journey/He thong Nhung tren fpga/git/lab10/bintobcd_9bit.v}
vlog -vlog01compat -work work +incdir+D:/Journey/He\ thong\ Nhung\ tren\ fpga/git/lab10 {D:/Journey/He thong Nhung tren fpga/git/lab10/rom_program.v}
vlog -vlog01compat -work work +incdir+D:/Journey/He\ thong\ Nhung\ tren\ fpga/git/lab10 {D:/Journey/He thong Nhung tren fpga/git/lab10/register_9bitv.v}
vlog -vlog01compat -work work +incdir+D:/Journey/He\ thong\ Nhung\ tren\ fpga/git/lab10 {D:/Journey/He thong Nhung tren fpga/git/lab10/counter_9bit.v}
vlog -vlog01compat -work work +incdir+D:/Journey/He\ thong\ Nhung\ tren\ fpga/git/lab10 {D:/Journey/He thong Nhung tren fpga/git/lab10/mux_9to1.v}
vlog -vlog01compat -work work +incdir+D:/Journey/He\ thong\ Nhung\ tren\ fpga/git/lab10 {D:/Journey/He thong Nhung tren fpga/git/lab10/addsub_9bit.v}
vlog -vlog01compat -work work +incdir+D:/Journey/He\ thong\ Nhung\ tren\ fpga/git/lab10 {D:/Journey/He thong Nhung tren fpga/git/lab10/control_unit.v}
vlog -vlog01compat -work work +incdir+D:/Journey/He\ thong\ Nhung\ tren\ fpga/git/lab10 {D:/Journey/He thong Nhung tren fpga/git/lab10/lab10.v}
vlog -vlog01compat -work work +incdir+D:/Journey/He\ thong\ Nhung\ tren\ fpga/git/lab10 {D:/Journey/He thong Nhung tren fpga/git/lab10/register_1bit.v}
vlog -vlog01compat -work work +incdir+D:/Journey/He\ thong\ Nhung\ tren\ fpga/git/lab10 {D:/Journey/He thong Nhung tren fpga/git/lab10/CPU.v}
vlog -vlog01compat -work work +incdir+D:/Journey/He\ thong\ Nhung\ tren\ fpga/git/lab10 {D:/Journey/He thong Nhung tren fpga/git/lab10/rom_led_de1.v}
vlog -vlog01compat -work work +incdir+D:/Journey/He\ thong\ Nhung\ tren\ fpga/git/lab10 {D:/Journey/He thong Nhung tren fpga/git/lab10/comparator.v}
vlog -vlog01compat -work work +incdir+D:/Journey/He\ thong\ Nhung\ tren\ fpga/git/lab10 {D:/Journey/He thong Nhung tren fpga/git/lab10/timer.v}
vlog -vlog01compat -work work +incdir+D:/Journey/He\ thong\ Nhung\ tren\ fpga/git/lab10 {D:/Journey/He thong Nhung tren fpga/git/lab10/hexto7seg.v}

