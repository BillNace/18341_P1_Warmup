# CLOCK_100 input is from the 100 MHz oscillator on Boolean board
#create_clock -period 10.000 -name gclk [get_ports clk_100MHz]
set_property -quiet -dict {PACKAGE_PIN F14 IOSTANDARD LVCMOS33} [get_ports {CLOCK_100}]

# Set Bank 0 voltage
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

# On-board LEDs
set_property -quiet -dict {PACKAGE_PIN G1 IOSTANDARD LVCMOS33} [get_ports {LD[0]}]
set_property -quiet -dict {PACKAGE_PIN G2 IOSTANDARD LVCMOS33} [get_ports {LD[1]}]
set_property -quiet -dict {PACKAGE_PIN F1 IOSTANDARD LVCMOS33} [get_ports {LD[2]}]
set_property -quiet -dict {PACKAGE_PIN F2 IOSTANDARD LVCMOS33} [get_ports {LD[3]}]
set_property -quiet -dict {PACKAGE_PIN E1 IOSTANDARD LVCMOS33} [get_ports {LD[4]}]
set_property -quiet -dict {PACKAGE_PIN E2 IOSTANDARD LVCMOS33} [get_ports {LD[5]}]
set_property -quiet -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports {LD[6]}]
set_property -quiet -dict {PACKAGE_PIN E5 IOSTANDARD LVCMOS33} [get_ports {LD[7]}]
set_property -quiet -dict {PACKAGE_PIN E6 IOSTANDARD LVCMOS33} [get_ports {LD[8]}]
set_property -quiet -dict {PACKAGE_PIN C3 IOSTANDARD LVCMOS33} [get_ports {LD[9]}]
set_property -quiet -dict {PACKAGE_PIN B2 IOSTANDARD LVCMOS33} [get_ports {LD[10]}]
set_property -quiet -dict {PACKAGE_PIN A2 IOSTANDARD LVCMOS33} [get_ports {LD[11]}]
set_property -quiet -dict {PACKAGE_PIN B3 IOSTANDARD LVCMOS33} [get_ports {LD[12]}]
set_property -quiet -dict {PACKAGE_PIN A3 IOSTANDARD LVCMOS33} [get_ports {LD[13]}]
set_property -quiet -dict {PACKAGE_PIN B4 IOSTANDARD LVCMOS33} [get_ports {LD[14]}]
set_property -quiet -dict {PACKAGE_PIN A4 IOSTANDARD LVCMOS33} [get_ports {LD[15]}]

# On-board Buttons
set_property -quiet -dict {PACKAGE_PIN J2 IOSTANDARD LVCMOS33} [get_ports {BTN[0]}]
set_property -quiet -dict {PACKAGE_PIN J5 IOSTANDARD LVCMOS33} [get_ports {BTN[1]}]
set_property -quiet -dict {PACKAGE_PIN H2 IOSTANDARD LVCMOS33} [get_ports {BTN[2]}]
set_property -quiet -dict {PACKAGE_PIN J1 IOSTANDARD LVCMOS33} [get_ports {BTN[3]}]

# On-board 7-Segment display 1
set_property -quiet -dict {PACKAGE_PIN D5 IOSTANDARD LVCMOS33} [get_ports {D1_AN[0]}]
set_property -quiet -dict {PACKAGE_PIN C4 IOSTANDARD LVCMOS33} [get_ports {D1_AN[1]}]
set_property -quiet -dict {PACKAGE_PIN C7 IOSTANDARD LVCMOS33} [get_ports {D1_AN[2]}]
set_property -quiet -dict {PACKAGE_PIN A8 IOSTANDARD LVCMOS33} [get_ports {D1_AN[3]}]
set_property -quiet -dict {PACKAGE_PIN D7 IOSTANDARD LVCMOS33} [get_ports {D1_SEG[0]}]
set_property -quiet -dict {PACKAGE_PIN C5 IOSTANDARD LVCMOS33} [get_ports {D1_SEG[1]}]
set_property -quiet -dict {PACKAGE_PIN A5 IOSTANDARD LVCMOS33} [get_ports {D1_SEG[2]}]
set_property -quiet -dict {PACKAGE_PIN B7 IOSTANDARD LVCMOS33} [get_ports {D1_SEG[3]}]
set_property -quiet -dict {PACKAGE_PIN A7 IOSTANDARD LVCMOS33} [get_ports {D1_SEG[4]}]
set_property -quiet -dict {PACKAGE_PIN D6 IOSTANDARD LVCMOS33} [get_ports {D1_SEG[5]}]
set_property -quiet -dict {PACKAGE_PIN B5 IOSTANDARD LVCMOS33} [get_ports {D1_SEG[6]}]
set_property -quiet -dict {PACKAGE_PIN A6 IOSTANDARD LVCMOS33} [get_ports {D1_SEG[7]}]

# On-board 7-Segment display 2
set_property -quiet -dict {PACKAGE_PIN H3 IOSTANDARD LVCMOS33} [get_ports {D2_AN[0]}]
set_property -quiet -dict {PACKAGE_PIN J4 IOSTANDARD LVCMOS33} [get_ports {D2_AN[1]}]
set_property -quiet -dict {PACKAGE_PIN F3 IOSTANDARD LVCMOS33} [get_ports {D2_AN[2]}]
set_property -quiet -dict {PACKAGE_PIN E4 IOSTANDARD LVCMOS33} [get_ports {D2_AN[3]}]
set_property -quiet -dict {PACKAGE_PIN F4 IOSTANDARD LVCMOS33} [get_ports {D2_SEG[0]}]
set_property -quiet -dict {PACKAGE_PIN J3 IOSTANDARD LVCMOS33} [get_ports {D2_SEG[1]}]
set_property -quiet -dict {PACKAGE_PIN D2 IOSTANDARD LVCMOS33} [get_ports {D2_SEG[2]}]
set_property -quiet -dict {PACKAGE_PIN C2 IOSTANDARD LVCMOS33} [get_ports {D2_SEG[3]}]
set_property -quiet -dict {PACKAGE_PIN B1 IOSTANDARD LVCMOS33} [get_ports {D2_SEG[4]}]
set_property -quiet -dict {PACKAGE_PIN H4 IOSTANDARD LVCMOS33} [get_ports {D2_SEG[5]}]
set_property -quiet -dict {PACKAGE_PIN D1 IOSTANDARD LVCMOS33} [get_ports {D2_SEG[6]}]
set_property -quiet -dict {PACKAGE_PIN C1 IOSTANDARD LVCMOS33} [get_ports {D2_SEG[7]}]