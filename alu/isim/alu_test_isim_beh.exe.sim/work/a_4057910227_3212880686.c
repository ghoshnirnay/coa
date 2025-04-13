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
static const char *ng0 = "/mnt/d/Desktop/13000123057/alu/alu_rtl.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

char *ieee_p_1242562249_sub_1006216973935652998_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_1006216973935724872_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_1701011461141717515_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_1701011461141789389_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_16439767405979520975_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_16439989832805790689_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_207919886985903570_503743352(char *, char *, char *, char *);


static void work_a_4057910227_3212880686_p_0(char *t0)
{
    char t26[16];
    char t40[16];
    char t41[16];
    char t42[16];
    char t43[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    int t16;
    char *t17;
    char *t18;
    int t19;
    char *t20;
    char *t21;
    int t22;
    char *t23;
    char *t24;
    int t25;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned char t39;

LAB0:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 4739);
    t4 = xsi_mem_cmp(t1, t2, 3U);
    if (t4 == 1)
        goto LAB3;

LAB12:    t5 = (t0 + 4742);
    t7 = xsi_mem_cmp(t5, t2, 3U);
    if (t7 == 1)
        goto LAB4;

LAB13:    t8 = (t0 + 4745);
    t10 = xsi_mem_cmp(t8, t2, 3U);
    if (t10 == 1)
        goto LAB5;

LAB14:    t11 = (t0 + 4748);
    t13 = xsi_mem_cmp(t11, t2, 3U);
    if (t13 == 1)
        goto LAB6;

LAB15:    t14 = (t0 + 4751);
    t16 = xsi_mem_cmp(t14, t2, 3U);
    if (t16 == 1)
        goto LAB7;

LAB16:    t17 = (t0 + 4754);
    t19 = xsi_mem_cmp(t17, t2, 3U);
    if (t19 == 1)
        goto LAB8;

LAB17:    t20 = (t0 + 4757);
    t22 = xsi_mem_cmp(t20, t2, 3U);
    if (t22 == 1)
        goto LAB9;

LAB18:    t23 = (t0 + 4760);
    t25 = xsi_mem_cmp(t23, t2, 3U);
    if (t25 == 1)
        goto LAB10;

LAB19:
LAB11:    xsi_set_current_line(53, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t2 = t1;
    memset(t2, (unsigned char)2, 4U);
    t3 = (t0 + 3064);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);

LAB2:    t1 = (t0 + 2984);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(45, ng0);
    t27 = (t0 + 1032U);
    t28 = *((char **)t27);
    t27 = (t0 + 4656U);
    t29 = (t0 + 1192U);
    t30 = *((char **)t29);
    t29 = (t0 + 4672U);
    t31 = ieee_p_1242562249_sub_1701011461141717515_1035706684(IEEE_P_1242562249, t26, t28, t27, t30, t29);
    t32 = (t0 + 3064);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    memcpy(t36, t31, 4U);
    xsi_driver_first_trans_fast_port(t32);
    goto LAB2;

LAB4:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4656U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 4672U);
    t6 = ieee_p_1242562249_sub_1701011461141789389_1035706684(IEEE_P_1242562249, t26, t2, t1, t5, t3);
    t8 = (t0 + 3064);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t6, 4U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB2;

LAB5:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4656U);
    t3 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t26, t2, t1, 1);
    t5 = (t0 + 3064);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t3, 4U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB2;

LAB6:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4672U);
    t3 = ieee_p_1242562249_sub_1006216973935724872_1035706684(IEEE_P_1242562249, t26, t2, t1, 1);
    t5 = (t0 + 3064);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t3, 4U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB2;

LAB7:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4656U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 4672U);
    t6 = ieee_p_2592010699_sub_16439989832805790689_503743352(IEEE_P_2592010699, t26, t2, t1, t5, t3);
    t8 = (t26 + 12U);
    t37 = *((unsigned int *)t8);
    t38 = (1U * t37);
    t39 = (4U != t38);
    if (t39 == 1)
        goto LAB21;

LAB22:    t9 = (t0 + 3064);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 4U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB8:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4656U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 4672U);
    t6 = ieee_p_2592010699_sub_16439767405979520975_503743352(IEEE_P_2592010699, t26, t2, t1, t5, t3);
    t8 = (t26 + 12U);
    t37 = *((unsigned int *)t8);
    t38 = (1U * t37);
    t39 = (4U != t38);
    if (t39 == 1)
        goto LAB23;

LAB24:    t9 = (t0 + 3064);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 4U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB9:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4672U);
    t3 = ieee_p_2592010699_sub_207919886985903570_503743352(IEEE_P_2592010699, t26, t2, t1);
    t5 = (t26 + 12U);
    t37 = *((unsigned int *)t5);
    t38 = (1U * t37);
    t39 = (4U != t38);
    if (t39 == 1)
        goto LAB25;

LAB26:    t6 = (t0 + 3064);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 4U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB2;

LAB10:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4656U);
    t3 = ieee_p_2592010699_sub_207919886985903570_503743352(IEEE_P_2592010699, t41, t2, t1);
    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t5 = (t0 + 4672U);
    t8 = ieee_p_2592010699_sub_16439989832805790689_503743352(IEEE_P_2592010699, t40, t3, t41, t6, t5);
    t9 = (t0 + 1192U);
    t11 = *((char **)t9);
    t9 = (t0 + 4672U);
    t12 = ieee_p_2592010699_sub_207919886985903570_503743352(IEEE_P_2592010699, t43, t11, t9);
    t14 = (t0 + 1032U);
    t15 = *((char **)t14);
    t14 = (t0 + 4656U);
    t17 = ieee_p_2592010699_sub_16439989832805790689_503743352(IEEE_P_2592010699, t42, t12, t43, t15, t14);
    t18 = ieee_p_2592010699_sub_16439767405979520975_503743352(IEEE_P_2592010699, t26, t8, t40, t17, t42);
    t20 = (t26 + 12U);
    t37 = *((unsigned int *)t20);
    t38 = (1U * t37);
    t39 = (4U != t38);
    if (t39 == 1)
        goto LAB27;

LAB28:    t21 = (t0 + 3064);
    t23 = (t21 + 56U);
    t24 = *((char **)t23);
    t27 = (t24 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t18, 4U);
    xsi_driver_first_trans_fast_port(t21);
    goto LAB2;

LAB20:;
LAB21:    xsi_size_not_matching(4U, t38, 0);
    goto LAB22;

LAB23:    xsi_size_not_matching(4U, t38, 0);
    goto LAB24;

LAB25:    xsi_size_not_matching(4U, t38, 0);
    goto LAB26;

LAB27:    xsi_size_not_matching(4U, t38, 0);
    goto LAB28;

}


extern void work_a_4057910227_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4057910227_3212880686_p_0};
	xsi_register_didat("work_a_4057910227_3212880686", "isim/alu_test_isim_beh.exe.sim/work/a_4057910227_3212880686.didat");
	xsi_register_executes(pe);
}
