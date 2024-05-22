`timescale 1ns / 1ps // Definisikan skala waktu

module fsm_tb;

    // Deklarasi sinyal-sinyal yang diperlukan untuk testbench
    reg clk;
    reg rst;
    reg w;
    wire z;

    // Instansiasi modul yang akan diuji
    fsm_sq dut (
        .clk(clk),
        .rst(rst),
        .w(w),
        .z(z)
    );

    // Generasi clock
    always #5 clk = ~clk; // Clock periode 10ns

    // Initialisasi
    initial begin
        clk = 0;
        rst = 1; // Reset aktif
        w = 0;

        // Tunggu beberapa clock cycle setelah reset
        #20 rst = 0;

        // Test case 1: w = 0
        w = 0;
        #10; // Tunggu beberapa clock cycle
        // Expected output: z should remain in its current state

        // Test case 2: w = 1
        w = 1;
        #10; // Tunggu beberapa clock cycle
        // Expected output: z should transition to the next state

        // Test case 3: Another transition
        w = 1;
        #10; // Tunggu beberapa clock cycle
        // Expected output: z should remain in the same state
        
        // Test case 4: Reset test
//        rst = 1; // Aktifkan reset
        #10; // Tunggu beberapa clock cycle
//        rst = 0; // Matikan reset
        w = 1;
        #10; // Tunggu beberapa clock cycle
        // Expected output: z should transition to the next state after reset

        // Test case 5: More w = 1 variations
        // Simulate more variations for w = 1
        w = 1;
        #10;
        w = 0;
        #10;
        w = 1;
        #10;
        w = 0;
        #10;
        w = 1;
        #10;
        // Add more variations as needed

        // Test case 6, 7, 8, ... : Add more test cases as needed

        // Akhir simulasi
        $finish;
    end

endmodule
