% package(Name, Dependencies).
package(vim, [ncurses, acl]).
package(ncurses, []).
package(acl, []).

% The logic rule
resolve(Pkg, [Pkg|Deps]) :-
    package(Pkg, DepNames),
    resolve_list(DepNames, Deps).

resolve_list([], []).
resolve_list([H|T], All) :-
    resolve(H, H_Deps),
    resolve_list(T, T_Deps),
    append(H_Deps, T_Deps, All).