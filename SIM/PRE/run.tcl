cp ../../SYN_topo/results/mul_A.mapped.v ./
cp ../../SYN_topo/results/mul_A.sdf ./

#vcs -full64 -debug_access+all -kdb -lca -l gate_sim.log +libext+.v+.vlib \

vcs -debug_access+all -sverilog -kdb -lca -l func_sim.log \
+incdir+../../RTL \
+incdir+../TESTBENCH \
+incdir+/data1/SYNOPSYS/lib/32nm/SAED32_EDK/lib/stdcell_rvt/verilog \
../TESTBENCH/tb_mul.v \
./mul_A.mapped.v \
/data/SYNOPSYS/lib/32nm/SAED32_EDK/lib/stdcell_rvt/verilog/saed32nm.v


./simv -ucli -i fsdb.tcl -l pre_simv.log
Verdi -ssf mul_A.fsdb

fsdb2vcd mul_A.fsdb -o mul_A.vcd
vcd2saif -input mul_A.vcd -output mul_A.saif

