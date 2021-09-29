
{REDUND_ERROR} FUNCTION_BLOCK FBIntegrator (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		in : REAL;
	END_VAR
	VAR_OUTPUT
		out : {REDUND_UNREPLICABLE} REAL; (*выход интегрирующего звена*)
	END_VAR
	VAR
		dt : REAL;
		oldval : {REDUND_UNREPLICABLE} REAL; (*J*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION_BLOCK FBRegulator (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR
		dt : REAL;
		e : REAL; (*рассогласование между задающим воздействием и реальной скоростью вращения вала ДПТ [об/мин]*)
		u : REAL; (*напряжение, подаваемое на вход ДПТ [В]*)
		k_p : REAL; (*пропорциональный коэффициент регулятора*)
		k_i : REAL; (*интегральный коэффициент регулятора*)
		integrator : FBIntegrator; (*интегратор *)
		iyOld : REAL; (*хранение предыдущего значения схемы противонакопления*)
		max_abs_value : REAL; (*граница блока ограничения [В]*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION_BLOCK FBMotor (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		u : REAL; (*входное напряжение [В]*)
		Tm : REAL; (*частота вращения [об/мин]*)
	END_VAR
	VAR_OUTPUT
		w : REAL; (*интегратор *)
		phi : REAL; (*электромеханическая постоянная времени [с]*)
	END_VAR
	VAR
		dt : REAL;
		ke : REAL; (*положение [рад]*)
		integrator : FBIntegrator; (*постоянная ЭДС двигателя [В•мин/об]*)
		integrator1 : FBIntegrator;
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION_BLOCK FBMotor1 (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR
		dt : REAL;
	END_VAR
	VAR_INPUT
		u : REAL; (*входное напряжение [В]*)
		Tm : REAL; (*частота вращения [об/мин]*)
	END_VAR
	VAR_OUTPUT
		w : REAL; (*интегратор *)
		phi : REAL; (*электромеханическая постоянная времени [с]*)
	END_VAR
	VAR
		ke : REAL; (*положение [рад]*)
		integrator : FBIntegrator; (*постоянная ЭДС двигателя [В•мин/об]*)
		integrator1 : FBIntegrator;
	END_VAR
END_FUNCTION_BLOCK
