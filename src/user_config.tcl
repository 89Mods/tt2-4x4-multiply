set ::env(DESIGN_NAME) tt2_tholin_multiplier
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/toplevel/logisimTopLevelShell.v \
    $::env(DESIGN_DIR)/circuit/main.v \
    $::env(DESIGN_DIR)/arith/Adder.v \
    $::env(DESIGN_DIR)/gates/AND_GATE_BUS.v"
