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
static const char *ng0 = "C:/Users/Usuario/Desktop/N2- ARQUITETURA/TEMPORIZADOR/ValidaTermino.vhd";



static void work_a_0743375298_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned char t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned char t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    unsigned char t31;
    unsigned int t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;

LAB0:    xsi_set_current_line(24, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3720);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 1032U);
    t8 = *((char **)t1);
    t1 = (t0 + 6150);
    t10 = 1;
    if (4U == 4U)
        goto LAB17;

LAB18:    t10 = 0;

LAB19:    if (t10 == 1)
        goto LAB14;

LAB15:    t7 = (unsigned char)0;

LAB16:    if (t7 == 1)
        goto LAB11;

LAB12:    t6 = (unsigned char)0;

LAB13:    if (t6 == 1)
        goto LAB8;

LAB9:    t5 = (unsigned char)0;

LAB10:    if (t5 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 3816);
    t2 = (t1 + 56U);
    t8 = *((char **)t2);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(26, ng0);
    t35 = (t0 + 3816);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    *((unsigned char *)t39) = (unsigned char)3;
    xsi_driver_first_trans_fast(t35);
    goto LAB6;

LAB8:    t28 = (t0 + 1512U);
    t29 = *((char **)t28);
    t28 = (t0 + 6162);
    t31 = 1;
    if (4U == 4U)
        goto LAB35;

LAB36:    t31 = 0;

LAB37:    t5 = t31;
    goto LAB10;

LAB11:    t21 = (t0 + 1352U);
    t22 = *((char **)t21);
    t21 = (t0 + 6158);
    t24 = 1;
    if (4U == 4U)
        goto LAB29;

LAB30:    t24 = 0;

LAB31:    t6 = t24;
    goto LAB13;

LAB14:    t14 = (t0 + 1192U);
    t15 = *((char **)t14);
    t14 = (t0 + 6154);
    t17 = 1;
    if (4U == 4U)
        goto LAB23;

LAB24:    t17 = 0;

LAB25:    t7 = t17;
    goto LAB16;

LAB17:    t11 = 0;

LAB20:    if (t11 < 4U)
        goto LAB21;
    else
        goto LAB19;

LAB21:    t12 = (t8 + t11);
    t13 = (t1 + t11);
    if (*((unsigned char *)t12) != *((unsigned char *)t13))
        goto LAB18;

LAB22:    t11 = (t11 + 1);
    goto LAB20;

LAB23:    t18 = 0;

LAB26:    if (t18 < 4U)
        goto LAB27;
    else
        goto LAB25;

LAB27:    t19 = (t15 + t18);
    t20 = (t14 + t18);
    if (*((unsigned char *)t19) != *((unsigned char *)t20))
        goto LAB24;

LAB28:    t18 = (t18 + 1);
    goto LAB26;

LAB29:    t25 = 0;

LAB32:    if (t25 < 4U)
        goto LAB33;
    else
        goto LAB31;

LAB33:    t26 = (t22 + t25);
    t27 = (t21 + t25);
    if (*((unsigned char *)t26) != *((unsigned char *)t27))
        goto LAB30;

LAB34:    t25 = (t25 + 1);
    goto LAB32;

LAB35:    t32 = 0;

LAB38:    if (t32 < 4U)
        goto LAB39;
    else
        goto LAB37;

LAB39:    t33 = (t29 + t32);
    t34 = (t28 + t32);
    if (*((unsigned char *)t33) != *((unsigned char *)t34))
        goto LAB36;

LAB40:    t32 = (t32 + 1);
    goto LAB38;

}

static void work_a_0743375298_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(32, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3880);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 3736);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0743375298_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0743375298_3212880686_p_0,(void *)work_a_0743375298_3212880686_p_1};
	xsi_register_didat("work_a_0743375298_3212880686", "isim/teste_sd_isim_beh.exe.sim/work/a_0743375298_3212880686.didat");
	xsi_register_executes(pe);
}
