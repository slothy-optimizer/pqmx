import logging
import sys

sys.path.append("../../slothy/")

from slothy import Slothy
import slothy.targets.arm_v7m.arch_v7m as Arch_Armv7M
import slothy.targets.arm_v7m.cortex_m7 as Target_CortexM7

arch = Arch_Armv7M
target = Target_CortexM7
slothy = Slothy(arch, target)

slothy.load_source_from_file("curve25519-speedopt.s")
slothy.config.variable_size=False
slothy.config.inputs_are_outputs=True
slothy.config.constraints.stalls_first_attempt = 64
slothy.config.outputs = ["r11"]
slothy.optimize(start="start_label", end="end_label")

slothy.rename_function("fe25519_mul", "fe25519_mul_m7_opt")
slothy.write_source_to_file("opt/curve25519-speedopt_m7_opt_fe25519_mul_.S")