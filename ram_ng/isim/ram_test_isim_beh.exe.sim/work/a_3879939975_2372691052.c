/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/ng_pc/Desktop/13000123058/ram_ng/ram_test.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_10420449594411817395_1035706684(char *, char *, int , int );


static void work_a_3879939975_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 2944U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 3576);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2752);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 3576);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2752);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_3879939975_2372691052_p_1(char *t0)
{
    char t9[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int t7;
    int t8;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    int t15;
    int64 t16;

LAB0:    t1 = (t0 + 3192U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 3640);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 5872);
    *((int *)t2) = 0;
    t3 = (t0 + 5876);
    *((int *)t3) = 4;
    t7 = 0;
    t8 = 4;

LAB4:    if (t7 <= t8)
        goto LAB5;

LAB7:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 3640);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t16 = *((int64 *)t3);
    t2 = (t0 + 3000);
    xsi_process_wait(t2, t16);

LAB15:    *((char **)t1) = &&LAB16;

LAB1:    return;
LAB5:    xsi_set_current_line(61, ng0);
    t4 = (t0 + 5872);
    t5 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t9, *((int *)t4), 7);
    t6 = (t0 + 3704);
    t10 = (t6 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t5, 7U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 5872);
    t14 = *((int *)t2);
    t15 = (t14 * 16);
    t3 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t9, t15, 8);
    t4 = (t0 + 3768);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t10 = (t6 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t3, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t16 = *((int64 *)t3);
    t2 = (t0 + 3000);
    xsi_process_wait(t2, t16);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB6:    t2 = (t0 + 5872);
    t7 = *((int *)t2);
    t3 = (t0 + 5876);
    t8 = *((int *)t3);
    if (t7 == t8)
        goto LAB7;

LAB12:    t14 = (t7 + 1);
    t7 = t14;
    t4 = (t0 + 5872);
    *((int *)t4) = t7;
    goto LAB4;

LAB8:    goto LAB6;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB13:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 5880);
    *((int *)t2) = 0;
    t3 = (t0 + 5884);
    *((int *)t3) = 4;
    t7 = 0;
    t8 = 4;

LAB17:    if (t7 <= t8)
        goto LAB18;

LAB20:    xsi_set_current_line(75, ng0);

LAB28:    *((char **)t1) = &&LAB29;
    goto LAB1;

LAB14:    goto LAB13;

LAB16:    goto LAB14;

LAB18:    xsi_set_current_line(71, ng0);
    t4 = (t0 + 5880);
    t5 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t9, *((int *)t4), 7);
    t6 = (t0 + 3704);
    t10 = (t6 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t5, 7U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t16 = *((int64 *)t3);
    t2 = (t0 + 3000);
    xsi_process_wait(t2, t16);

LAB23:    *((char **)t1) = &&LAB24;
    goto LAB1;

LAB19:    t2 = (t0 + 5880);
    t7 = *((int *)t2);
    t3 = (t0 + 5884);
    t8 = *((int *)t3);
    if (t7 == t8)
        goto LAB20;

LAB25:    t14 = (t7 + 1);
    t7 = t14;
    t4 = (t0 + 5880);
    *((int *)t4) = t7;
    goto LAB17;

LAB21:    goto LAB19;

LAB22:    goto LAB21;

LAB24:    goto LAB22;

LAB26:    goto LAB2;

LAB27:    goto LAB26;

LAB29:    goto LAB27;

}


extern void work_a_3879939975_2372691052_init()
{
	static char *pe[] = {(void *)work_a_3879939975_2372691052_p_0,(void *)work_a_3879939975_2372691052_p_1};
	xsi_register_didat("work_a_3879939975_2372691052", "isim/ram_test_isim_beh.exe.sim/work/a_3879939975_2372691052.didat");
	xsi_register_executes(pe);
}
