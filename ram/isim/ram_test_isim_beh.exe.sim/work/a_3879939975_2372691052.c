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
static const char *ng0 = "/mnt/d/Desktop/coa/ram/ram_test.vhd";
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

LAB2:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 3576);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2752);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 3576);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(54, ng0);
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
    char t10[16];
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    int t9;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    int t15;
    int t16;

LAB0:    t1 = (t0 + 3192U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(60, ng0);
    t3 = (20 * 1LL);
    t2 = (t0 + 3000);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 3640);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 5704);
    *((int *)t2) = 0;
    t4 = (t0 + 5708);
    *((int *)t4) = 4;
    t8 = 0;
    t9 = 4;

LAB8:    if (t8 <= t9)
        goto LAB9;

LAB11:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 3640);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 1968U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 3000);
    xsi_process_wait(t2, t3);

LAB19:    *((char **)t1) = &&LAB20;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(65, ng0);
    t5 = (t0 + 5704);
    t6 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t10, *((int *)t5), 7);
    t7 = (t0 + 3704);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t6, 7U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 5704);
    t15 = *((int *)t2);
    t16 = (t15 * 16);
    t4 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t10, t16, 8);
    t5 = (t0 + 3768);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 1968U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 3000);
    xsi_process_wait(t2, t3);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB10:    t2 = (t0 + 5704);
    t8 = *((int *)t2);
    t4 = (t0 + 5708);
    t9 = *((int *)t4);
    if (t8 == t9)
        goto LAB11;

LAB16:    t15 = (t8 + 1);
    t8 = t15;
    t5 = (t0 + 5704);
    *((int *)t5) = t8;
    goto LAB8;

LAB12:    goto LAB10;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB17:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 5712);
    *((int *)t2) = 0;
    t4 = (t0 + 5716);
    *((int *)t4) = 4;
    t8 = 0;
    t9 = 4;

LAB21:    if (t8 <= t9)
        goto LAB22;

LAB24:    xsi_set_current_line(79, ng0);

LAB32:    *((char **)t1) = &&LAB33;
    goto LAB1;

LAB18:    goto LAB17;

LAB20:    goto LAB18;

LAB22:    xsi_set_current_line(75, ng0);
    t5 = (t0 + 5712);
    t6 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t10, *((int *)t5), 7);
    t7 = (t0 + 3704);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t6, 7U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 1968U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 3000);
    xsi_process_wait(t2, t3);

LAB27:    *((char **)t1) = &&LAB28;
    goto LAB1;

LAB23:    t2 = (t0 + 5712);
    t8 = *((int *)t2);
    t4 = (t0 + 5716);
    t9 = *((int *)t4);
    if (t8 == t9)
        goto LAB24;

LAB29:    t15 = (t8 + 1);
    t8 = t15;
    t5 = (t0 + 5712);
    *((int *)t5) = t8;
    goto LAB21;

LAB25:    goto LAB23;

LAB26:    goto LAB25;

LAB28:    goto LAB26;

LAB30:    goto LAB2;

LAB31:    goto LAB30;

LAB33:    goto LAB31;

}


extern void work_a_3879939975_2372691052_init()
{
	static char *pe[] = {(void *)work_a_3879939975_2372691052_p_0,(void *)work_a_3879939975_2372691052_p_1};
	xsi_register_didat("work_a_3879939975_2372691052", "isim/ram_test_isim_beh.exe.sim/work/a_3879939975_2372691052.didat");
	xsi_register_executes(pe);
}
