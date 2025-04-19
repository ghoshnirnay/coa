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
static const char *ng0 = "/home/ng_pc/Desktop/13000123058/alu_ng/alu_rtl.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_16439767405979520975_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_16439989832805790689_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_207919886985903570_503743352(char *, char *, char *, char *);
char *ieee_p_3620187407_sub_1496620905533649268_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_1496620905533721142_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_2255506239096166994_3965413181(char *, char *, char *, char *, int );
char *ieee_p_3620187407_sub_2255506239096238868_3965413181(char *, char *, char *, char *, int );


static void work_a_4057910227_3212880686_p_0(char *t0)
{
    char t26[16];
    char t41[16];
    char t42[16];
    char t43[16];
    char t44[16];
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
    unsigned int t33;
    unsigned int t34;
    unsigned char t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;

LAB0:    xsi_set_current_line(19, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 4811);
    t4 = xsi_mem_cmp(t1, t2, 3U);
    if (t4 == 1)
        goto LAB3;

LAB12:    t5 = (t0 + 4814);
    t7 = xsi_mem_cmp(t5, t2, 3U);
    if (t7 == 1)
        goto LAB4;

LAB13:    t8 = (t0 + 4817);
    t10 = xsi_mem_cmp(t8, t2, 3U);
    if (t10 == 1)
        goto LAB5;

LAB14:    t11 = (t0 + 4820);
    t13 = xsi_mem_cmp(t11, t2, 3U);
    if (t13 == 1)
        goto LAB6;

LAB15:    t14 = (t0 + 4823);
    t16 = xsi_mem_cmp(t14, t2, 3U);
    if (t16 == 1)
        goto LAB7;

LAB16:    t17 = (t0 + 4826);
    t19 = xsi_mem_cmp(t17, t2, 3U);
    if (t19 == 1)
        goto LAB8;

LAB17:    t20 = (t0 + 4829);
    t22 = xsi_mem_cmp(t20, t2, 3U);
    if (t22 == 1)
        goto LAB9;

LAB18:    t23 = (t0 + 4832);
    t25 = xsi_mem_cmp(t23, t2, 3U);
    if (t25 == 1)
        goto LAB10;

LAB19:
LAB11:    xsi_set_current_line(28, ng0);
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
LAB3:    xsi_set_current_line(20, ng0);
    t27 = (t0 + 1032U);
    t28 = *((char **)t27);
    t27 = (t0 + 4728U);
    t29 = (t0 + 1192U);
    t30 = *((char **)t29);
    t29 = (t0 + 4744U);
    t31 = ieee_p_3620187407_sub_1496620905533649268_3965413181(IEEE_P_3620187407, t26, t28, t27, t30, t29);
    t32 = (t26 + 12U);
    t33 = *((unsigned int *)t32);
    t34 = (1U * t33);
    t35 = (4U != t34);
    if (t35 == 1)
        goto LAB21;

LAB22:    t36 = (t0 + 3064);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    memcpy(t40, t31, 4U);
    xsi_driver_first_trans_fast_port(t36);
    goto LAB2;

LAB4:    xsi_set_current_line(21, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4728U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 4744U);
    t6 = ieee_p_3620187407_sub_1496620905533721142_3965413181(IEEE_P_3620187407, t26, t2, t1, t5, t3);
    t8 = (t26 + 12U);
    t33 = *((unsigned int *)t8);
    t34 = (1U * t33);
    t35 = (4U != t34);
    if (t35 == 1)
        goto LAB23;

LAB24:    t9 = (t0 + 3064);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 4U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB5:    xsi_set_current_line(22, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4728U);
    t3 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t26, t2, t1, 1);
    t5 = (t26 + 12U);
    t33 = *((unsigned int *)t5);
    t34 = (1U * t33);
    t35 = (4U != t34);
    if (t35 == 1)
        goto LAB25;

LAB26:    t6 = (t0 + 3064);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 4U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB2;

LAB6:    xsi_set_current_line(23, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4744U);
    t3 = ieee_p_3620187407_sub_2255506239096238868_3965413181(IEEE_P_3620187407, t26, t2, t1, 1);
    t5 = (t26 + 12U);
    t33 = *((unsigned int *)t5);
    t34 = (1U * t33);
    t35 = (4U != t34);
    if (t35 == 1)
        goto LAB27;

LAB28:    t6 = (t0 + 3064);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 4U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB2;

LAB7:    xsi_set_current_line(24, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4728U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 4744U);
    t6 = ieee_p_2592010699_sub_16439989832805790689_503743352(IEEE_P_2592010699, t26, t2, t1, t5, t3);
    t8 = (t26 + 12U);
    t33 = *((unsigned int *)t8);
    t34 = (1U * t33);
    t35 = (4U != t34);
    if (t35 == 1)
        goto LAB29;

LAB30:    t9 = (t0 + 3064);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 4U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB8:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4728U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 4744U);
    t6 = ieee_p_2592010699_sub_16439767405979520975_503743352(IEEE_P_2592010699, t26, t2, t1, t5, t3);
    t8 = (t26 + 12U);
    t33 = *((unsigned int *)t8);
    t34 = (1U * t33);
    t35 = (4U != t34);
    if (t35 == 1)
        goto LAB31;

LAB32:    t9 = (t0 + 3064);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 4U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB9:    xsi_set_current_line(26, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4744U);
    t3 = ieee_p_2592010699_sub_207919886985903570_503743352(IEEE_P_2592010699, t26, t2, t1);
    t5 = (t26 + 12U);
    t33 = *((unsigned int *)t5);
    t34 = (1U * t33);
    t35 = (4U != t34);
    if (t35 == 1)
        goto LAB33;

LAB34:    t6 = (t0 + 3064);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 4U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB2;

LAB10:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4728U);
    t3 = ieee_p_2592010699_sub_207919886985903570_503743352(IEEE_P_2592010699, t42, t2, t1);
    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t5 = (t0 + 4744U);
    t8 = ieee_p_2592010699_sub_16439989832805790689_503743352(IEEE_P_2592010699, t41, t3, t42, t6, t5);
    t9 = (t0 + 1192U);
    t11 = *((char **)t9);
    t9 = (t0 + 4744U);
    t12 = ieee_p_2592010699_sub_207919886985903570_503743352(IEEE_P_2592010699, t44, t11, t9);
    t14 = (t0 + 1032U);
    t15 = *((char **)t14);
    t14 = (t0 + 4728U);
    t17 = ieee_p_2592010699_sub_16439989832805790689_503743352(IEEE_P_2592010699, t43, t12, t44, t15, t14);
    t18 = ieee_p_2592010699_sub_16439767405979520975_503743352(IEEE_P_2592010699, t26, t8, t41, t17, t43);
    t20 = (t26 + 12U);
    t33 = *((unsigned int *)t20);
    t34 = (1U * t33);
    t35 = (4U != t34);
    if (t35 == 1)
        goto LAB35;

LAB36:    t21 = (t0 + 3064);
    t23 = (t21 + 56U);
    t24 = *((char **)t23);
    t27 = (t24 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t18, 4U);
    xsi_driver_first_trans_fast_port(t21);
    goto LAB2;

LAB20:;
LAB21:    xsi_size_not_matching(4U, t34, 0);
    goto LAB22;

LAB23:    xsi_size_not_matching(4U, t34, 0);
    goto LAB24;

LAB25:    xsi_size_not_matching(4U, t34, 0);
    goto LAB26;

LAB27:    xsi_size_not_matching(4U, t34, 0);
    goto LAB28;

LAB29:    xsi_size_not_matching(4U, t34, 0);
    goto LAB30;

LAB31:    xsi_size_not_matching(4U, t34, 0);
    goto LAB32;

LAB33:    xsi_size_not_matching(4U, t34, 0);
    goto LAB34;

LAB35:    xsi_size_not_matching(4U, t34, 0);
    goto LAB36;

}


extern void work_a_4057910227_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4057910227_3212880686_p_0};
	xsi_register_didat("work_a_4057910227_3212880686", "isim/alu_test_isim_beh.exe.sim/work/a_4057910227_3212880686.didat");
	xsi_register_executes(pe);
}
