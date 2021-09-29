
#include <bur/plctypes.h>
#ifdef __cplusplus
	extern "C"
	{
#endif
	#include "Library.h"
#ifdef __cplusplus
	};
#endif
/* TODO: Add your comment here */
void FBMotor1(struct FBMotor1* inst)
{
	REAL temp;
	temp = inst->u / inst->ke;
	temp = temp - inst->w;
	temp = temp * inst->dt / inst->Tm;
	inst->integrator.in = temp;
	inst->integrator.dt = inst->dt;
	inst->integrator1.dt = inst->dt;
	FBIntegrator(&inst->integrator);
	temp = inst->integrator.out;
	inst->w = temp;
	temp = inst->w;
	inst->integrator1.in = temp;
	FBIntegrator(&inst->integrator1);
	inst->phi = inst->integrator1.out;
	/*TODO: Add your code here*/
}
