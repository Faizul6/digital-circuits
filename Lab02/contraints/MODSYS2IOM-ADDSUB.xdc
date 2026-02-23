#####################################################
##
## [IE3-DI] Digital Circuits Winter Term 2025
##			Exercise 2
##
## @name:   MODSYS2IOM.xdc
## @author: Faizul Ahmed Robin
## description: MODSYS 2.0 constraint file
## (c) 2025 HAW Hamburg
##
#####################################################

##############
# CONNECTOR 3
# LEDs S[7:0]
set_property PACKAGE_PIN H15 [get_ports {S[0]}];
set_property PACKAGE_PIN K13 [get_ports {S[1]}];
set_property PACKAGE_PIN J13 [get_ports {S[2]}];
set_property PACKAGE_PIN K15 [get_ports {S[3]}];
set_property PACKAGE_PIN J15 [get_ports {S[4]}];
set_property PACKAGE_PIN E16 [get_ports {S[5]}];
set_property PACKAGE_PIN E15 [get_ports {S[6]}];
set_property PACKAGE_PIN H17 [get_ports {S[7]}];
set_property IOSTANDARD LVCMOS33 [get_ports {S[*]}];
##############
# CONNECTOR 3
# LEDs Status Flags C, V, N, Z
set_property PACKAGE_PIN D17 [get_ports {C}];
set_property PACKAGE_PIN U9 [get_ports {V}];
set_property PACKAGE_PIN V5 [get_ports {N}];
set_property PACKAGE_PIN V4 [get_ports {Z}];
set_property IOSTANDARD LVCMOS33 [get_ports {C}];
set_property IOSTANDARD LVCMOS33 [get_ports {V}];
set_property IOSTANDARD LVCMOS33 [get_ports {N}];
set_property IOSTANDARD LVCMOS33 [get_ports {Z}];
##############
# CONNECTOR 4
# Switches A[7:0], B[7:0]
# (Same mapping as Task 1)
set_property PACKAGE_PIN G18 [get_ports {A[0]}];
set_property PACKAGE_PIN B11 [get_ports {A[1]}];
set_property PACKAGE_PIN A11 [get_ports {A[2]}];
set_property PACKAGE_PIN D15 [get_ports {A[3]}];
set_property PACKAGE_PIN C15 [get_ports {A[4]}];
set_property PACKAGE_PIN A13 [get_ports {A[5]}];
set_property PACKAGE_PIN A14 [get_ports {A[6]}];
set_property PACKAGE_PIN F15 [get_ports {A[7]}];
set_property PACKAGE_PIN R7 [get_ports {B[0]}];
set_property PACKAGE_PIN R5 [get_ports {B[1]}];
set_property PACKAGE_PIN R6 [get_ports {B[2]}];
set_property PACKAGE_PIN N4 [get_ports {B[3]}];
set_property PACKAGE_PIN M4 [get_ports {B[4]}];
set_property PACKAGE_PIN T3 [get_ports {B[5]}];
set_property PACKAGE_PIN R3 [get_ports {B[6]}];
set_property PACKAGE_PIN U7 [get_ports {B[7]}];
set_property IOSTANDARD LVCMOS33 [get_ports {A[*]}];
set_property IOSTANDARD LVCMOS33 [get_ports {B[*]}];
###############################################################
# END OF FILE
###############################################################