//
// Signals declared top-level.
//

// For $add.
logic [31:0] L0_add_a0;

// For $mul.
logic [31:0] L0_mul_a0;

// For $num1.
logic [31:0] L0_num1_a0;

// For $num1_rand.
logic [5:0] L0_num1_rand_a0;

// For $num2.
logic [31:0] L0_num2_a0;

// For $num2_rand.
logic [3:0] L0_num2_rand_a0;

// For $op.
logic [1:0] L0_op_a0;

// For $out.
logic [31:0] L0_out_a0;

// For $quot.
logic [31:0] L0_quot_a0;

// For $r_num1_rand.
logic [31:0] L0_r_num1_rand_n1,
             L0_r_num1_rand_a0;

// For $r_num2_rand.
logic [31:0] L0_r_num2_rand_n1,
             L0_r_num2_rand_a0;

// For $r_op.
logic [31:0] L0_r_op_n1,
             L0_r_op_a0;

// For $reset.
logic L0_reset_a0;

// For $sub.
logic [31:0] L0_sub_a0;



   // Staging of signal $num1_rand, which had no assignment.
   // Assign to a random value.
   // verilator lint_save
   // verilator lint_off WIDTH
   assign L0_num1_rand_a0[5:0] = L0_r_num1_rand_a0;
   // verilator lint_restore

   // Staging of signal $num2_rand, which had no assignment.
   // Assign to a random value.
   // verilator lint_save
   // verilator lint_off WIDTH
   assign L0_num2_rand_a0[3:0] = L0_r_num2_rand_a0;
   // verilator lint_restore

   // Staging of signal $op, which had no assignment.
   // Assign to a random value.
   // verilator lint_save
   // verilator lint_off WIDTH
   assign L0_op_a0[1:0] = L0_r_op_a0;
   // verilator lint_restore

   // Staging of random value for missing assignment.
   assign L0_r_num1_rand_n1[31:0] = $random() ^ {31'b0, clk};
   always_ff @(posedge clk) L0_r_num1_rand_a0[31:0] <= L0_r_num1_rand_n1[31:0];

   // Staging of random value for missing assignment.
   assign L0_r_num2_rand_n1[31:0] = $random() ^ {31'b0, clk};
   always_ff @(posedge clk) L0_r_num2_rand_a0[31:0] <= L0_r_num2_rand_n1[31:0];

   // Staging of random value for missing assignment.
   assign L0_r_op_n1[31:0] = $random() ^ {31'b0, clk};
   always_ff @(posedge clk) L0_r_op_a0[31:0] <= L0_r_op_n1[31:0];





//
// Debug Signals
//

   if (1) begin : DEBUG_SIGS

      logic [31:0] \@0$add ;
      assign \@0$add = L0_add_a0;
      logic [31:0] \@0$mul ;
      assign \@0$mul = L0_mul_a0;
      logic [31:0] \@0$num1 ;
      assign \@0$num1 = L0_num1_a0;
      logic [5:0] \@0$num1_rand ;
      assign \@0$num1_rand = L0_num1_rand_a0;
      logic [31:0] \@0$num2 ;
      assign \@0$num2 = L0_num2_a0;
      logic [3:0] \@0$num2_rand ;
      assign \@0$num2_rand = L0_num2_rand_a0;
      logic [1:0] \@0$op ;
      assign \@0$op = L0_op_a0;
      logic [31:0] \@0$out ;
      assign \@0$out = L0_out_a0;
      logic [31:0] \@0$quot ;
      assign \@0$quot = L0_quot_a0;
      logic  \@0$reset ;
      assign \@0$reset = L0_reset_a0;
      logic [31:0] \@0$sub ;
      assign \@0$sub = L0_sub_a0;


   end
