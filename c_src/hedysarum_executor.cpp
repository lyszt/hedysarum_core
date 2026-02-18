#include <erl_nif.h>
#include <filesystem>
#include <string>

#define DATA_ROOT "/ProgramData"

namespace fs = std::filesystem;

static ERL_NIF_TERM run_install(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
    char package_name[256];
    char version[64];

    // Check for both name and version
    if (argc != 2) return enif_make_badarg(env);

    if (enif_get_atom(env, argv[0], package_name, sizeof(package_name), ERL_NIF_LATIN1) <= 0 ||
        enif_get_string(env, argv[1], version, sizeof(version), ERL_NIF_LATIN1) <= 0)
    {
        return enif_make_badarg(env);
    }

    fs::path root = DATA_ROOT;
    fs::path destination = root / package_name / version;

    try
    {
        // Creates /ProgramData/xx/y.z/
        fs::create_directories(destination);

        // Standard 755 permissions
        fs::permissions(destination,
                        fs::perms::owner_all | fs::perms::group_read | fs::perms::group_exec |
                        fs::perms::others_read | fs::perms::others_exec);

        return enif_make_atom(env, "ok");
    }
    catch (const fs::filesystem_error &e)
    {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_string(env, e.what(), ERL_NIF_LATIN1));
    }
}

static ErlNifFunc nif_funcs[] = {
    {"run_install", 2, run_install, ERL_NIF_DIRTY_JOB_IO_BOUND}
};

ERL_NIF_INIT(Elixir.HedysarumCore.Executor, nif_funcs, NULL, NULL, NULL, NULL)