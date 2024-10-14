quit -sim
vcom adder_1bit.vhd
vcom full_adder.vhd
vcom part_a.vhd
vcom part_b.vhd
vcom part_c.vhd
vcom part_d.vhd
vcom ALU.vhd

vsim -gui work.alu

add wave -position end  A
add wave -position end  B
add wave -position end  OPERATION
add wave -position end  SEL
add wave -position end  CIN
add wave -position end  F
add wave -position end  COUT


force -freeze A 11110000
force -freeze B 10110000 
force -freeze OPERATION 0000
force -freeze SEL 00
force -freeze CIN 0
run

force -freeze OPERATION 0001 
run

force -freeze OPERATION 0010
run

force -freeze OPERATION 0011
run

force -freeze CIN 1
force -freeze SEL 00
force -freeze OPERATION 0000 
run


force -freeze OPERATION 0001
run

force -freeze OPERATION 0010
run

force -freeze OPERATION 0011
run

force -freeze A 11110000 
force -freeze B 10110000 
force -freeze OPERATION 0100 
force -freeze SEL 01 
run

force -freeze OPERATION 0101 
force -freeze B 00001011 
run

force -freeze OPERATION 0110 
force -freeze B 10110000 
run

force -freeze OPERATION 0111 
run

force -freeze SEL 10 
force -freeze OPERATION 1000 
run

force -freeze OPERATION 1001 
run

force -freeze OPERATION 1010 
force -freeze CIN 0 
run

force -freeze OPERATION 1011 
run

force -freeze OPERATION 1100 
force -freeze SEL 11 
run

force -freeze OPERATION 1101 
run

force -freeze OPERATION 1110 
force -freeze CIN 0 
run

force -freeze OPERATION 1111 
run

force -freeze OPERATION 1010 
force -freeze CIN 1 
force -freeze SEL 10 
run

force -freeze OPERATION 1110 
force -freeze SEL 11 
force -freeze CIN 1 
run
