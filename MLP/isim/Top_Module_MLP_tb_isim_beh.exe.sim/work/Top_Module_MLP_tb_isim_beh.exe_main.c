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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *STD_TEXTIO;
char *IEEE_P_3564397177;
char *IEEE_P_2592010699;
char *IEEE_P_1242562249;
char *STD_STANDARD;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    std_textio_init();
    ieee_p_3564397177_init();
    work_a_2615964831_3212880686_init();
    work_a_1035598486_3212880686_init();
    work_a_2400968667_3212880686_init();
    work_a_0178683175_3212880686_init();
    work_a_0243719302_3212880686_init();
    work_a_0945777706_3212880686_init();
    work_a_1153420228_3212880686_init();
    work_a_0826528353_3212880686_init();
    work_a_0290344353_3212880686_init();
    work_a_3189376149_3212880686_init();
    work_a_2450453744_3212880686_init();
    work_a_0251432479_3212880686_init();
    work_a_0718209379_3212880686_init();
    work_a_1965237245_3212880686_init();
    work_a_1933366456_3212880686_init();
    work_a_0062686275_3212880686_init();
    work_a_3070295537_3212880686_init();
    work_a_0132544379_3212880686_init();
    work_a_2440878020_3212880686_init();
    work_a_3294806224_3212880686_init();
    work_a_0294372120_3212880686_init();
    work_a_1594794153_2372691052_init();


    xsi_register_tops("work_a_1594794153_2372691052");

    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    STD_STANDARD = xsi_get_engine_memory("std_standard");

    return xsi_run_simulation(argc, argv);

}
