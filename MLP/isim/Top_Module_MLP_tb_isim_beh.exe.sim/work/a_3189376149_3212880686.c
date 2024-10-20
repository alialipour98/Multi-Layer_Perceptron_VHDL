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
static const char *ng0 = "C:/Users/User/Documents/ISE_Project/MLP/First_Layer_Neuron.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_3410769178_1035706684(char *, char *, char *, char *, int );


static void work_a_3189376149_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(77, ng0);

LAB3:    t1 = (t0 + 7912U);
    t2 = *((char **)t1);
    t1 = (t0 + 11728);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 11584);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3189376149_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(78, ng0);

LAB3:    t1 = (t0 + 8072U);
    t2 = *((char **)t1);
    t3 = (15 - 13);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 11792);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 11600);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3189376149_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(163, ng0);

LAB3:    t1 = (t0 + 8072U);
    t2 = *((char **)t1);
    t1 = (t0 + 11856);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 11616);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3189376149_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(172, ng0);

LAB3:    t1 = (t0 + 8232U);
    t2 = *((char **)t1);
    t1 = (t0 + 11920);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 11632);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3189376149_3212880686_p_4(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(173, ng0);

LAB3:    t2 = (t0 + 6312U);
    t3 = *((char **)t2);
    t2 = (t0 + 19324U);
    t4 = ieee_p_1242562249_sub_3410769178_1035706684(IEEE_P_1242562249, t1, t3, t2, 16);
    t5 = (t0 + 11984);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 16U);
    xsi_driver_first_trans_fast(t5);

LAB2:    t10 = (t0 + 11648);
    *((int *)t10) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3189376149_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3189376149_3212880686_p_0,(void *)work_a_3189376149_3212880686_p_1,(void *)work_a_3189376149_3212880686_p_2,(void *)work_a_3189376149_3212880686_p_3,(void *)work_a_3189376149_3212880686_p_4};
	xsi_register_didat("work_a_3189376149_3212880686", "isim/Top_Module_MLP_tb_isim_beh.exe.sim/work/a_3189376149_3212880686.didat");
	xsi_register_executes(pe);
}
