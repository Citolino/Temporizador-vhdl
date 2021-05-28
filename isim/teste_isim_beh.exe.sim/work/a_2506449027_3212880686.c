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
static const char *ng0 = "C:/Users/Usuario/Desktop/N2- ARQUITETURA/TEMPORIZADOR/ContadorMinutos.vhd";
extern char *IEEE_P_3620187407;

unsigned char ieee_p_3620187407_sub_4058165771_3965413181(char *, char *, char *, char *, char *);
unsigned char ieee_p_3620187407_sub_4060537613_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_674763465_3965413181(char *, char *, char *, char *, unsigned char );


static void work_a_2506449027_3212880686_p_0(char *t0)
{
    char t17[16];
    char t26[16];
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
    unsigned char t23;
    unsigned char t24;
    unsigned char t25;
    unsigned int t27;
    unsigned char t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;

LAB0:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 1152U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 4448);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(28, ng0);
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

LAB17:    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t6 = *((unsigned char *)t4);
    t7 = (t6 == (unsigned char)3);
    if (t7 == 1)
        goto LAB26;

LAB27:    t3 = (unsigned char)0;

LAB28:    if (t3 == 1)
        goto LAB23;

LAB24:    t1 = (unsigned char)0;

LAB25:    if (t1 != 0)
        goto LAB21;

LAB22:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 4624);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);

LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(29, ng0);
    t4 = (t0 + 7374);
    t12 = (t0 + 4560);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t4, 4U);
    xsi_driver_first_trans_fast(t12);
    goto LAB9;

LAB11:    xsi_set_current_line(31, ng0);
    t13 = (t0 + 1832U);
    t14 = *((char **)t13);
    t13 = (t0 + 4560);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t20 = (t16 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t14, 4U);
    xsi_driver_first_trans_fast(t13);
    goto LAB9;

LAB13:    t2 = (t0 + 1832U);
    t5 = *((char **)t2);
    t2 = (t0 + 7304U);
    t8 = (t0 + 7378);
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

LAB16:    xsi_set_current_line(33, ng0);
    t13 = (t0 + 7386);
    t15 = (t0 + 4560);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t13, 4U);
    xsi_driver_first_trans_fast(t15);
    goto LAB9;

LAB18:    t2 = (t0 + 1832U);
    t5 = *((char **)t2);
    t2 = (t0 + 7304U);
    t8 = (t0 + 7382);
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

LAB21:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 2312U);
    t11 = *((char **)t2);
    t2 = (t0 + 7336U);
    t12 = (t0 + 7390);
    t14 = (t17 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 0;
    t15 = (t14 + 4U);
    *((int *)t15) = 3;
    t15 = (t14 + 8U);
    *((int *)t15) = 1;
    t18 = (3 - 0);
    t19 = (t18 * 1);
    t19 = (t19 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t19;
    t25 = ieee_p_3620187407_sub_4060537613_3965413181(IEEE_P_3620187407, t11, t2, t12, t17);
    if (t25 != 0)
        goto LAB29;

LAB31:
LAB30:    goto LAB9;

LAB23:    t2 = (t0 + 2472U);
    t8 = *((char **)t2);
    t23 = *((unsigned char *)t8);
    t24 = (t23 == (unsigned char)2);
    t1 = t24;
    goto LAB25;

LAB26:    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    t9 = *((unsigned char *)t5);
    t10 = (t9 == (unsigned char)3);
    t3 = t10;
    goto LAB28;

LAB29:    xsi_set_current_line(36, ng0);
    t15 = (t0 + 2312U);
    t16 = *((char **)t15);
    t15 = (t0 + 7336U);
    t20 = ieee_p_3620187407_sub_674763465_3965413181(IEEE_P_3620187407, t26, t16, t15, (unsigned char)3);
    t21 = (t26 + 12U);
    t19 = *((unsigned int *)t21);
    t27 = (1U * t19);
    t28 = (4U != t27);
    if (t28 == 1)
        goto LAB32;

LAB33:    t22 = (t0 + 4560);
    t29 = (t22 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t20, 4U);
    xsi_driver_first_trans_fast(t22);
    xsi_set_current_line(37, ng0);
    t2 = (t0 + 4624);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB30;

LAB32:    xsi_size_not_matching(4U, t27, 0);
    goto LAB33;

}

static void work_a_2506449027_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(45, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 4688);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4464);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2506449027_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(46, ng0);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4752);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 4480);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2506449027_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2506449027_3212880686_p_0,(void *)work_a_2506449027_3212880686_p_1,(void *)work_a_2506449027_3212880686_p_2};
	xsi_register_didat("work_a_2506449027_3212880686", "isim/teste_isim_beh.exe.sim/work/a_2506449027_3212880686.didat");
	xsi_register_executes(pe);
}
