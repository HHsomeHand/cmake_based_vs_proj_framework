#pragma once

#ifdef CALC_DLL
#define CALC_API __declspec(dllexport)
#else
#define CALC_API __declspec(dllimport)
#endif

CALC_API int add(int a, int b);
CALC_API int sub(int a, int b);