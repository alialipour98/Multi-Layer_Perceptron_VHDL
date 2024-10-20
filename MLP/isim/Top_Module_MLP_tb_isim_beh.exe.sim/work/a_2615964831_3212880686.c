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
static const char *ng0 = "C:/Users/User/Documents/ISE_Project/MLP/Register_File.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);


static void work_a_2615964831_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    int t7;
    int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t18 = xsi_get_transient_memory(8U);
    memset(t18, 0, 8U);
    t19 = t18;
    memset(t19, (unsigned char)4, 8U);
    t20 = (t0 + 5656);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t18, 8U);
    xsi_driver_first_trans_fast_port(t20);

LAB2:    t25 = (t0 + 5560);
    *((int *)t25) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 3592U);
    t5 = *((char **)t1);
    t1 = (t0 + 1672U);
    t6 = *((char **)t1);
    t1 = (t0 + 8908U);
    t7 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t6, t1);
    t8 = (t7 - 0);
    t9 = (t8 * 1);
    xsi_vhdl_check_range_of_index(0, 10, 1, t7);
    t10 = (8U * t9);
    t11 = (0 + t10);
    t12 = (t5 + t11);
    t13 = (t0 + 5656);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t12, 8U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_2615964831_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned int t6;
    char *t7;
    unsigned char t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    unsigned char t16;
    unsigned char t17;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t8 = (t4 == (unsigned char)3);
    if (t8 == 1)
        goto LAB9;

LAB10:    t3 = (unsigned char)0;

LAB11:    if (t3 != 0)
        goto LAB7;

LAB8:
LAB3:    t1 = (t0 + 5576);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(47, ng0);
    t1 = xsi_get_transient_memory(88U);
    memset(t1, 0, 88U);
    t5 = t1;
    t6 = (8U * 1U);
    t7 = t5;
    memset(t7, (unsigned char)2, t6);
    t8 = (t6 != 0);
    if (t8 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 5720);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 88U);
    xsi_driver_first_trans_fast(t10);
    goto LAB3;

LAB5:    t9 = (88U / t6);
    xsi_mem_set_data(t5, t5, t6, t9);
    goto LAB6;

LAB7:    xsi_set_current_line(49, ng0);
    t5 = (t0 + 1192U);
    t7 = *((char **)t5);
    t16 = *((unsigned char *)t7);
    t17 = (t16 == (unsigned char)3);
    if (t17 != 0)
        goto LAB12;

LAB14:
LAB13:    goto LAB3;

LAB9:    t1 = (t0 + 992U);
    t15 = xsi_signal_has_event(t1);
    t3 = t15;
    goto LAB11;

LAB12:    xsi_set_current_line(50, ng0);
    t5 = (t0 + 1832U);
    t10 = *((char **)t5);
    t5 = (t0 + 5720);
    t11 = (t5 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t10, 8U);
    xsi_driver_first_trans_delta(t5, 0U, 8U, 0LL);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 5720);
    t5 = (t1 + 56U);
    t7 = *((char **)t5);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 8U);
    xsi_driver_first_trans_delta(t1, 8U, 8U, 0LL);
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 5720);
    t5 = (t1 + 56U);
    t7 = *((char **)t5);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 8U);
    xsi_driver_first_trans_delta(t1, 16U, 8U, 0LL);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 5720);
    t5 = (t1 + 56U);
    t7 = *((char **)t5);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 8U);
    xsi_driver_first_trans_delta(t1, 24U, 8U, 0LL);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 5720);
    t5 = (t1 + 56U);
    t7 = *((char **)t5);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 8U);
    xsi_driver_first_trans_delta(t1, 32U, 8U, 0LL);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 5720);
    t5 = (t1 + 56U);
    t7 = *((char **)t5);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 8U);
    xsi_driver_first_trans_delta(t1, 40U, 8U, 0LL);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 5720);
    t5 = (t1 + 56U);
    t7 = *((char **)t5);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 8U);
    xsi_driver_first_trans_delta(t1, 48U, 8U, 0LL);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 5720);
    t5 = (t1 + 56U);
    t7 = *((char **)t5);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 8U);
    xsi_driver_first_trans_delta(t1, 56U, 8U, 0LL);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t1 = (t0 + 5720);
    t5 = (t1 + 56U);
    t7 = *((char **)t5);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 8U);
    xsi_driver_first_trans_delta(t1, 64U, 8U, 0LL);
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t1 = (t0 + 5720);
    t5 = (t1 + 56U);
    t7 = *((char **)t5);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 8U);
    xsi_driver_first_trans_delta(t1, 72U, 8U, 0LL);
    goto LAB13;

}


extern void work_a_2615964831_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2615964831_3212880686_p_0,(void *)work_a_2615964831_3212880686_p_1};
	xsi_register_didat("work_a_2615964831_3212880686", "isim/Top_Module_MLP_tb_isim_beh.exe.sim/work/a_2615964831_3212880686.didat");
	xsi_register_executes(pe);
}
