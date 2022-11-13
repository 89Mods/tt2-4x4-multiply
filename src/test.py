import cocotb
import random
from cocotb.triggers import Timer

@cocotb.test()
async def test_multiplier(dut):
	dut._log.info("start")
	
	ins_1 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
	random.shuffle(ins_1)
	
	for i in range(0, 16):
		dut.din0.value = ins_1[i]
		ins_2 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
		random.shuffle(ins_2)
		for j in range(0, 16):
			dut._log.info(f'{ins_1[i]} * {ins_2[j]}')
			dut.din1.value = ins_2[j]
			await Timer(5, units="ps")
			assert dut.dout.value == ins_1[i] * ins_2[j]
