
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
void FBIntegrator(struct FBIntegrator* inst)
{
	inst->out = inst->oldval + ((inst->in) * inst->dt);
	inst->oldval = inst->out;
}
