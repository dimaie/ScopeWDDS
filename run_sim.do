# Create and map the work library
vlib work
vmap work work

# Compile the Verilog source files
vlog -work work FX2_DDS.v tb_FX2_DDS.v

# Start the simulator, linking all required Altera libraries
vsim -L cycloneii_ver -L altera_mf_ver -L 220model_ver work.tb_FX2_DDS

# Add all signals to the wave viewer
add wave -r /*

# Run the simulation to completion
run -all