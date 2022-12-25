import random
import numpy as np

genNum = 10000
fp_mat = []
out = []
ex = []

f = open('tb_add.txt', 'w')
#g = open('ans.txt', 'w')
g = open('ans_add.txt', 'w')

delay = "#20"
for idx in range(genNum):
    x_f32 = random.uniform(-1, 1)
    a = np.float16(x_f32)

    t = bin(np.float16(a).view('H'))[2:].zfill(16)
    f.write("\tA = 16'h" + hex(int(t, 2)).replace("0x", "") + ";\n")

    x_f32 = random.uniform(-1, 1)
    b = np.float16(x_f32)
    t = bin(np.float16(b).view('H'))[2:].zfill(16)
    f.write("\tB = 16'h" + hex(int(t, 2)).replace("0x", "") + ";\n")
    # f.write("\t#200\n")
    c = a + b
    t = bin(np.float16(c).view('H'))[2:].zfill(16)
    f.write("\tans = 16'h" + hex(int(t, 2)).replace("0x", "") + ";\n")
    f.write("\t" + delay + "\n")

    print(c)

"""
    t = bin(np.float16(c).view('H'))[2:].zfill(16)
    g.write(hex(int(t, 2)) + "\n")


    c = a+b
    t = bin(np.float16(c).view('H'))[2:].zfill(16)
    h.write(hex(int(t, 2)) + "\n"
"""

f.close()
#g.close()
g.close()
