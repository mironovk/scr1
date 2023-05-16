
module scr1_tb_log_cmd();

always_ff @(posedge scr1_top_tb_ahb.i_top.i_imem_ahb.clk) begin
    if (scr1_top_tb_ahb.i_top.i_imem_ahb.imem_resp == 2'b01) begin
        // valid data from ahb router
        if (
            (scr1_top_tb_ahb.i_top.i_imem_ahb.imem_rdata[6 : 0] == 7'b0110011) &
            (scr1_top_tb_ahb.i_top.i_imem_ahb.imem_rdata[14 : 12] == 3'b000)
        ) begin
            // detect sub command
            $display("Detect SUB command\n curr_pc\t=\t0x%h\n mcause\t\t=\t0x%h\n mepc\t\t=\t0x%h\n mie\t\t=\t0x%h\n mip\t\t=\t0x%h\n mstatus\t=\t0x%h\n mtval\t\t=\t0x%h\n mtvec\t\t=\t0x%h\n", 
            scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.curr_pc,
            scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_tracelog.csr_trace1.mcause,
            scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_tracelog.csr_trace1.mepc,
            scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_tracelog.csr_trace1.mie,
            scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_tracelog.csr_trace1.mip,
            scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_tracelog.csr_trace1.mstatus,
            scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_tracelog.csr_trace1.mtval,
            scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_tracelog.csr_trace1.mtvec);
            
            
        end
    end
end

endmodule 