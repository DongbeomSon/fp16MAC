import random
import numpy as np

genNum = 10000
fp_mat = []
out = []
ex = []

f = open('tb_acc.txt', 'w')
g = open('ans_acc.txt', 'w')
# h = open('ans_mul.txt', 'w')
ans_m = []
ans_a = []
delay = "#20"
i = 0
ac = 0
for idx in range(genNum):
    x_f32 = random.uniform(-2, 2)
    a = np.float16(x_f32)

    t = bin(np.float16(a).view('H'))[2:].zfill(16)
    f.write("\tA = 16'h" + hex(int(t, 2)).replace("0x", "") + ";\n")

    x_f32 = random.uniform(-2, 2)
    b = np.float16(x_f32)
    t = bin(np.float16(b).view('H'))[2:].zfill(16)
    f.write("\tB = 16'h" + hex(int(t, 2)).replace("0x", "") + ";\n")
    # f.write("\t#200\n")





    c = np.float16(a * b)
    t = bin(np.float16(c).view('H'))[2:].zfill(16)
    cout = "\tans_m = 16'h" + hex(int(t, 2)).replace("0x", "") + ";\n"


    ac = np.float16(np.float16(c) + np.float16(ac))
    t = bin(np.float16(ac).view('H'))[2:].zfill(16)
    accout = "\tans_a = 16'h" + hex(int(t, 2)).replace("0x", "") + ";\n"

    ans_a.append(accout)

    i = i + 1


    if(i > 0):
        f.write(ans_a.pop())

    f.write("\t" + delay + "\n")

    print(ac)

"""
    t = bin(np.float16(c).view('H'))[2:].zfill(16)
    g.write(hex(int(t, 2)) + "\n")


    c = a+b
    t = bin(np.float16(c).view('H'))[2:].zfill(16)
    h.write(hex(int(t, 2)) + "\n"
"""

f.close()
g.close()
# h.close()
