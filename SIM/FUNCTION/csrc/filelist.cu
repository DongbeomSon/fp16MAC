PIC_LD=ld

ARCHIVE_OBJS=

VCS_ARC0 =_csrc0.so

VCS_OBJS0 =objs/eNvia_d.o objs/yNvz0_d.o objs/ehnx4_d.o objs/niYej_d.o objs/SrZub_d.o  \
objs/fDGFP_d.o objs/QMbwx_d.o objs/ryz4W_d.o objs/AEWT8_d.o objs/reYIK_d.o  \
objs/BVMSK_d.o objs/yMrAT_d.o objs/dEMT0_d.o objs/JFeZ2_d.o objs/p6jTb_d.o  \
amcQwB.o objs/Cx9zp_d.o objs/tuUAY_d.o objs/Z11GV_d.o 



%.o: %.c
	$(CC_CG) $(CFLAGS_CG) -c -o $@ $<

$(VCS_ARC0) : $(VCS_OBJS0)
	$(PIC_LD) -m elf_i386 -shared  -o .//../simv.daidir//$(VCS_ARC0) $(VCS_OBJS0)
	rm -f $(VCS_ARC0)
	@ln -sf .//../simv.daidir//$(VCS_ARC0) $(VCS_ARC0)

CU_UDP_OBJS = \


CU_LVL_OBJS = \
SIM_l.o 

MAIN_OBJS = \
objs/amcQw_d.o 

CU_OBJS = $(MAIN_OBJS) $(ARCHIVE_OBJS) $(VCS_ARC0) $(CU_UDP_OBJS) $(CU_LVL_OBJS)

