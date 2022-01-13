#pragma once


#if _WIN32
#define DllExport(t) extern "C" __declspec(dllexport) t
#else
#define DllExport(t) extern "C" t
#endif

DllExport(int) test(int a, int b) {
    return a + b;
}
