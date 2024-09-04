
module top (
    input     logic   clkin,
    input     logic   reset,
    input     logic   usb_uart_rxd,
    output    logic   usb_uart_txd
);

    system system_i (
        .clkin          (clkin),
        .reset          (reset),
        .usb_uart_rxd   (usb_uart_rxd),
        .usb_uart_txd   (usb_uart_txd)
    );

endmodule
