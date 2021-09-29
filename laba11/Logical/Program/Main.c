
#include <bur/plctypes.h>
#include <math.h>

#ifdef _DEFAULT_INCLUDES
	#include <AsDefault.h>
#endif

void _INIT ProgramInit(void)
{
	t = 0;
	fb_reg.k_i = 0.16;
	fb_reg.k_p = 0.0064;
	fb_motor.dt = 0.002;
	fb_motor.Tm = 0.04;
	fb_motor.ke = 0.002;
	fb_reg.dt = 0.002;
	fb_reg.e = 0;
	fb_reg.max_abs_value = 300;
	fb_motor1.u = 0;
	fb_motor1.dt = 0.002;
	fb_motor1.Tm = 0.01;
	fb_motor1.ke = 0.2;
	Enable  = 1;
	
}

void _CYCLIC ProgramCyclic(void)
{
	if (Enable == 1) 
	{
		Speed = 100;
	}
	if (Enable == 0)
	{
		Speed = 0;
	}
	t = t + 0.002;
	fb_reg.e = Speed - fb_motor.w;
	FBRegulator(&fb_reg);
	fb_motor.u = fb_reg.u;
	FBMotor(&fb_motor);
	ResW = fb_motor.w;
	ResPhi = fb_motor.phi;
	FBMotor1(&fb_motor1);
	fb_motor1.u = Speed - fb_motor1.w;
	if ((t > 2)){
		Enable = !Enable;
		t = 0;
	}
	
	
}

void _EXIT ProgramExit(void)
{

}
