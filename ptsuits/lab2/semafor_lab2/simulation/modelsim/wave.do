run -all
onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /lab2_tb/clk
add wave -noupdate /lab2_tb/train
add wave -noupdate /lab2_tb/rx
add wave -noupdate /lab2_tb/div
add wave -noupdate /lab2_tb/r
add wave -noupdate /lab2_tb/y
add wave -noupdate /lab2_tb/g
add wave -noupdate -divider {New Divider}
add wave -noupdate /lab2_tb/lab2_my/rx_data
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {7903240 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {40792500 ps}
