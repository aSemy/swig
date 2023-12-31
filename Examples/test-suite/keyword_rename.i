/*
 * Test reserved keyword renaming
 */

%module keyword_rename

%feature("kwargs");

#pragma SWIG nowarn=SWIGWARN_PARSE_KEYWORD

%inline %{

#define KW(x, y) int x (int y) { return y; }

/* Python keywords */
KW(in, except)
KW(except, in)
KW(pass, in)

/* Perl keywords */
KW(tie, die)
KW(use, next)

/* Java keywords */
KW(implements, native)
KW(synchronized, final)

/* C# Keywords */
KW(string, out)
struct stackalloc {int i;};

/* Go Keywords */
KW(go, defer)
KW(chan, fallthrough)

/* Lua keywords */
KW(end, function)
KW(nil,local)

/* Javascript keywords */
KW(instanceof, finally)
KW(finally, instanceof)
%}


