-module(type_me).

-export([f1/1, f2/1, f3/1, f4/1]).

f1(N) when N > 1  -> tail;
f1(N)             -> [head | f1(N + 1)].

f2(X) when X >= 2 -> [head];
f2(X) when X <  2 -> [head | tail].

f3(X) when X >  3 -> [];
f3(X) when X == 3 -> [head | tail];
f3(X) when X <  3 -> [head | f3(X + 2)].

f4(_) -> [head | tail].
