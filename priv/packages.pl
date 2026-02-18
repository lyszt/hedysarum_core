% package(Name, Version, Deps, MinVersions)
% Deps and MinVersions are parallel lists: each dep requires its minimum version.
package(vim,    9, [ncurses, acl], [6, 2]).
package(ncurses, 6, [libc],        [2]).
package(acl,    2, [libc],         [2]).
package(libc,   3, [],             []).

% version_ok(+Pkg, +MinVer)
% Succeeds if Pkg exists and its version is >= MinVer.
version_ok(Pkg, MinVer) :-
    package(Pkg, Ver, _, _),
    Ver >= MinVer.

% install_order(+Pkg, +MinVer, +Seen, -Result)
% If Pkg is already in Seen, just check the version constraint is satisfied.
install_order(Pkg, MinVer, Seen, Seen) :-
    member(Pkg, Seen),
    version_ok(Pkg, MinVer).
% If Pkg is not yet seen, verify the constraint, recurse into deps, then add Pkg.
install_order(Pkg, MinVer, Seen, Result) :-
    not(member(Pkg, Seen)),
    version_ok(Pkg, MinVer),
    package(Pkg, _, Deps, MinVers),
    install_deps(Deps, MinVers, Seen, Seen1),
    append(Seen1, [Pkg], Result).

% install_deps(+Deps, +MinVers, +Seen, -Result)
install_deps([], [], Seen, Seen).
install_deps([H|T], [V|Vs], Seen, Result) :-
    install_order(H, V, Seen, Seen1),
    install_deps(T, Vs, Seen1, Result).

% resolve(+Pkg, -Path)
% Entry point: resolve a package with no version constraint (>= 0).
resolve(Pkg, Path) :-
    install_order(Pkg, 0, [], Path).
