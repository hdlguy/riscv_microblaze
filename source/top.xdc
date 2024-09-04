
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 2.5 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]
set_property BITSTREAM.Config.SPI_BUSWIDTH 4 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

set_property IOSTANDARD LVCMOS33    [get_ports reset]
set_property PACKAGE_PIN C2         [get_ports reset]

set_property PACKAGE_PIN E3         [get_ports clkin]
set_property IOSTANDARD LVCMOS33    [get_ports clkin]

set_property PACKAGE_PIN A9         [get_ports usb_uart_rxd]
set_property PACKAGE_PIN D10        [get_ports usb_uart_txd]
set_property IOSTANDARD LVCMOS33    [get_ports usb_uart_rxd]
set_property IOSTANDARD LVCMOS33    [get_ports usb_uart_txd]
