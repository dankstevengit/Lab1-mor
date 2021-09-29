
{REDUND_ERROR} FUNCTION_BLOCK FBIntegrator (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		in : REAL;
	END_VAR
	VAR_OUTPUT
		out : {REDUND_UNREPLICABLE} REAL; (*����� �������������� �����*)
	END_VAR
	VAR
		dt : REAL;
		oldval : {REDUND_UNREPLICABLE} REAL; (*J*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION_BLOCK FBRegulator (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR
		dt : REAL;
		e : REAL; (*��������������� ����� �������� ������������ � �������� ��������� �������� ���� ��� [��/���]*)
		u : REAL; (*����������, ���������� �� ���� ��� [�]*)
		k_p : REAL; (*���������������� ����������� ����������*)
		k_i : REAL; (*������������ ����������� ����������*)
		integrator : FBIntegrator; (*���������� *)
		iyOld : REAL; (*�������� ����������� �������� ����� �����������������*)
		max_abs_value : REAL; (*������� ����� ����������� [�]*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION_BLOCK FBMotor (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		u : REAL; (*������� ���������� [�]*)
		Tm : REAL; (*������� �������� [��/���]*)
	END_VAR
	VAR_OUTPUT
		w : REAL; (*���������� *)
		phi : REAL; (*������������������� ���������� ������� [�]*)
	END_VAR
	VAR
		dt : REAL;
		ke : REAL; (*��������� [���]*)
		integrator : FBIntegrator; (*���������� ��� ��������� [���/��]*)
		integrator1 : FBIntegrator;
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION_BLOCK FBMotor1 (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR
		dt : REAL;
	END_VAR
	VAR_INPUT
		u : REAL; (*������� ���������� [�]*)
		Tm : REAL; (*������� �������� [��/���]*)
	END_VAR
	VAR_OUTPUT
		w : REAL; (*���������� *)
		phi : REAL; (*������������������� ���������� ������� [�]*)
	END_VAR
	VAR
		ke : REAL; (*��������� [���]*)
		integrator : FBIntegrator; (*���������� ��� ��������� [���/��]*)
		integrator1 : FBIntegrator;
	END_VAR
END_FUNCTION_BLOCK
