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
extern char *STD_TEXTIO;
static const char *ng1 = "text_file";
extern char *STD_STANDARD;
extern char *IEEE_P_1242562249;
static const char *ng4 = "C:/Users/User/Documents/ISE_Project/MLP/Top_Module_MLP.vhd";

char *ieee_p_1242562249_sub_2563015576_1035706684(char *, char *, int , int );


char *work_a_0294372120_3212880686_sub_2331909797_3057020925(char *t1)
{
    char t2[328];
    char t18[8];
    char t21[32];
    char t30[2048];
    char t43[16];
    char *t0;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t19;
    char *t20;
    char *t22;
    char *t23;
    int t24;
    unsigned int t25;
    char *t26;
    int t27;
    char *t28;
    char *t29;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    int t36;
    int t37;
    int t38;
    int t39;
    unsigned char t40;
    char *t41;
    char *t42;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;

LAB0:    t4 = ((STD_TEXTIO) + 3440);
    t5 = (t1 + 68080);
    t7 = (t2 + 4U);
    t8 = xsi_create_file_variable_in_buffer(0, ng1, t4, t5, 10U, 1);
    *((char **)t7) = t8;
    t9 = (t2 + 12U);
    t10 = ((STD_TEXTIO) + 3280);
    t11 = (t9 + 56U);
    *((char **)t11) = t10;
    t12 = (t9 + 40U);
    *((char **)t12) = 0;
    t13 = (t9 + 64U);
    *((int *)t13) = 1;
    t14 = (t9 + 48U);
    *((char **)t14) = 0;
    t15 = (t2 + 84U);
    t16 = ((STD_STANDARD) + 384);
    t17 = (t15 + 88U);
    *((char **)t17) = t16;
    t19 = (t15 + 56U);
    *((char **)t19) = t18;
    xsi_type_set_default_value(t16, t18, 0);
    t20 = (t15 + 80U);
    *((unsigned int *)t20) = 4U;
    t22 = (t21 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 0;
    t23 = (t22 + 4U);
    *((int *)t23) = 255;
    t23 = (t22 + 8U);
    *((int *)t23) = 1;
    t24 = (255 - 0);
    t25 = (t24 * 1);
    t25 = (t25 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t25;
    t23 = (t21 + 16U);
    t26 = (t23 + 0U);
    *((int *)t26) = 7;
    t26 = (t23 + 4U);
    *((int *)t26) = 0;
    t26 = (t23 + 8U);
    *((int *)t26) = -1;
    t27 = (0 - 7);
    t25 = (t27 * -1);
    t25 = (t25 + 1);
    t26 = (t23 + 12U);
    *((unsigned int *)t26) = t25;
    t26 = (t2 + 204U);
    t28 = (t1 + 35232);
    t29 = (t26 + 88U);
    *((char **)t29) = t28;
    t31 = (t26 + 56U);
    *((char **)t31) = t30;
    xsi_type_set_default_value(t28, t30, 0);
    t32 = (t26 + 64U);
    t33 = (t28 + 80U);
    t34 = *((char **)t33);
    *((char **)t32) = t34;
    t35 = (t26 + 80U);
    *((unsigned int *)t35) = 2048U;
    t36 = xsi_vhdl_pow(2, 8);
    t37 = (t36 - 1);
    t38 = 0;
    t39 = t37;

LAB2:    if (t38 <= t39)
        goto LAB3;

LAB5:    t4 = (t26 + 56U);
    t5 = *((char **)t4);
    t40 = (2048U != 2048U);
    if (t40 == 1)
        goto LAB10;

LAB11:    t0 = xsi_get_transient_memory(2048U);
    memcpy(t0, t5, 2048U);

LAB1:    xsi_access_variable_delete(t9);
    t4 = (t2 + 4U);
    t5 = *((char **)t4);
    xsi_delete_file_variable(t5);
    return t0;
LAB3:    t40 = (t38 < 165);
    if (t40 != 0)
        goto LAB6;

LAB8:    t4 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t43, 0, 8);
    t5 = (t26 + 56U);
    t6 = *((char **)t5);
    t24 = (t38 - 0);
    t25 = (t24 * 1);
    xsi_vhdl_check_range_of_index(0, 255, 1, t38);
    t44 = (8U * t25);
    t45 = (0 + t44);
    t5 = (t6 + t45);
    t7 = (t43 + 12U);
    t46 = *((unsigned int *)t7);
    t46 = (t46 * 1U);
    memcpy(t5, t4, t46);

LAB7:
LAB4:    if (t38 == t39)
        goto LAB5;

LAB9:    t24 = (t38 + 1);
    t38 = t24;
    goto LAB2;

LAB6:    t41 = (t2 + 4U);
    t42 = *((char **)t41);
    std_textio_readline(STD_TEXTIO, (char *)0, t42, t9);
    t4 = (t15 + 56U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    std_textio_read10(STD_TEXTIO, (char *)0, t9, t4);
    t4 = (t15 + 56U);
    t5 = *((char **)t4);
    t24 = *((int *)t5);
    t4 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t43, t24, 8);
    t6 = (t26 + 56U);
    t7 = *((char **)t6);
    t27 = (t38 - 0);
    t25 = (t27 * 1);
    xsi_vhdl_check_range_of_index(0, 255, 1, t38);
    t44 = (8U * t25);
    t45 = (0 + t44);
    t6 = (t7 + t45);
    t8 = (t43 + 12U);
    t46 = *((unsigned int *)t8);
    t46 = (t46 * 1U);
    memcpy(t6, t4, t46);
    goto LAB7;

LAB10:    xsi_size_not_matching(2048U, 2048U, 0);
    goto LAB11;

LAB12:;
}

static void work_a_0294372120_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(215, ng4);

LAB3:    t1 = (t0 + 8976U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 34736);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 34656);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0294372120_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0294372120_3212880686_p_0};
	static char *se[] = {(void *)work_a_0294372120_3212880686_sub_2331909797_3057020925};
	xsi_register_didat("work_a_0294372120_3212880686", "isim/Top_Module_MLP_tb_isim_beh.exe.sim/work/a_0294372120_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
