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
static const char *ng0 = "C:/Users/User/Documents/ISE_Project/MLP/Counter.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );


static void work_a_2400968667_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(29, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 3776);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3680);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2400968667_3212880686_p_1(char *t0)
{
    char t20[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned int t21;
    unsigned int t22;

LAB0:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1032U);
    t6 = *((char **)t1);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    if (t8 == 1)
        goto LAB7;

LAB8:    t5 = (unsigned char)0;

LAB9:    if (t5 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3696);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    goto LAB3;

LAB5:    xsi_set_current_line(35, ng0);
    t10 = (t0 + 1352U);
    t11 = *((char **)t10);
    t12 = *((unsigned char *)t11);
    t13 = (t12 == (unsigned char)3);
    if (t13 != 0)
        goto LAB10;

LAB12:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB13;

LAB14:
LAB11:    goto LAB3;

LAB7:    t1 = (t0 + 992U);
    t9 = xsi_signal_has_event(t1);
    t5 = t9;
    goto LAB9;

LAB10:    xsi_set_current_line(36, ng0);
    t10 = xsi_get_transient_memory(4U);
    memset(t10, 0, 4U);
    t14 = t10;
    memset(t14, (unsigned char)2, 4U);
    t15 = (t0 + 3840);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t10, 4U);
    xsi_driver_first_trans_fast(t15);
    goto LAB11;

LAB13:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 1832U);
    t6 = *((char **)t1);
    t1 = (t0 + 5772U);
    t10 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t20, t6, t1, 1);
    t11 = (t20 + 12U);
    t21 = *((unsigned int *)t11);
    t22 = (1U * t21);
    t5 = (4U != t22);
    if (t5 == 1)
        goto LAB15;

LAB16:    t14 = (t0 + 3840);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t10, 4U);
    xsi_driver_first_trans_fast(t14);
    goto LAB11;

LAB15:    xsi_size_not_matching(4U, t22, 0);
    goto LAB16;

}


extern void work_a_2400968667_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2400968667_3212880686_p_0,(void *)work_a_2400968667_3212880686_p_1};
	xsi_register_didat("work_a_2400968667_3212880686", "isim/Top_Module_MLP_tb_isim_beh.exe.sim/work/a_2400968667_3212880686.didat");
	xsi_register_executes(pe);
}
