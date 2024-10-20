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
static const char *ng4 = "C:/Users/User/Documents/ISE_Project/MLP/Top_Module_MLP_tb.vhd";

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
char *ieee_p_1242562249_sub_2563015576_1035706684(char *, char *, int , int );


char *work_a_1594794153_2372691052_sub_3073430869_4163069965(char *t1)
{
    char t2[328];
    char t18[8];
    char t21[32];
    char t30[960];
    char t40[16];
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
    char *t38;
    char *t39;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned char t44;

LAB0:    t4 = ((STD_TEXTIO) + 3440);
    t5 = (t1 + 10572);
    t7 = (t2 + 4U);
    t8 = xsi_create_file_variable_in_buffer(0, ng1, t4, t5, 15U, 1);
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
    *((int *)t23) = 119;
    t23 = (t22 + 8U);
    *((int *)t23) = 1;
    t24 = (119 - 0);
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
    t28 = (t1 + 5960);
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
    *((unsigned int *)t35) = 960U;
    t36 = 0;
    t37 = 119;

LAB2:    if (t36 <= t37)
        goto LAB3;

LAB5:    t4 = (t26 + 56U);
    t5 = *((char **)t4);
    t44 = (960U != 960U);
    if (t44 == 1)
        goto LAB7;

LAB8:    t0 = xsi_get_transient_memory(960U);
    memcpy(t0, t5, 960U);

LAB1:    xsi_access_variable_delete(t9);
    t4 = (t2 + 4U);
    t5 = *((char **)t4);
    xsi_delete_file_variable(t5);
    return t0;
LAB3:    t38 = (t2 + 4U);
    t39 = *((char **)t38);
    std_textio_readline(STD_TEXTIO, (char *)0, t39, t9);
    t4 = (t15 + 56U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    std_textio_read10(STD_TEXTIO, (char *)0, t9, t4);
    t4 = (t15 + 56U);
    t5 = *((char **)t4);
    t24 = *((int *)t5);
    t4 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t40, t24, 8);
    t6 = (t26 + 56U);
    t7 = *((char **)t6);
    t27 = (t36 - 0);
    t25 = (t27 * 1);
    xsi_vhdl_check_range_of_index(0, 119, 1, t36);
    t41 = (8U * t25);
    t42 = (0 + t41);
    t6 = (t7 + t42);
    t8 = (t40 + 12U);
    t43 = *((unsigned int *)t8);
    t43 = (t43 * 1U);
    memcpy(t6, t4, t43);

LAB4:    if (t36 == t37)
        goto LAB5;

LAB6:    t24 = (t36 + 1);
    t36 = t24;
    goto LAB2;

LAB7:    xsi_size_not_matching(960U, 960U, 0);
    goto LAB8;

LAB9:;
}

char *work_a_1594794153_2372691052_sub_203301006_4163069965(char *t1)
{
    char t2[328];
    char t18[8];
    char t21[32];
    char t30[240];
    char t40[16];
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
    char *t38;
    char *t39;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned char t44;

LAB0:    t4 = ((STD_TEXTIO) + 3440);
    t5 = (t1 + 10587);
    t7 = (t2 + 4U);
    t8 = xsi_create_file_variable_in_buffer(0, ng1, t4, t5, 15U, 1);
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
    *((int *)t23) = 29;
    t23 = (t22 + 8U);
    *((int *)t23) = 1;
    t24 = (29 - 0);
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
    t28 = (t1 + 6296);
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
    *((unsigned int *)t35) = 240U;
    t36 = 0;
    t37 = 29;

LAB2:    if (t36 <= t37)
        goto LAB3;

LAB5:    t4 = (t26 + 56U);
    t5 = *((char **)t4);
    t44 = (240U != 240U);
    if (t44 == 1)
        goto LAB7;

LAB8:    t0 = xsi_get_transient_memory(240U);
    memcpy(t0, t5, 240U);

LAB1:    xsi_access_variable_delete(t9);
    t4 = (t2 + 4U);
    t5 = *((char **)t4);
    xsi_delete_file_variable(t5);
    return t0;
LAB3:    t38 = (t2 + 4U);
    t39 = *((char **)t38);
    std_textio_readline(STD_TEXTIO, (char *)0, t39, t9);
    t4 = (t15 + 56U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    std_textio_read10(STD_TEXTIO, (char *)0, t9, t4);
    t4 = (t15 + 56U);
    t5 = *((char **)t4);
    t24 = *((int *)t5);
    t4 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t40, t24, 8);
    t6 = (t26 + 56U);
    t7 = *((char **)t6);
    t27 = (t36 - 0);
    t25 = (t27 * 1);
    xsi_vhdl_check_range_of_index(0, 29, 1, t36);
    t41 = (8U * t25);
    t42 = (0 + t41);
    t6 = (t7 + t42);
    t8 = (t40 + 12U);
    t43 = *((unsigned int *)t8);
    t43 = (t43 * 1U);
    memcpy(t6, t4, t43);

LAB4:    if (t36 == t37)
        goto LAB5;

LAB6:    t24 = (t36 + 1);
    t36 = t24;
    goto LAB2;

LAB7:    xsi_size_not_matching(240U, 240U, 0);
    goto LAB8;

LAB9:;
}

static void work_a_1594794153_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 4512U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(112, ng4);
    t2 = (t0 + 5144);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(113, ng4);
    t2 = (t0 + 3408U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 4320);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(114, ng4);
    t2 = (t0 + 5144);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(115, ng4);
    t2 = (t0 + 3408U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 4320);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_1594794153_2372691052_p_1(char *t0)
{
    char t9[16];
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    int64 t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t10;
    char *t11;
    unsigned int t12;
    char *t13;

LAB0:    t1 = (t0 + 4760U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(123, ng4);
    t3 = (100 * 1000LL);
    t2 = (t0 + 4568);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(125, ng4);
    t2 = (t0 + 3408U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t5 = (t3 * 10);
    t2 = (t0 + 4568);
    xsi_process_wait(t2, t5);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(158, ng4);
    t2 = (t0 + 5208);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(159, ng4);
    t2 = (t0 + 3408U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 4568);
    xsi_process_wait(t2, t3);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(160, ng4);
    t2 = (t0 + 5208);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(162, ng4);
    t2 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t9, 51, 8);
    t10 = (8U != 8U);
    if (t10 == 1)
        goto LAB16;

LAB17:    t4 = (t0 + 5272);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    memcpy(t11, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(163, ng4);
    t2 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t9, 25, 8);
    t4 = (t9 + 12U);
    t12 = *((unsigned int *)t4);
    t12 = (t12 * 1U);
    t10 = (8U != t12);
    if (t10 == 1)
        goto LAB18;

LAB19:    t6 = (t0 + 5336);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(164, ng4);
    t2 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t9, 30, 8);
    t4 = (t9 + 12U);
    t12 = *((unsigned int *)t4);
    t12 = (t12 * 1U);
    t10 = (8U != t12);
    if (t10 == 1)
        goto LAB20;

LAB21:    t6 = (t0 + 5400);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(165, ng4);
    t2 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t9, 11, 8);
    t4 = (t9 + 12U);
    t12 = *((unsigned int *)t4);
    t12 = (t12 * 1U);
    t10 = (8U != t12);
    if (t10 == 1)
        goto LAB22;

LAB23:    t6 = (t0 + 5464);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(181, ng4);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB17;

LAB18:    xsi_size_not_matching(8U, t12, 0);
    goto LAB19;

LAB20:    xsi_size_not_matching(8U, t12, 0);
    goto LAB21;

LAB22:    xsi_size_not_matching(8U, t12, 0);
    goto LAB23;

LAB24:    goto LAB2;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

}


extern void work_a_1594794153_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1594794153_2372691052_p_0,(void *)work_a_1594794153_2372691052_p_1};
	static char *se[] = {(void *)work_a_1594794153_2372691052_sub_3073430869_4163069965,(void *)work_a_1594794153_2372691052_sub_203301006_4163069965};
	xsi_register_didat("work_a_1594794153_2372691052", "isim/Top_Module_MLP_tb_isim_beh.exe.sim/work/a_1594794153_2372691052.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
