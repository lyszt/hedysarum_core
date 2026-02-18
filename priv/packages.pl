% Package dependency facts
package(vim, [ncurses, acl]).
package(ncurses, [libc]).
package(acl, [libc]).
package(libc, []).

% install_order(+Pkg, +Seen, -Result)
% Packages already in Seen are skipped 
install_order(Pkg, Seen, Seen) :-
    member(Pkg, Seen).
install_order(Pkg, Seen, Result) :-
    not(member(Pkg, Seen)),
    package(Pkg, Deps),
    install_deps(Deps, Seen, Seen1),
    append(Seen1, [Pkg], Result).

% install_deps(+Deps, +Seen, -Result)
install_deps([], Seen, Seen).
install_deps([H|T], Seen, Result) :-
    install_order(H, Seen, Seen1),
    install_deps(T, Seen1, Result).

% resolve(+Pkg, -Path)
resolve(Pkg, Path) :-
    install_order(Pkg, [], Path).
