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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/User/Documents/ISE_Project/MLP/Comparator_3_Number.vhd";
extern char *IEEE_P_1242562249;

unsigned char ieee_p_1242562249_sub_2720078402_1035706684(char *, char *, char *, char *, char *);


static void work_a_2440878020_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    char *t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned char t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned char t29;
    char *t30;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;

LAB0:    xsi_set_current_line(21, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 4836U);
    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t4 = (t0 + 4852U);
    t6 = ieee_p_1242562249_sub_2720078402_1035706684(IEEE_P_1242562249, t3, t2, t5, t4);
    if (t6 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:    t20 = (t0 + 1192U);
    t21 = *((char **)t20);
    t20 = (t0 + 4852U);
    t22 = (t0 + 1032U);
    t23 = *((char **)t22);
    t22 = (t0 + 4836U);
    t24 = ieee_p_1242562249_sub_2720078402_1035706684(IEEE_P_1242562249, t21, t20, t23, t22);
    if (t24 == 1)
        goto LAB10;

LAB11:    t19 = (unsigned char)0;

LAB12:    if (t19 != 0)
        goto LAB8;

LAB9:
LAB13:    t37 = (t0 + 4936);
    t39 = (t0 + 3072);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    memcpy(t43, t37, 2U);
    xsi_driver_first_trans_fast_port(t39);

LAB2:    t44 = (t0 + 2992);
    *((int *)t44) = 1;

LAB1:    return;
LAB3:    t12 = (t0 + 4932);
    t14 = (t0 + 3072);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t12, 2U);
    xsi_driver_first_trans_fast_port(t14);
    goto LAB2;

LAB5:    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t7 = (t0 + 4836U);
    t9 = (t0 + 1352U);
    t10 = *((char **)t9);
    t9 = (t0 + 4868U);
    t11 = ieee_p_1242562249_sub_2720078402_1035706684(IEEE_P_1242562249, t8, t7, t10, t9);
    t1 = t11;
    goto LAB7;

LAB8:    t30 = (t0 + 4934);
    t32 = (t0 + 3072);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    memcpy(t36, t30, 2U);
    xsi_driver_first_trans_fast_port(t32);
    goto LAB2;

LAB10:    t25 = (t0 + 1192U);
    t26 = *((char **)t25);
    t25 = (t0 + 4852U);
    t27 = (t0 + 1352U);
    t28 = *((char **)t27);
    t27 = (t0 + 4868U);
    t29 = ieee_p_1242562249_sub_2720078402_1035706684(IEEE_P_1242562249, t26, t25, t28, t27);
    t19 = t29;
    goto LAB12;

LAB14:    goto LAB2;

}


extern void work_a_2440878020_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2440878020_3212880686_p_0};
	xsi_register_didat("work_a_2440878020_3212880686", "isim/Top_Module_MLP_tb_isim_beh.exe.sim/work/a_2440878020_3212880686.didat");
	xsi_register_executes(pe);
}
