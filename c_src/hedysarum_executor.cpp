#include <erl_nif.h>
#include <iostream>

static ERL_NIF_TERM install_package_nif(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[]) {
    return enif_make_atom(env, "ok");
}

static ErlNifFunc nif_funcs[] = {
    {"install_package_nif", 1, install_package_nif}
};

// Initialize the NIF module
ERL_NIF_INIT(Elixir.HedysarumCore.Executor, nif_funcs, NULL, NULL, NULL, NULL)