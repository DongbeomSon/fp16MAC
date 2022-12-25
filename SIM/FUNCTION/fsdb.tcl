# Example of TB file expression 
call {$fsdbDumpfile ("TOP.fsdb")};
call {$fsdbDumpvars (0, tb_config_mul)};
run
exit
