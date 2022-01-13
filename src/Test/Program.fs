namespace Test

open System.Runtime.InteropServices

module Bla =
    
    [<DllImport("Native")>]
    extern int test(int a, int b)