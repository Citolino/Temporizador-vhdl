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
static const char *ng0 = "C:/Users/Usuario/Desktop/N2- ARQUITETURA/TEMPORIZADOR/ContadorDezenaSegundos.vhd";
extern char *IEEE_P_3620187407;

unsigned char ieee_p_3620187407_sub_4058165771_3965413181(char *, char *, char *, char *, char *);
unsigned char ieee_p_3620187407_sub_4060537613_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_674763465_3965413181(char *, char *, char *, char *, unsigned char );


static void work_a_3121940151_3212880686_p_0(char *t0)
{
    char t17[16];
    char t23[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t24;
    unsigned char t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(25, ng0);
    t2 = (t0 + 1152U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB31;

LAB33:
LAB32:    t2 = (t0 + 4608);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(26, ng0);
    t4 = (t0 + 1352U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t6 = (t3 == (unsigned char)3);
    if (t6 == 1)
        goto LAB13;

LAB14:    t1 = (unsigned char)0;

LAB15:    if (t1 != 0)
        goto LAB11;

LAB12:    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t6 = (t3 == (unsigned char)3);
    if (t6 == 1)
        goto LAB18;

LAB19:    t1 = (unsigned char)0;

LAB20:    if (t1 != 0)
        goto LAB16;

LAB17:    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t6 = (t3 == (unsigned char)3);
    if (t6 == 1)
        goto LAB23;

LAB24:    t1 = (unsigned char)0;

LAB25:    if (t1 != 0)
        goto LAB21;

LAB22:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(27, ng0);
    t4 = (t0 + 7751);
    t12 = (t0 + 4720);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t4, 4U);
    xsi_driver_first_trans_fast(t12);
    goto LAB9;

LAB11:    xsi_set_current_line(29, ng0);
    t13 = (t0 + 2152U);
    t14 = *((char **)t13);
    t13 = (t0 + 4720);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t20 = (t16 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t14, 4U);
    xsi_driver_first_trans_fast(t13);
    goto LAB9;

LAB13:    t2 = (t0 + 2152U);
    t5 = *((char **)t2);
    t2 = (t0 + 7680U);
    t8 = (t0 + 7755);
    t12 = (t17 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 3;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t18 = (3 - 0);
    t19 = (t18 * 1);
    t19 = (t19 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t19;
    t7 = ieee_p_3620187407_sub_4058165771_3965413181(IEEE_P_3620187407, t5, t2, t8, t17);
    t1 = t7;
    goto LAB15;

LAB16:    xsi_set_current_line(31, ng0);
    t13 = (t0 + 7763);
    t15 = (t0 + 4720);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t13, 4U);
    xsi_driver_first_trans_fast(t15);
    goto LAB9;

LAB18:    t2 = (t0 + 2152U);
    t5 = *((char **)t2);
    t2 = (t0 + 7680U);
    t8 = (t0 + 7759);
    t12 = (t17 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 3;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t18 = (3 - 0);
    t19 = (t18 * 1);
    t19 = (t19 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t19;
    t7 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t5, t2, t8, t17);
    t1 = t7;
    goto LAB20;

LAB21:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 2472U);
    t8 = *((char **)t2);
    t2 = (t0 + 7712U);
    t11 = (t0 + 7767);
    t13 = (t17 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 0;
    t14 = (t13 + 4U);
    *((int *)t14) = 3;
    t14 = (t13 + 8U);
    *((int *)t14) = 1;
    t18 = (3 - 0);
    t19 = (t18 * 1);
    t19 = (t19 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t19;
    t10 = ieee_p_3620187407_sub_4060537613_3965413181(IEEE_P_3620187407, t8, t2, t11, t17);
    if (t10 != 0)
        goto LAB26;

LAB28:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 4784);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);

LAB27:    goto LAB9;

LAB23:    t2 = (t0 + 1672U);
    t5 = *((char **)t2);
    t7 = *((unsigned char *)t5);
    t9 = (t7 == (unsigned char)3);
    t1 = t9;
    goto LAB25;

LAB26:    xsi_set_current_line(34, ng0);
    t14 = (t0 + 2472U);
    t15 = *((char **)t14);
    t14 = (t0 + 7712U);
    t16 = ieee_p_3620187407_sub_674763465_3965413181(IEEE_P_3620187407, t23, t15, t14, (unsigned char)3);
    t20 = (t23 + 12U);
    t19 = *((unsigned int *)t20);
    t24 = (1U * t19);
    t25 = (4U != t24);
    if (t25 == 1)
        goto LAB29;

LAB30:    t21 = (t0 + 4720);
    t22 = (t21 + 56U);
    t26 = *((char **)t22);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t16, 4U);
    xsi_driver_first_trans_fast(t21);
    xsi_set_current_line(35, ng0);
    t2 = (t0 + 4784);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB27;

LAB29:    xsi_size_not_matching(4U, t24, 0);
    goto LAB30;

LAB31:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 7771);
    t8 = (t0 + 4720);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 4U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(45, ng0);
    t2 = (t0 + 4784);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB32;

}

static void work_a_3121940151_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(49, ng0);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 4848);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4624);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3121940151_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(50, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4912);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 4640);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3121940151_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3121940151_3212880686_p_0,(void *)work_a_3121940151_3212880686_p_1,(void *)work_a_3121940151_3212880686_p_2};
	xsi_register_didat("work_a_3121940151_3212880686", "isim/teste_sd_isim_beh.exe.sim/work/a_3121940151_3212880686.didat");
	xsi_register_executes(pe);
}
